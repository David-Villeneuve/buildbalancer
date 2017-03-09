#!/bin/csh
###############################################################################
# Author: David Villeneuve
# Created: 21-Feb-2017
#
# Description:  This script will take the program and parameters passed,
#   and run them, *after* first sourcing the user's .cshrc and .login
#   environment setup scripts.   
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
###############################################################################

# If .cshrc exists, source it

if ( -f ~/.cshrc ) then
  source ~/.cshrc >& /dev/null
endif

# If .login exists, source that.

if ( -f ~/.login ) then
   source ~/.login  >& /dev/null
endif

# Now, run the command.  

eval $argv[1-]
