#!/usr/bin/python3
# -*- encoding: utf-8 -*-
# PKGBUILDer v2.1.3.0
# An AUR helper/library.
# Copyright (C) 2011-2012, Kwpolska.
# See /LICENSE for licensing information.

# Names convention: pkg = a package object, pkgname = a package name.

"""
    pkgbuilder.main
    ~~~~~~~~~~~~~~~
    Main routine of PKGBUILDer.

    :Copyright: (C) 2011-2012, Kwpolska.
    :License: BSD (see /LICENSE).
"""

from . import DS, T, _, PBError, __version__
from .build import Build
from .utils import Utils
from .upgrade import Upgrade
import argparse
import os
import datetime


### main()          The main routine        ###
def main():
    """Main routine of PKGBUILDer."""
    try:
        DS.log.info('Running argparse.')
        parser = argparse.ArgumentParser(description=_('An AUR helper/library.\
  Wrapper-friendly (pacman-like output.)'), epilog=_('You can \
use pacman syntax if you want to.'))

        parser.add_argument('-v', '--version', action='version',
                            version='PKGBUILDer v' + __version__)
        parser.add_argument('pkgs', metavar='PACKAGE', action='store',
                            nargs='*', help=_('packages to build'))

        argopt = parser.add_argument_group('options')
        argopr = parser.add_argument_group('operations')
        argopt.add_argument('-C', '--nocolor', action='store_false',
                            default=True, dest='color', help=_('don\'t use \
                            colors in output'))
        argopt.add_argument('-D', '--nodepcheck', action='store_false',
                            default=True, dest='depcheck', help=_('don\'t \
                            check dependencies (may break makepkg)'))
        argopt.add_argument('-w', '--buildonly', action='store_false',
                            default=True, dest='mkpginst', help=_('don\'t \
                            install packages after building'))
        argopt.add_argument('-V', '--novalidation', action='store_false',
                            default=True, dest='valid', help=_('don\'t check \
                            if packages were installed after build'))
        argopt.add_argument('-S', '--sync', action='store_true', default=False,
                            dest='pac', help=_('pacman syntax compatiblity'))
        argopt.add_argument('-y', '--refresh', action='store_true',
                            default=False, dest='pacupd', help=_('pacman \
                            syntax compatiblity'))
        argopr.add_argument('-i', '--info', action='store_true', default=False,
                            dest='info', help=_('view package information'))
        argopr.add_argument('-s', '--search', action='store_true',
                            default=False, dest='search', help=_('search the \
                            AUR for matching strings'))
        argopr.add_argument('-u', '--sysupgrade', action='store_true',
                            default=False, dest='upgrade',
                            help=_('upgrade installed AUR packages'))
        argopr.add_argument('-p', '--protocol', action='store',
                            default='http', dest='protocol',
                            help=_('chooses protocol (default: http)'))

        args = parser.parse_args()
        DS.validate = args.valid
        DS.depcheck = args.depcheck
        DS.pacman = args.pac
        DS.mkpginst = args.mkpginst
        DS.protocol = args.protocol
        utils = Utils()
        build = Build()
        upgrade = Upgrade()
        DS.log.info('Arguments parsed.')

        if not args.color:
            DS.colorsoff()

        if args.info:
            for pkgname in args.pkgs:
                pkg = utils.info(pkgname)
                if pkg is None:
                    raise PBError(_('Package {0} not found.').format(
                        pkgname))
                # TRANSLATORS: space it properly.  `yes/no' below are
                # for `out of date'.
                print(_("""Category       : {cat}
Name           : {nme}
Version        : {ver}
URL            : {url}
Licenses       : {lic}
Votes          : {cmv}
Out of Date    : {ood}
Maintainer     : {mnt}
First Submitted: {fsb}
Last Updated   : {upd}
Description    : {dsc}
""").format(cat=DS.categories[int(pkg['CategoryID'])],
            nme=pkg['Name'],
            url=pkg['URL'],
            ver=pkg['Version'],
            lic=pkg['License'],
            cmv=pkg['NumVotes'],
            ood=DS.colors['red'] + _('yes') + DS.colors['all_off'] if (
                pkg['OutOfDate'] == '1') else _('no'),
            mnt=pkg['Maintainer'],
            upd=datetime.datetime.fromtimestamp(float(pkg['Last\
Modified'])).strftime('%a %d %b %Y %H:%m:%S %p %Z'),
            fsb=datetime.datetime.fromtimestamp(float(pkg['First\
Submitted'])).strftime('%a %d %b %Y %H:%m:%S %p %Z'),
            dsc=pkg['Description']))

                exit(0)

        if args.search:
            searchstring = '+'.join(args.pkgs)
            if len(searchstring) < 3:
                # this would be too many entries.  The API is really
                # having this limitation, though.
                DS.fancy_error(_('[ERR5002] search string too short, API \
limitation'))
                DS.fancy_msg(_('Searching for exact match…'))
                search = [utils.info(searchstring)]  # workaround
                if search == [None]:
                    DS.fancy_error2(_('not found'))
                    exit(0)
                else:
                    utils.print_package(search[0], prefix=(
                                        DS.colors['blue'] + '  ->' +
                                        DS.colors['all_off'] +
                                        DS.colors['bold']) + ' ',
                                        prefixp='  -> ')
                    print(DS.colors['all_off'], end='')
                    exit(0)
            else:
                search = utils.search(searchstring)

            output = ''
            for pkg in search:
                if args.pac:
                    output = output + utils.print_package(pkg, False,
                                                          True) + '\n'
                else:
                    output = output + utils.print_package(pkg, True,
                                                          True) + '\n'
            print(output.rstrip())
            exit(0)

        if args.pac:
            # -S assumes being a wrapper and/or wanting to build in /tmp.
            uid = os.geteuid()
            path = '/tmp/pkgbuilder-{0}'.format(str(uid))
            if not os.path.exists(path):
                os.mkdir(path)
            os.chdir(path)

    except PBError as inst:
        DS.fancy_error(str(inst))
        exit(0)

    if args.upgrade:
        upgrade.auto_upgrade()
        del(upgrade)
        exit(0)

    # If we didn't exit, we shall build the packages.
    DS.log.info('Ran through all the addon features, building…')
    for pkgname in args.pkgs:
        DS.log.info('Building {0}'.format(pkgname))
        build.auto_build(pkgname, DS.validate, DS.depcheck, DS.mkpginst)

    DS.log.info('Quitting.')