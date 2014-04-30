# Redmine Don't Inherit Subtask Priority

## Overview

Prevent a parent issue from inheriting the priority of its subtasks.  Issues 
that have already had their priorities changed will NOT be changed back

It is compatible with versions 2.4.x and 2.5.x.  Other versions may or may not work. 

Since this is a somewhat hacky implementation, it is highly to be broken in 
future redmine versions.

Please report issues to: 
  https://github.com/ande3577/redmine_dont_inherit_subtask_priority/issues

## Installation

1.  Clone to the plugins/redmine_dont_inherit_subtask_priority directory
1.  Restart server

## Usage

Create subtasks as normal, the priority of the parent issue will not 
be modified.

## License

This program is free software: you can redistribute it and/or modify 
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
