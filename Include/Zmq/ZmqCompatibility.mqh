//+------------------------------------------------------------------+
//| Module: Z85.mqh                                                  |
//| This file is part of the mql-zmq project:                        |
//|     https://github.com/dingmaotu/mql-zmq                         |
//|                                                                  |
//| Copyright 2016-2017 Li Ding <dingmaotu@hotmail.com>              |
//|                                                                  |
//| Licensed under the Apache License, Version 2.0 (the "License");  |
//| you may not use this file except in compliance with the License. |
//| You may obtain a copy of the License at                          |
//|                                                                  |
//|     http://www.apache.org/licenses/LICENSE-2.0                   |
//|                                                                  |
//| Unless required by applicable law or agreed to in writing,       |
//| software distributed under the License is distributed on an      |
//| "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,     |
//| either express or implied.                                       |
//| See the License for the specific language governing permissions  |
//| and limitations under the License.                               |
//+------------------------------------------------------------------+
#property strict

#include <Mql/Lang/Native.mqh>

// Convert uchar[] → char[]
void UcharToChar(const uchar &src[], char &dst[])
{
   ArrayResize(dst, ArraySize(src));
   for(int i = 0; i < ArraySize(src); i++)
      dst[i] = (char)src[i];
}

// Convert char[] → uchar[]
void CharToUchar(const char &src[], uchar &dst[])
{
   ArrayResize(dst, ArraySize(src));
   for(int i = 0; i < ArraySize(src); i++)
      dst[i] = (uchar)src[i];
}