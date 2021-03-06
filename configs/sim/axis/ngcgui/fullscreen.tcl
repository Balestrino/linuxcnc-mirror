#-----------------------------------------------------------------------
# Copyright: 2013
# Author:    Dewey Garrett <dgarrett@panix.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#-----------------------------------------------------------------------


# Expand to fullscreen
# for axis gui, include ini item:
# Usage (in ini file):
# [DISPLAY]USER_COMMAND_FILE = fullscreen.tcl

maxgeo=root_window.tk.call("wm","maxsize",".")
if type(maxgeo) is type(''):
    fullsize=maxgeo.split(' ')[0] + 'x' + maxgeo.split(' ')[1]
else:
    fullsize=str(maxgeo[0]) + 'x' + str(maxgeo[1])
root_window.tk.call("wm","geometry",".",fullsize)
