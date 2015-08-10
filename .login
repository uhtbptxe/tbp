#
# *****************************************************************
# *                                                               *
# *    Copyright (c) Digital Equipment Corporation, 1991, 1997    *
# *                                                               *
# *   All Rights Reserved.  Unpublished rights  reserved  under   *
# *   the copyright laws of the United States.                    *
# *                                                               *
# *   The software contained on this media  is  proprietary  to   *
# *   and  embodies  the  confidential  technology  of  Digital   *
# *   Equipment Corporation.  Possession, use,  duplication  or   *
# *   dissemination of the software and media is authorized only  *
# *   pursuant to a valid written license from Digital Equipment  *
# *   Corporation.                                                *
# *                                                               *
# *   RESTRICTED RIGHTS LEGEND   Use, duplication, or disclosure  *
# *   by the U.S. Government is subject to restrictions  as  set  *
# *   forth in Subparagraph (c)(1)(ii)  of  DFARS  252.227-7013,  *
# *   or  in  FAR 52.227-19, as applicable.                       *
# *                                                               *
# *****************************************************************
#
#
# HISTORY
#
# @(#)$RCSfile: .login,v $ $Revision: 4.1.7.3 $ (DEC) $Date: 1995/10/25 20:03:52 $
#
if ($?path) then
    set path=($HOME/bin $path)
else
    set path=($HOME/bin /usr/bin)
endif
if ( ! ${?DT} ) then
	stty dec new
	tset -I -Q
endif
set prompt="`hostname`> "
set mail=/usr/spool/mail/$USER
#
# Local modifications
#
set path=($path /usr/local/bin /usr/local/X11/bin)
#
# Always make the current directory the last place searched in the path
#
set path=($path .)
