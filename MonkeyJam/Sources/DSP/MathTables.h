/*

 __        __                                     _                 _     _      ____
 \ \      / /__ ___   _____ _ __  _   _ _ __ ___ | |__   ___ _ __  | |   | |    / ___|
  \ \ /\ / // _` \ \ / / _ \ '_ \| | | | '_ ` _ \| '_ \ / _ \ '__| | |   | |   | |
   \ V  V /| (_| |\ V /  __/ | | | |_| | | | | | | |_) |  __/ |    | |___| |___| |___
    \_/\_/  \__,_| \_/ \___|_| |_|\__,_|_| |_| |_|_.__/ \___|_|    |_____|_____|\____|

                   /|
 ____       __   -- |
(___ \      \ \    _|_
  __) )______\ \
 / __/(  __  )> \
| |___ | || |/ ^ \
|_____)|_||_/_/ \_\




Copyright (C) <2014>  Eli Hughes                ehughes@wavenumber.net

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

*/
#ifndef _SINE_TABLES_
#define _SINE_TABLES_

#include "arm_math.h"

extern const q31_t sine_q31_t[256];

extern const q31_t atan_4pi_q31_t[4096];
extern const q31_t atan_12pi_q31_t[4096];
extern const q31_t atan_24pi_q31_t[4096];
extern const uint16_t OffsetCos_0_2047[256];
extern const uint16_t OffsetCos_0_1023[256];
#endif
