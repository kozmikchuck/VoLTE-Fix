# Copyright 2020 Khushraj Rathod
#
# This file is part of VoLTE-Fix.
#
# VoLTE-Fix is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# VoLTE-Fix is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with VoLTE-Fix.  If not, see <https://www.gnu.org/licenses/>.

remount; mount -o remount,rw /; mount -o remount,rw /system
mv "$1"/binder${2}/ims /system/priv-app/
setprop persist.dbg.allow_ims_off 1
setprop persist.dbg.volte_avail_ovr 1
setprop persist.dbg.vt_avail_ovr 1
setprop persist.dbg.wfc_avail_ovr 1
setprop persist.sys.phh.ims.caf true