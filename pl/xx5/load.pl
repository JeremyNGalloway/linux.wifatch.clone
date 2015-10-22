#
# This file is part of Linux.Wifatch
#
# Copyright (c) 2013,2014,2015 The White Team <rav7teif@ya.ru>
#
# Linux.Wifatch is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Linux.Wifatch is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Linux.Wifatch. If not, see <http://www.gnu.org/licenses/>.
#

bn::func::delete_package "bn::upgrade";
bn::func::delete_package "xx5::upgrader";

if (       $bn::BNVERSION >= 0
	&& bn::func::free_mem > 2600
	&& 1) {
	eval $bn::xx::PL[5]->("upgrader.pm");
	bn::log "BNUP: $@" if $@;
} else {
	bn::func::delete_package "xx5::upgrader";

	#	$bn::port::BN_UPTODATE = 0;
}

