
test1:     file format elf64-x86-64


Disassembly of section .init:

0000000000000510 <_init>:
 510:	48 83 ec 08          	sub    $0x8,%rsp
 514:	48 8b 05 cd 0a 20 00 	mov    0x200acd(%rip),%rax        # 200fe8 <__gmon_start__>
 51b:	48 85 c0             	test   %rax,%rax
 51e:	74 02                	je     522 <_init+0x12>
 520:	ff d0                	callq  *%rax
 522:	48 83 c4 08          	add    $0x8,%rsp
 526:	c3                   	retq   

Disassembly of section .plt:

0000000000000530 <.plt>:
 530:	ff 35 8a 0a 20 00    	pushq  0x200a8a(%rip)        # 200fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
 536:	ff 25 8c 0a 20 00    	jmpq   *0x200a8c(%rip)        # 200fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
 53c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000540 <__printf_chk@plt>:
 540:	ff 25 8a 0a 20 00    	jmpq   *0x200a8a(%rip)        # 200fd0 <__printf_chk@GLIBC_2.3.4>
 546:	68 00 00 00 00       	pushq  $0x0
 54b:	e9 e0 ff ff ff       	jmpq   530 <.plt>

Disassembly of section .plt.got:

0000000000000550 <__cxa_finalize@plt>:
 550:	ff 25 a2 0a 20 00    	jmpq   *0x200aa2(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 556:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000560 <_start>:
 560:	31 ed                	xor    %ebp,%ebp
 562:	49 89 d1             	mov    %rdx,%r9
 565:	5e                   	pop    %rsi
 566:	48 89 e2             	mov    %rsp,%rdx
 569:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 56d:	50                   	push   %rax
 56e:	54                   	push   %rsp
 56f:	4c 8d 05 aa 01 00 00 	lea    0x1aa(%rip),%r8        # 720 <__libc_csu_fini>
 576:	48 8d 0d 33 01 00 00 	lea    0x133(%rip),%rcx        # 6b0 <__libc_csu_init>
 57d:	48 8d 3d ea 00 00 00 	lea    0xea(%rip),%rdi        # 66e <main>
 584:	ff 15 56 0a 20 00    	callq  *0x200a56(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 58a:	f4                   	hlt    
 58b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000590 <deregister_tm_clones>:
 590:	48 8d 3d 79 0a 20 00 	lea    0x200a79(%rip),%rdi        # 201010 <__TMC_END__>
 597:	55                   	push   %rbp
 598:	48 8d 05 71 0a 20 00 	lea    0x200a71(%rip),%rax        # 201010 <__TMC_END__>
 59f:	48 39 f8             	cmp    %rdi,%rax
 5a2:	48 89 e5             	mov    %rsp,%rbp
 5a5:	74 19                	je     5c0 <deregister_tm_clones+0x30>
 5a7:	48 8b 05 2a 0a 20 00 	mov    0x200a2a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 5ae:	48 85 c0             	test   %rax,%rax
 5b1:	74 0d                	je     5c0 <deregister_tm_clones+0x30>
 5b3:	5d                   	pop    %rbp
 5b4:	ff e0                	jmpq   *%rax
 5b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5bd:	00 00 00 
 5c0:	5d                   	pop    %rbp
 5c1:	c3                   	retq   
 5c2:	0f 1f 40 00          	nopl   0x0(%rax)
 5c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5cd:	00 00 00 

00000000000005d0 <register_tm_clones>:
 5d0:	48 8d 3d 39 0a 20 00 	lea    0x200a39(%rip),%rdi        # 201010 <__TMC_END__>
 5d7:	48 8d 35 32 0a 20 00 	lea    0x200a32(%rip),%rsi        # 201010 <__TMC_END__>
 5de:	55                   	push   %rbp
 5df:	48 29 fe             	sub    %rdi,%rsi
 5e2:	48 89 e5             	mov    %rsp,%rbp
 5e5:	48 c1 fe 03          	sar    $0x3,%rsi
 5e9:	48 89 f0             	mov    %rsi,%rax
 5ec:	48 c1 e8 3f          	shr    $0x3f,%rax
 5f0:	48 01 c6             	add    %rax,%rsi
 5f3:	48 d1 fe             	sar    %rsi
 5f6:	74 18                	je     610 <register_tm_clones+0x40>
 5f8:	48 8b 05 f1 09 20 00 	mov    0x2009f1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 5ff:	48 85 c0             	test   %rax,%rax
 602:	74 0c                	je     610 <register_tm_clones+0x40>
 604:	5d                   	pop    %rbp
 605:	ff e0                	jmpq   *%rax
 607:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 60e:	00 00 
 610:	5d                   	pop    %rbp
 611:	c3                   	retq   
 612:	0f 1f 40 00          	nopl   0x0(%rax)
 616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 61d:	00 00 00 

0000000000000620 <__do_global_dtors_aux>:
 620:	80 3d e9 09 20 00 00 	cmpb   $0x0,0x2009e9(%rip)        # 201010 <__TMC_END__>
 627:	75 2f                	jne    658 <__do_global_dtors_aux+0x38>
 629:	48 83 3d c7 09 20 00 	cmpq   $0x0,0x2009c7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 630:	00 
 631:	55                   	push   %rbp
 632:	48 89 e5             	mov    %rsp,%rbp
 635:	74 0c                	je     643 <__do_global_dtors_aux+0x23>
 637:	48 8b 3d ca 09 20 00 	mov    0x2009ca(%rip),%rdi        # 201008 <__dso_handle>
 63e:	e8 0d ff ff ff       	callq  550 <__cxa_finalize@plt>
 643:	e8 48 ff ff ff       	callq  590 <deregister_tm_clones>
 648:	c6 05 c1 09 20 00 01 	movb   $0x1,0x2009c1(%rip)        # 201010 <__TMC_END__>
 64f:	5d                   	pop    %rbp
 650:	c3                   	retq   
 651:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 658:	f3 c3                	repz retq 
 65a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000660 <frame_dummy>:
 660:	55                   	push   %rbp
 661:	48 89 e5             	mov    %rsp,%rbp
 664:	5d                   	pop    %rbp
 665:	e9 66 ff ff ff       	jmpq   5d0 <register_tm_clones>

000000000000066a <sum_test>:
 66a:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
 66d:	c3                   	retq   

000000000000066e <main>:
 66e:	48 83 ec 08          	sub    $0x8,%rsp
 672:	be 0a 00 00 00       	mov    $0xa,%esi
 677:	bf 05 00 00 00       	mov    $0x5,%edi
 67c:	e8 e9 ff ff ff       	callq  66a <sum_test>
 681:	89 c2                	mov    %eax,%edx
 683:	48 8d 35 aa 00 00 00 	lea    0xaa(%rip),%rsi        # 734 <_IO_stdin_used+0x4>
 68a:	bf 01 00 00 00       	mov    $0x1,%edi
 68f:	b8 00 00 00 00       	mov    $0x0,%eax
 694:	e8 a7 fe ff ff       	callq  540 <__printf_chk@plt>
 699:	b8 00 00 00 00       	mov    $0x0,%eax
 69e:	48 83 c4 08          	add    $0x8,%rsp
 6a2:	c3                   	retq   
 6a3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6aa:	00 00 00 
 6ad:	0f 1f 00             	nopl   (%rax)

00000000000006b0 <__libc_csu_init>:
 6b0:	41 57                	push   %r15
 6b2:	41 56                	push   %r14
 6b4:	49 89 d7             	mov    %rdx,%r15
 6b7:	41 55                	push   %r13
 6b9:	41 54                	push   %r12
 6bb:	4c 8d 25 f6 06 20 00 	lea    0x2006f6(%rip),%r12        # 200db8 <__frame_dummy_init_array_entry>
 6c2:	55                   	push   %rbp
 6c3:	48 8d 2d f6 06 20 00 	lea    0x2006f6(%rip),%rbp        # 200dc0 <__init_array_end>
 6ca:	53                   	push   %rbx
 6cb:	41 89 fd             	mov    %edi,%r13d
 6ce:	49 89 f6             	mov    %rsi,%r14
 6d1:	4c 29 e5             	sub    %r12,%rbp
 6d4:	48 83 ec 08          	sub    $0x8,%rsp
 6d8:	48 c1 fd 03          	sar    $0x3,%rbp
 6dc:	e8 2f fe ff ff       	callq  510 <_init>
 6e1:	48 85 ed             	test   %rbp,%rbp
 6e4:	74 20                	je     706 <__libc_csu_init+0x56>
 6e6:	31 db                	xor    %ebx,%ebx
 6e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 6ef:	00 
 6f0:	4c 89 fa             	mov    %r15,%rdx
 6f3:	4c 89 f6             	mov    %r14,%rsi
 6f6:	44 89 ef             	mov    %r13d,%edi
 6f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 6fd:	48 83 c3 01          	add    $0x1,%rbx
 701:	48 39 dd             	cmp    %rbx,%rbp
 704:	75 ea                	jne    6f0 <__libc_csu_init+0x40>
 706:	48 83 c4 08          	add    $0x8,%rsp
 70a:	5b                   	pop    %rbx
 70b:	5d                   	pop    %rbp
 70c:	41 5c                	pop    %r12
 70e:	41 5d                	pop    %r13
 710:	41 5e                	pop    %r14
 712:	41 5f                	pop    %r15
 714:	c3                   	retq   
 715:	90                   	nop
 716:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 71d:	00 00 00 

0000000000000720 <__libc_csu_fini>:
 720:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000724 <_fini>:
 724:	48 83 ec 08          	sub    $0x8,%rsp
 728:	48 83 c4 08          	add    $0x8,%rsp
 72c:	c3                   	retq   
