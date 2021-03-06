/*
* Math library
*
* Copyright (C) 2016 Intel Corporation. All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
*   * Redistributions of source code must retain the above copyright
*     notice, this list of conditions and the following disclaimer.
*   * Redistributions in binary form must reproduce the above copyright
*     notice, this list of conditions and the following disclaimer in
*     the documentation and/or other materials provided with the
*     distribution.
*   * Neither the name of Intel Corporation nor the names of its
*     contributors may be used to endorse or promote products derived
*     from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
* A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
* OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
* DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
* THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
*
* Author Name <jingwei.zhang@intel.com>
*   History:
*   03-14-2016 Initial version. numerics svn rev. 12864
*/
	.file "remquof.c"
	.text
..TXTST0:
# -- Begin  remquof
	.text
       .align    16,0x90
	.globl remquof
remquof:
# parameter 1: 48 + %esp
# parameter 2: 52 + %esp
# parameter 3: 56 + %esp
..B1.1:
..L1:

        pushl     %ebx
        subl      $40, %esp
        flds      48(%esp)
        call      ..L2
..L2:
        popl      %ebx
        lea       _GLOBAL_OFFSET_TABLE_+[. - ..L2](%ebx), %ebx
        movl      56(%esp), %eax
        fstpl     (%esp)
        flds      52(%esp)
        fstpl     8(%esp)
        movl      %eax, 16(%esp)
        call      remquo@PLT
..B1.2:
        addl      $40, %esp
        popl      %ebx
        ret       
        .align    16,0x90
	.type	remquof,@function
	.size	remquof,.-remquof
	.data
# -- End  remquof
	.data
	.section .note.GNU-stack, ""
# End
