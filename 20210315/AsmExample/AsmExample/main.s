//
//  main.s
//  AsmExample
//
//  Created by akio0911youtube on 2021/03/15.
//

//.global _main
//
//.text
//_main:
//    movl    $1, %eax
//    subl    $12, %esp
//    int     $0x80

.intel_syntax noprefix

.global _main

.text
_main:
    mov eax, 1 // システムコールの番号
    sub esp, 12
    int 0x80 // 128
