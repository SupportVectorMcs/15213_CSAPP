
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400a28 <_init>:
  400a28:	48 83 ec 08          	sub    $0x8,%rsp
  400a2c:	e8 0b 02 00 00       	callq  400c3c <call_gmon_start>
  400a31:	e8 8a 02 00 00       	callq  400cc0 <frame_dummy>
  400a36:	e8 25 1a 00 00       	callq  402460 <__do_global_ctors_aux>
  400a3b:	48 83 c4 08          	add    $0x8,%rsp
  400a3f:	c3                   	retq   

Disassembly of section .plt:

0000000000400a40 <printf@plt-0x10>:
  400a40:	ff 35 62 28 20 00    	pushq  0x202862(%rip)        # 6032a8 <_GLOBAL_OFFSET_TABLE_+0x8>
  400a46:	ff 25 64 28 20 00    	jmpq   *0x202864(%rip)        # 6032b0 <_GLOBAL_OFFSET_TABLE_+0x10>
  400a4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400a50 <printf@plt>:
  400a50:	ff 25 62 28 20 00    	jmpq   *0x202862(%rip)        # 6032b8 <_GLOBAL_OFFSET_TABLE_+0x18>
  400a56:	68 00 00 00 00       	pushq  $0x0
  400a5b:	e9 e0 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400a60 <memset@plt>:
  400a60:	ff 25 5a 28 20 00    	jmpq   *0x20285a(%rip)        # 6032c0 <_GLOBAL_OFFSET_TABLE_+0x20>
  400a66:	68 01 00 00 00       	pushq  $0x1
  400a6b:	e9 d0 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400a70 <close@plt>:
  400a70:	ff 25 52 28 20 00    	jmpq   *0x202852(%rip)        # 6032c8 <_GLOBAL_OFFSET_TABLE_+0x28>
  400a76:	68 02 00 00 00       	pushq  $0x2
  400a7b:	e9 c0 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400a80 <gethostbyname@plt>:
  400a80:	ff 25 4a 28 20 00    	jmpq   *0x20284a(%rip)        # 6032d0 <_GLOBAL_OFFSET_TABLE_+0x30>
  400a86:	68 03 00 00 00       	pushq  $0x3
  400a8b:	e9 b0 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400a90 <puts@plt>:
  400a90:	ff 25 42 28 20 00    	jmpq   *0x202842(%rip)        # 6032d8 <_GLOBAL_OFFSET_TABLE_+0x38>
  400a96:	68 04 00 00 00       	pushq  $0x4
  400a9b:	e9 a0 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400aa0 <exit@plt>:
  400aa0:	ff 25 3a 28 20 00    	jmpq   *0x20283a(%rip)        # 6032e0 <_GLOBAL_OFFSET_TABLE_+0x40>
  400aa6:	68 05 00 00 00       	pushq  $0x5
  400aab:	e9 90 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400ab0 <strcasecmp@plt>:
  400ab0:	ff 25 32 28 20 00    	jmpq   *0x202832(%rip)        # 6032e8 <_GLOBAL_OFFSET_TABLE_+0x48>
  400ab6:	68 06 00 00 00       	pushq  $0x6
  400abb:	e9 80 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400ac0 <read@plt>:
  400ac0:	ff 25 2a 28 20 00    	jmpq   *0x20282a(%rip)        # 6032f0 <_GLOBAL_OFFSET_TABLE_+0x50>
  400ac6:	68 07 00 00 00       	pushq  $0x7
  400acb:	e9 70 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400ad0 <fopen@plt>:
  400ad0:	ff 25 22 28 20 00    	jmpq   *0x202822(%rip)        # 6032f8 <_GLOBAL_OFFSET_TABLE_+0x58>
  400ad6:	68 08 00 00 00       	pushq  $0x8
  400adb:	e9 60 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400ae0 <__libc_start_main@plt>:
  400ae0:	ff 25 1a 28 20 00    	jmpq   *0x20281a(%rip)        # 603300 <_GLOBAL_OFFSET_TABLE_+0x60>
  400ae6:	68 09 00 00 00       	pushq  $0x9
  400aeb:	e9 50 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400af0 <fgets@plt>:
  400af0:	ff 25 12 28 20 00    	jmpq   *0x202812(%rip)        # 603308 <_GLOBAL_OFFSET_TABLE_+0x68>
  400af6:	68 0a 00 00 00       	pushq  $0xa
  400afb:	e9 40 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b00 <bcopy@plt>:
  400b00:	ff 25 0a 28 20 00    	jmpq   *0x20280a(%rip)        # 603310 <_GLOBAL_OFFSET_TABLE_+0x70>
  400b06:	68 0b 00 00 00       	pushq  $0xb
  400b0b:	e9 30 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b10 <__ctype_b_loc@plt>:
  400b10:	ff 25 02 28 20 00    	jmpq   *0x202802(%rip)        # 603318 <_GLOBAL_OFFSET_TABLE_+0x78>
  400b16:	68 0c 00 00 00       	pushq  $0xc
  400b1b:	e9 20 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b20 <sprintf@plt>:
  400b20:	ff 25 fa 27 20 00    	jmpq   *0x2027fa(%rip)        # 603320 <_GLOBAL_OFFSET_TABLE_+0x80>
  400b26:	68 0d 00 00 00       	pushq  $0xd
  400b2b:	e9 10 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b30 <__strtol_internal@plt>:
  400b30:	ff 25 f2 27 20 00    	jmpq   *0x2027f2(%rip)        # 603328 <_GLOBAL_OFFSET_TABLE_+0x88>
  400b36:	68 0e 00 00 00       	pushq  $0xe
  400b3b:	e9 00 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b40 <sscanf@plt>:
  400b40:	ff 25 ea 27 20 00    	jmpq   *0x2027ea(%rip)        # 603330 <_GLOBAL_OFFSET_TABLE_+0x90>
  400b46:	68 0f 00 00 00       	pushq  $0xf
  400b4b:	e9 f0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b50 <sleep@plt>:
  400b50:	ff 25 e2 27 20 00    	jmpq   *0x2027e2(%rip)        # 603338 <_GLOBAL_OFFSET_TABLE_+0x98>
  400b56:	68 10 00 00 00       	pushq  $0x10
  400b5b:	e9 e0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b60 <connect@plt>:
  400b60:	ff 25 da 27 20 00    	jmpq   *0x2027da(%rip)        # 603340 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400b66:	68 11 00 00 00       	pushq  $0x11
  400b6b:	e9 d0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b70 <gethostname@plt>:
  400b70:	ff 25 d2 27 20 00    	jmpq   *0x2027d2(%rip)        # 603348 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400b76:	68 12 00 00 00       	pushq  $0x12
  400b7b:	e9 c0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b80 <signal@plt>:
  400b80:	ff 25 ca 27 20 00    	jmpq   *0x2027ca(%rip)        # 603350 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400b86:	68 13 00 00 00       	pushq  $0x13
  400b8b:	e9 b0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b90 <socket@plt>:
  400b90:	ff 25 c2 27 20 00    	jmpq   *0x2027c2(%rip)        # 603358 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400b96:	68 14 00 00 00       	pushq  $0x14
  400b9b:	e9 a0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400ba0 <getenv@plt>:
  400ba0:	ff 25 ba 27 20 00    	jmpq   *0x2027ba(%rip)        # 603360 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400ba6:	68 15 00 00 00       	pushq  $0x15
  400bab:	e9 90 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400bb0 <alarm@plt>:
  400bb0:	ff 25 b2 27 20 00    	jmpq   *0x2027b2(%rip)        # 603368 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400bb6:	68 16 00 00 00       	pushq  $0x16
  400bbb:	e9 80 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400bc0 <__errno_location@plt>:
  400bc0:	ff 25 aa 27 20 00    	jmpq   *0x2027aa(%rip)        # 603370 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400bc6:	68 17 00 00 00       	pushq  $0x17
  400bcb:	e9 70 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400bd0 <strcpy@plt>:
  400bd0:	ff 25 a2 27 20 00    	jmpq   *0x2027a2(%rip)        # 603378 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400bd6:	68 18 00 00 00       	pushq  $0x18
  400bdb:	e9 60 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400be0 <fprintf@plt>:
  400be0:	ff 25 9a 27 20 00    	jmpq   *0x20279a(%rip)        # 603380 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400be6:	68 19 00 00 00       	pushq  $0x19
  400beb:	e9 50 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400bf0 <write@plt>:
  400bf0:	ff 25 92 27 20 00    	jmpq   *0x202792(%rip)        # 603388 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400bf6:	68 1a 00 00 00       	pushq  $0x1a
  400bfb:	e9 40 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400c00 <fflush@plt>:
  400c00:	ff 25 8a 27 20 00    	jmpq   *0x20278a(%rip)        # 603390 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400c06:	68 1b 00 00 00       	pushq  $0x1b
  400c0b:	e9 30 fe ff ff       	jmpq   400a40 <_init+0x18>

Disassembly of section .text:

0000000000400c10 <_start>:
  400c10:	31 ed                	xor    %ebp,%ebp
  400c12:	49 89 d1             	mov    %rdx,%r9
  400c15:	5e                   	pop    %rsi
  400c16:	48 89 e2             	mov    %rsp,%rdx
  400c19:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400c1d:	50                   	push   %rax
  400c1e:	54                   	push   %rsp
  400c1f:	49 c7 c0 c0 23 40 00 	mov    $0x4023c0,%r8
  400c26:	48 c7 c1 d0 23 40 00 	mov    $0x4023d0,%rcx
  400c2d:	48 c7 c7 e8 0c 40 00 	mov    $0x400ce8,%rdi
  400c34:	e8 a7 fe ff ff       	callq  400ae0 <__libc_start_main@plt>
  400c39:	f4                   	hlt    
  400c3a:	90                   	nop
  400c3b:	90                   	nop

0000000000400c3c <call_gmon_start>:
  400c3c:	48 83 ec 08          	sub    $0x8,%rsp
  400c40:	48 8b 05 51 26 20 00 	mov    0x202651(%rip),%rax        # 603298 <_DYNAMIC+0x190>
  400c47:	48 85 c0             	test   %rax,%rax
  400c4a:	74 02                	je     400c4e <call_gmon_start+0x12>
  400c4c:	ff d0                	callq  *%rax
  400c4e:	48 83 c4 08          	add    $0x8,%rsp
  400c52:	c3                   	retq   
  400c53:	90                   	nop
  400c54:	90                   	nop
  400c55:	90                   	nop
  400c56:	90                   	nop
  400c57:	90                   	nop
  400c58:	90                   	nop
  400c59:	90                   	nop
  400c5a:	90                   	nop
  400c5b:	90                   	nop
  400c5c:	90                   	nop
  400c5d:	90                   	nop
  400c5e:	90                   	nop
  400c5f:	90                   	nop

0000000000400c60 <__do_global_dtors_aux>:
  400c60:	55                   	push   %rbp
  400c61:	48 89 e5             	mov    %rsp,%rbp
  400c64:	53                   	push   %rbx
  400c65:	48 83 ec 08          	sub    $0x8,%rsp
  400c69:	80 3d 50 34 20 00 00 	cmpb   $0x0,0x203450(%rip)        # 6040c0 <completed.6145>
  400c70:	75 44                	jne    400cb6 <__do_global_dtors_aux+0x56>
  400c72:	b8 f8 30 60 00       	mov    $0x6030f8,%eax
  400c77:	48 2d f0 30 60 00    	sub    $0x6030f0,%rax
  400c7d:	48 c1 f8 03          	sar    $0x3,%rax
  400c81:	48 8d 58 ff          	lea    -0x1(%rax),%rbx
  400c85:	48 8b 05 2c 34 20 00 	mov    0x20342c(%rip),%rax        # 6040b8 <dtor_idx.6147>
  400c8c:	48 39 c3             	cmp    %rax,%rbx
  400c8f:	76 1e                	jbe    400caf <__do_global_dtors_aux+0x4f>
  400c91:	48 83 c0 01          	add    $0x1,%rax
  400c95:	48 89 05 1c 34 20 00 	mov    %rax,0x20341c(%rip)        # 6040b8 <dtor_idx.6147>
  400c9c:	ff 14 c5 f0 30 60 00 	callq  *0x6030f0(,%rax,8)
  400ca3:	48 8b 05 0e 34 20 00 	mov    0x20340e(%rip),%rax        # 6040b8 <dtor_idx.6147>
  400caa:	48 39 c3             	cmp    %rax,%rbx
  400cad:	77 e2                	ja     400c91 <__do_global_dtors_aux+0x31>
  400caf:	c6 05 0a 34 20 00 01 	movb   $0x1,0x20340a(%rip)        # 6040c0 <completed.6145>
  400cb6:	48 83 c4 08          	add    $0x8,%rsp
  400cba:	5b                   	pop    %rbx
  400cbb:	c9                   	leaveq 
  400cbc:	c3                   	retq   
  400cbd:	0f 1f 00             	nopl   (%rax)

0000000000400cc0 <frame_dummy>:
  400cc0:	55                   	push   %rbp
  400cc1:	48 83 3d 37 24 20 00 	cmpq   $0x0,0x202437(%rip)        # 603100 <__JCR_END__>
  400cc8:	00 
  400cc9:	48 89 e5             	mov    %rsp,%rbp
  400ccc:	74 16                	je     400ce4 <frame_dummy+0x24>
  400cce:	b8 00 00 00 00       	mov    $0x0,%eax
  400cd3:	48 85 c0             	test   %rax,%rax
  400cd6:	74 0c                	je     400ce4 <frame_dummy+0x24>
  400cd8:	bf 00 31 60 00       	mov    $0x603100,%edi
  400cdd:	49 89 c3             	mov    %rax,%r11
  400ce0:	c9                   	leaveq 
  400ce1:	41 ff e3             	jmpq   *%r11
  400ce4:	c9                   	leaveq 
  400ce5:	c3                   	retq   
  400ce6:	90                   	nop
  400ce7:	90                   	nop

0000000000400ce8 <main>:
  400ce8:	53                   	push   %rbx
  400ce9:	48 89 f3             	mov    %rsi,%rbx
  400cec:	83 ff 01             	cmp    $0x1,%edi
  400cef:	75 10                	jne    400d01 <main+0x19>
  400cf1:	48 8b 05 a8 33 20 00 	mov    0x2033a8(%rip),%rax        # 6040a0 <__bss_start>
  400cf8:	48 89 05 c9 33 20 00 	mov    %rax,0x2033c9(%rip)        # 6040c8 <infile>
  400cff:	eb 56                	jmp    400d57 <main+0x6f>
  400d01:	83 ff 02             	cmp    $0x2,%edi
  400d04:	75 35                	jne    400d3b <main+0x53>
  400d06:	be d0 24 40 00       	mov    $0x4024d0,%esi
  400d0b:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  400d0f:	e8 bc fd ff ff       	callq  400ad0 <fopen@plt>
  400d14:	48 89 05 ad 33 20 00 	mov    %rax,0x2033ad(%rip)        # 6040c8 <infile>
  400d1b:	48 85 c0             	test   %rax,%rax
  400d1e:	75 37                	jne    400d57 <main+0x6f>
  400d20:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400d24:	48 8b 33             	mov    (%rbx),%rsi
  400d27:	bf d2 24 40 00       	mov    $0x4024d2,%edi
  400d2c:	e8 1f fd ff ff       	callq  400a50 <printf@plt>
  400d31:	bf 08 00 00 00       	mov    $0x8,%edi
  400d36:	e8 65 fd ff ff       	callq  400aa0 <exit@plt>
  400d3b:	48 8b 36             	mov    (%rsi),%rsi
  400d3e:	bf ef 24 40 00       	mov    $0x4024ef,%edi
  400d43:	b8 00 00 00 00       	mov    $0x0,%eax
  400d48:	e8 03 fd ff ff       	callq  400a50 <printf@plt>
  400d4d:	bf 08 00 00 00       	mov    $0x8,%edi
  400d52:	e8 49 fd ff ff       	callq  400aa0 <exit@plt>
  400d57:	e8 b1 08 00 00       	callq  40160d <initialize_bomb>
  400d5c:	bf 58 25 40 00       	mov    $0x402558,%edi
  400d61:	e8 2a fd ff ff       	callq  400a90 <puts@plt>
  400d66:	bf 98 25 40 00       	mov    $0x402598,%edi
  400d6b:	e8 20 fd ff ff       	callq  400a90 <puts@plt>
  400d70:	e8 6e 07 00 00       	callq  4014e3 <read_line>
  400d75:	48 89 c7             	mov    %rax,%rdi
  400d78:	e8 47 04 00 00       	callq  4011c4 <phase_1>
  400d7d:	e8 df 05 00 00       	callq  401361 <phase_defused>
  400d82:	bf c8 25 40 00       	mov    $0x4025c8,%edi
  400d87:	e8 04 fd ff ff       	callq  400a90 <puts@plt>
  400d8c:	e8 52 07 00 00       	callq  4014e3 <read_line>
  400d91:	48 89 c7             	mov    %rax,%rdi
  400d94:	e8 5f 02 00 00       	callq  400ff8 <phase_2>
  400d99:	e8 c3 05 00 00       	callq  401361 <phase_defused>
  400d9e:	bf 09 25 40 00       	mov    $0x402509,%edi
  400da3:	e8 e8 fc ff ff       	callq  400a90 <puts@plt>
  400da8:	e8 36 07 00 00       	callq  4014e3 <read_line>
  400dad:	48 89 c7             	mov    %rax,%rdi
  400db0:	e8 55 03 00 00       	callq  40110a <phase_3>
  400db5:	e8 a7 05 00 00       	callq  401361 <phase_defused>
  400dba:	bf 27 25 40 00       	mov    $0x402527,%edi
  400dbf:	e8 cc fc ff ff       	callq  400a90 <puts@plt>
  400dc4:	e8 1a 07 00 00       	callq  4014e3 <read_line>
  400dc9:	48 89 c7             	mov    %rax,%rdi
  400dcc:	e8 dc 02 00 00       	callq  4010ad <phase_4>
  400dd1:	e8 8b 05 00 00       	callq  401361 <phase_defused>
  400dd6:	bf f8 25 40 00       	mov    $0x4025f8,%edi
  400ddb:	e8 b0 fc ff ff       	callq  400a90 <puts@plt>
  400de0:	e8 fe 06 00 00       	callq  4014e3 <read_line>
  400de5:	48 89 c7             	mov    %rax,%rdi
  400de8:	e8 4f 02 00 00       	callq  40103c <phase_5>
  400ded:	e8 6f 05 00 00       	callq  401361 <phase_defused>
  400df2:	bf 36 25 40 00       	mov    $0x402536,%edi
  400df7:	e8 94 fc ff ff       	callq  400a90 <puts@plt>
  400dfc:	e8 e2 06 00 00       	callq  4014e3 <read_line>
  400e01:	48 89 c7             	mov    %rax,%rdi
  400e04:	e8 da 00 00 00       	callq  400ee3 <phase_6>
  400e09:	e8 53 05 00 00       	callq  401361 <phase_defused>
  400e0e:	b8 00 00 00 00       	mov    $0x0,%eax
  400e13:	5b                   	pop    %rbx
  400e14:	c3                   	retq   
  400e15:	90                   	nop
  400e16:	90                   	nop
  400e17:	90                   	nop
  400e18:	90                   	nop
  400e19:	90                   	nop
  400e1a:	90                   	nop
  400e1b:	90                   	nop
  400e1c:	90                   	nop
  400e1d:	90                   	nop
  400e1e:	90                   	nop
  400e1f:	90                   	nop

0000000000400e20 <func4>:
  400e20:	89 d1                	mov    %edx,%ecx             #ecx = edx = 14
  400e22:	29 f2                	sub    %esi,%edx             #edx = edx - esi = 14 - 0 = 14
  400e24:	89 d0                	mov    %edx,%eax             #eax = edx = 14
  400e26:	c1 e8 1f             	shr    $0x1f,%eax            #eax >> 31 = 0
  400e29:	01 d0                	add    %edx,%eax             #eax = 14
  400e2b:	d1 f8                	sar    %eax                  
  400e2d:	01 f0                	add    %esi,%eax             #eax = 14

  400e2f:	39 f8                	cmp    %edi,%eax       
  400e31:	7e 0d                	jle    400e40 <func4+0x20>   #eax <= 输入1 就进入循环

  400e33:	8d 50 ff             	lea    -0x1(%rax),%edx       #edx = -0x1(%rax)
  400e36:	e8 e5 ff ff ff       	callq  400e20 <func4>        #否则就赋值重新开始

  400e3b:	8d 14 00             	lea    (%rax,%rax,1),%edx    #edx = a[n]
  400e3e:	eb 17                	jmp    400e57 <func4+0x37>   #结束

  400e40:	ba 00 00 00 00       	mov    $0x0,%edx             #edx = 0
  400e45:	39 f8                	cmp    %edi,%eax  
  400e47:	7d 0e                	jge    400e57 <func4+0x37>   #eax >= 输入1 就结束
  400e49:	8d 70 01             	lea    0x1(%rax),%esi        #esi = 0x1(%rax)
  400e4c:	89 ca                	mov    %ecx,%edx             #edx = ecx = 14
  400e4e:	e8 cd ff ff ff       	callq  400e20 <func4>        
  400e53:	8d 54 00 01          	lea    0x1(%rax,%rax,1),%edx #edx = a[n+1]

  400e57:	89 d0                	mov    %edx,%eax             #eax = edx
  400e59:	c3                   	retq   

0000000000400e5a <fun7>:
  400e5a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400e5f:	48 85 ff             	test   %rdi,%rdi
  400e62:	74 28                	je     400e8c <fun7+0x32>
  400e64:	8b 17                	mov    (%rdi),%edx
  400e66:	39 f2                	cmp    %esi,%edx
  400e68:	7e 0c                	jle    400e76 <fun7+0x1c>
  400e6a:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  400e6e:	e8 e7 ff ff ff       	callq  400e5a <fun7>
  400e73:	01 c0                	add    %eax,%eax
  400e75:	c3                   	retq   
  400e76:	b8 00 00 00 00       	mov    $0x0,%eax
  400e7b:	39 f2                	cmp    %esi,%edx
  400e7d:	74 0d                	je     400e8c <fun7+0x32>
  400e7f:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  400e83:	e8 d2 ff ff ff       	callq  400e5a <fun7>
  400e88:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  400e8c:	f3 c3                	repz retq 

0000000000400e8e <secret_phase>:
  400e8e:	53                   	push   %rbx
  400e8f:	e8 4f 06 00 00       	callq  4014e3 <read_line>
  400e94:	48 89 c7             	mov    %rax,%rdi
  400e97:	b9 00 00 00 00       	mov    $0x0,%ecx
  400e9c:	ba 0a 00 00 00       	mov    $0xa,%edx
  400ea1:	be 00 00 00 00       	mov    $0x0,%esi
  400ea6:	e8 85 fc ff ff       	callq  400b30 <__strtol_internal@plt>
  400eab:	89 c3                	mov    %eax,%ebx
  400ead:	8d 40 ff             	lea    -0x1(%rax),%eax
  400eb0:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  400eb5:	76 05                	jbe    400ebc <secret_phase+0x2e>
  400eb7:	e8 31 05 00 00       	callq  4013ed <explode_bomb>
  400ebc:	89 de                	mov    %ebx,%esi
  400ebe:	bf 00 3e 60 00       	mov    $0x603e00,%edi
  400ec3:	e8 92 ff ff ff       	callq  400e5a <fun7>
  400ec8:	83 f8 03             	cmp    $0x3,%eax
  400ecb:	74 05                	je     400ed2 <secret_phase+0x44>
  400ecd:	e8 1b 05 00 00       	callq  4013ed <explode_bomb>
  400ed2:	bf 20 26 40 00       	mov    $0x402620,%edi
  400ed7:	e8 b4 fb ff ff       	callq  400a90 <puts@plt>
  400edc:	e8 80 04 00 00       	callq  401361 <phase_defused>
  400ee1:	5b                   	pop    %rbx
  400ee2:	c3                   	retq   

0000000000400ee3 <phase_6>:
  400ee3:	41 57                	push   %r15
  400ee5:	41 56                	push   %r14
  400ee7:	41 55                	push   %r13
  400ee9:	41 54                	push   %r12
  400eeb:	55                   	push   %rbp
  400eec:	53                   	push   %rbx
  400eed:	48 83 ec 58          	sub    $0x58,%rsp

  400ef1:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi           #rsi = 0x30(%rsp)
  400ef6:	e8 28 05 00 00       	callq  401423 <read_six_numbers>
  400efb:	41 bd 00 00 00 00    	mov    $0x0,%r13d                #r13d = 0
  400f01:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14           #r14 = 0x30(%rsp)
  400f06:	4d 89 f7             	mov    %r14,%r15                 #r15 = r14

  400f09:	4d 89 ec             	mov    %r13,%r12                 #r12 = r13 //0
  400f0c:	43 8b 04 ae          	mov    (%r14,%r13,4),%eax        #eax = (%r14,%r13,4) //1
  400f10:	83 e8 01             	sub    $0x1,%eax                 #eax -= 1 //0
  400f13:	83 f8 05             	cmp    $0x5,%eax                
  400f16:	76 05                	jbe    400f1d <phase_6+0x3a>     #eax <= 5
  400f18:	e8 d0 04 00 00       	callq  4013ed <explode_bomb>
  400f1d:	41 8d 5d 01          	lea    0x1(%r13),%ebx            #ebx = 0x1(%r13) //1
  400f21:	49 83 fd 05          	cmp    $0x5,%r13     
  400f25:	0f 84 aa 00 00 00    	je     400fd5 <phase_6+0xf2>     #r13 = 5 //0

  400f2b:	4c 89 fd             	mov    %r15,%rbp                 #rbp = r15 //1
  400f2e:	48 63 d3             	movslq %ebx,%rdx                 #rdx = ebx //1
  400f31:	42 8b 44 a5 00       	mov    0x0(%rbp,%r12,4),%eax     #eax = 0x0(%rbp,%r12,4) //1
  400f36:	3b 44 94 30          	cmp    0x30(%rsp,%rdx,4),%eax 
  400f3a:	75 05                	jne    400f41 <phase_6+0x5e>     #eax 不等于 0x30(%rsp,%rdx,4)
  400f3c:	e8 ac 04 00 00       	callq  4013ed <explode_bomb>
  400f41:	83 c3 01             	add    $0x1,%ebx                 #ebx += 1
  400f44:	83 fb 05             	cmp    $0x5,%ebx              
  400f47:	7e e5                	jle    400f2e <phase_6+0x4b>     #ebx >= 5
  400f49:	49 83 c5 01          	add    $0x1,%r13                 #r13 += 1
  400f4d:	eb ba                	jmp    400f09 <phase_6+0x26>      

  400f4f:	48 8b 76 08          	mov    0x8(%rsi),%rsi            #rsi = 0x8(%rsi)
  400f53:	83 c2 01             	add    $0x1,%edx                 #edx += 1

  400f56:	48 63 c1             	movslq %ecx,%rax                 #rax = ecx
  400f59:	3b 54 84 30          	cmp    0x30(%rsp,%rax,4),%edx    
  400f5d:	7c f0                	jl     400f4f <phase_6+0x6c>     #edx > 0x30(%rsp,%rax,4)
  400f5f:	48 89 34 c4          	mov    %rsi,(%rsp,%rax,8)        #(%rsp,%rax,8) = rsi
  400f63:	83 c1 01             	add    $0x1,%ecx                 #ecx += 1
  400f66:	83 f9 05             	cmp    $0x5,%ecx  
  400f69:	7f 0c                	jg     400f77 <phase_6+0x94>     #ecx > 5
  400f6b:	be 30 3c 60 00       	mov    $0x603c30,%esi            #esi = 0x603c30
  400f70:	ba 01 00 00 00       	mov    $0x1,%edx                 #edx = 1
  400f75:	eb df                	jmp    400f56 <phase_6+0x73>
  400f77:	48 8b 0c 24          	mov    (%rsp),%rcx               #rcx = (%rsp)
  400f7b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax            #rax = 0x8(%rsp)
  400f80:	48 89 41 08          	mov    %rax,0x8(%rcx)            #0x8(%rcx)= rax
  400f84:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx           #rdx = 0x10(%rsp)
  400f89:	48 89 50 08          	mov    %rdx,0x8(%rax)
  400f8d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  400f92:	48 89 42 08          	mov    %rax,0x8(%rdx)
  400f96:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
  400f9b:	48 89 50 08          	mov    %rdx,0x8(%rax)
  400f9f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  400fa4:	48 89 42 08          	mov    %rax,0x8(%rdx)
  400fa8:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  400faf:	00 
  400fb0:	48 89 cb             	mov    %rcx,%rbx
  400fb3:	bd 00 00 00 00       	mov    $0x0,%ebp
  400fb8:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400fbc:	8b 03                	mov    (%rbx),%eax
  400fbe:	3b 02                	cmp    (%rdx),%eax
  400fc0:	7d 05                	jge    400fc7 <phase_6+0xe4>
  400fc2:	e8 26 04 00 00       	callq  4013ed <explode_bomb>
  400fc7:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400fcb:	83 c5 01             	add    $0x1,%ebp
  400fce:	83 fd 05             	cmp    $0x5,%ebp
  400fd1:	74 16                	je     400fe9 <phase_6+0x106>
  400fd3:	eb e3                	jmp    400fb8 <phase_6+0xd5>

  400fd5:	be 30 3c 60 00       	mov    $0x603c30,%esi
  400fda:	ba 01 00 00 00       	mov    $0x1,%edx
  400fdf:	b9 00 00 00 00       	mov    $0x0,%ecx
  400fe4:	e9 6d ff ff ff       	jmpq   400f56 <phase_6+0x73>

  400fe9:	48 83 c4 58          	add    $0x58,%rsp
  400fed:	5b                   	pop    %rbx
  400fee:	5d                   	pop    %rbp
  400fef:	41 5c                	pop    %r12
  400ff1:	41 5d                	pop    %r13
  400ff3:	41 5e                	pop    %r14
  400ff5:	41 5f                	pop    %r15
  400ff7:	c3                   	retq   

0000000000400ff8 <phase_2>:
  400ff8:	55                   	push   %rbp
  400ff9:	53                   	push   %rbx

  400ffa:	48 83 ec 28          	sub    $0x28,%rsp                
 
  400ffe:	48 89 e6             	mov    %rsp,%rsi                 # save %rsp

  401001:	e8 1d 04 00 00       	callq  401423 <read_six_numbers> 
  401006:	83 3c 24 00          	cmpl   $0x0,(%rsp)               # rsp 和 0
  40100a:	79 05                	jns    401011 <phase_2+0x19>     # 非负就jump,输入>0
  40100c:	e8 dc 03 00 00       	callq  4013ed <explode_bomb>
  401011:	bb 00 00 00 00       	mov    $0x0,%ebx                 # ebx=0
  401016:	48 89 e5             	mov    %rsp,%rbp                 # rbp=rsp
  401019:	8d 43 01             	lea    0x1(%rbx),%eax            # eax=1(rbx)
  40101c:	03 44 9d 00          	add    0x0(%rbp,%rbx,4),%eax     # eax=eax+a[n]
  401020:	39 44 9d 04          	cmp    %eax,0x4(%rbp,%rbx,4)     # a[n+1] 和 eax
  401024:	74 05                	je     40102b <phase_2+0x33>     # 相等就jump
  401026:	e8 c2 03 00 00       	callq  4013ed <explode_bomb>
  40102b:	48 83 c3 01          	add    $0x1,%rbx                 # rbx=rbx+1 
  40102f:	48 83 fb 05          	cmp    $0x5,%rbx                 # rbx 和 5
  401033:	75 e4                	jne    401019 <phase_2+0x21>     # 不相等就jump
 
  401035:	48 83 c4 28          	add    $0x28,%rsp                

  401039:	5b                   	pop    %rbx
  40103a:	5d                   	pop    %rbp
  40103b:	c3                   	retq   

000000000040103c <phase_5>:
  40103c:	48 83 ec 18          	sub    $0x18,%rsp

  401040:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx        #rcx = 输入2
  401045:	48 8d 54 24 14       	lea    0x14(%rsp),%rdx        #rdx = 输入1
  40104a:	be 70 27 40 00       	mov    $0x402770,%esi         #esi = 0x402770
  40104f:	b8 00 00 00 00       	mov    $0x0,%eax              #eax = 0x0
  401054:	e8 e7 fa ff ff       	callq  400b40 <sscanf@plt>
  401059:	83 f8 01             	cmp    $0x1,%eax              
  40105c:	7f 05                	jg     401063 <phase_5+0x27>  #eax > 1就jump
  40105e:	e8 8a 03 00 00       	callq  4013ed <explode_bomb>
  401063:	8b 44 24 14          	mov    0x14(%rsp),%eax        #eax = 输入1
  401067:	83 e0 0f             	and    $0xf,%eax              #取输入1的最低四位           
  40106a:	89 44 24 14          	mov    %eax,0x14(%rsp)        #输入1 = eax
  40106e:	83 f8 0f             	cmp    $0xf,%eax              
  401071:	74 30                	je     4010a3 <phase_5+0x67>  #eax = 15就爆炸,原始输入不能为15
  401073:	ba 00 00 00 00       	mov    $0x0,%edx              #edx = 0
  401078:	b9 00 00 00 00       	mov    $0x0,%ecx              #ecx = 0

  40107d:	83 c2 01             	add    $0x1,%edx              #edx += 1
  401080:	48 98                	cltq                          #高位拓展
  401082:	8b 04 85 c0 26 40 00 	mov    0x4026c0(,%rax,4),%eax #eax = 0x4026c0(,%rax,4)
  401089:	01 c1                	add    %eax,%ecx              #ecx += eax
  40108b:	83 f8 0f             	cmp    $0xf,%eax            
  40108e:	75 ed                	jne    40107d <phase_5+0x41>  #eax 不等于 15 就给edx + 1
  
  401090:	c7 44 24 14 0f 00 00 	movl   $0xf,0x14(%rsp)        #输入1 = 15
  401097:	00 
  401098:	83 fa 0f             	cmp    $0xf,%edx              
  40109b:	75 06                	jne    4010a3 <phase_5+0x67>  #edx 不等于 15 就爆炸
  40109d:	39 4c 24 10          	cmp    %ecx,0x10(%rsp)        
  4010a1:	74 05                	je     4010a8 <phase_5+0x6c>  #ecx 等于输入2 就 pass 
  4010a3:	e8 45 03 00 00       	callq  4013ed <explode_bomb>

  4010a8:	48 83 c4 18          	add    $0x18,%rsp
  4010ac:	c3                   	retq   

00000000004010ad <phase_4>:
  4010ad:	48 83 ec 18          	sub    $0x18,%rsp

  4010b1:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx        #rcx = 输入2
  4010b6:	48 8d 54 24 14       	lea    0x14(%rsp),%rdx        #rdx = 输入1
  4010bb:	be 70 27 40 00       	mov    $0x402770,%esi         #esi = 0x402770
  4010c0:	b8 00 00 00 00       	mov    $0x0,%eax              #eax = 0
  4010c5:	e8 76 fa ff ff       	callq  400b40 <sscanf@plt>
  4010ca:	83 f8 02             	cmp    $0x2,%eax              #eax 和 2
  4010cd:	75 0d                	jne    4010dc <phase_4+0x2f>  #不相等就爆炸 两个数
  4010cf:	8b 44 24 14          	mov    0x14(%rsp),%eax        #eax = 输入1
  4010d3:	85 c0                	test   %eax,%eax              #AND eax, eax
  4010d5:	78 05                	js     4010dc <phase_4+0x2f>  #<0就爆炸 输入1>0
  4010d7:	83 f8 0e             	cmp    $0xe,%eax              #eax 和 0xe
  4010da:	7e 05                	jle    4010e1 <phase_4+0x34>  #<= 输入1<=14
  4010dc:	e8 0c 03 00 00       	callq  4013ed <explode_bomb>
  4010e1:	8b 7c 24 14          	mov    0x14(%rsp),%edi        #edi = 输入1
  4010e5:	ba 0e 00 00 00       	mov    $0xe,%edx              #edx = 14
  4010ea:	be 00 00 00 00       	mov    $0x0,%esi              #esi = 0
  4010ef:	e8 2c fd ff ff       	callq  400e20 <func4>         #
  4010f4:	83 f8 06             	cmp    $0x6,%eax              #eax 和 6
  4010f7:	75 07                	jne    401100 <phase_4+0x53>  #不相等就爆炸 func4输出必须为6
  4010f9:	83 7c 24 10 06       	cmpl   $0x6,0x10(%rsp)        #输入2 和 6
  4010fe:	74 05                	je     401105 <phase_4+0x58>  #输入2 必须为 6
  401100:	e8 e8 02 00 00       	callq  4013ed <explode_bomb>

  401105:	48 83 c4 18          	add    $0x18,%rsp
  401109:	c3                   	retq   

000000000040110a <phase_3>:
  40110a:	48 83 ec 18          	sub    $0x18,%rsp                #rsp -= 18
  40110e:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx           #rcx = rsp + 10
  401113:	48 8d 54 24 14       	lea    0x14(%rsp),%rdx           #rdx = rsp + 14
  401118:	be 70 27 40 00       	mov    $0x402770,%esi            #esi = 0x402770
  40111d:	b8 00 00 00 00       	mov    $0x0,%eax                 #eax = 0
  401122:	e8 19 fa ff ff       	callq  400b40 <sscanf@plt>
  401127:	83 f8 01             	cmp    $0x1,%eax                 #eax > 1
  40112a:	7f 05                	jg     401131 <phase_3+0x27>
  40112c:	e8 bc 02 00 00       	callq  4013ed <explode_bomb>

  401131:	83 7c 24 14 07       	cmpl   $0x7,0x14(%rsp)           #0x14(%rsp)必须小于7
  401136:	77 6b                	ja     4011a3 <phase_3+0x99>     #转 4011a3引爆

  401138:	8b 44 24 14          	mov    0x14(%rsp),%eax           #eax = 0x14(%rsp)
  40113c:	ff 24 c5 80 26 40 00 	jmpq   *0x402680(,%rax,8)        #转 0x402680 + 8*rax

  401143:	b8 00 00 00 00       	mov    $0x0,%eax                 #eax = 0
  401148:	eb 52                	jmp    40119c <phase_3+0x92>     #转40119c

  40114a:	b8 00 00 00 00       	mov    $0x0,%eax                 #eax = 0
  40114f:	90                   	nop                          
  401150:	eb 45                	jmp    401197 <phase_3+0x8d>     #转401197

  401152:	b8 00 00 00 00       	mov    $0x0,%eax                 #eax = 0
  401157:	eb 39                	jmp    401192 <phase_3+0x88>     #转401192

  401159:	b8 00 00 00 00       	mov    $0x0,%eax                 #eax = 0
  40115e:	66 90                	xchg   %ax,%ax                   #交换 ax ax
  401160:	eb 2b                	jmp    40118d <phase_3+0x83>     #转40118d

  401162:	b8 00 00 00 00       	mov    $0x0,%eax                 #eax = 0
  401167:	eb 1f                	jmp    401188 <phase_3+0x7e>     #转401188

  401169:	b8 00 00 00 00       	mov    $0x0,%eax                 #eax = 0
  40116e:	66 90                	xchg   %ax,%ax                   #交换 ax ax
  401170:	eb 11                	jmp    401183 <phase_3+0x79>     #转401183

  401172:	b8 2e 03 00 00       	mov    $0x32e,%eax               #eax = 0x32e
  401177:	eb 05                	jmp    40117e <phase_3+0x74>     #转40117e

  401179:	b8 00 00 00 00       	mov    $0x0,%eax                 #eax = 0
  40117e:	2d dc 02 00 00       	sub    $0x2dc,%eax

  401183:	05 c4 02 00 00       	add    $0x2c4,%eax               #0 + 708
  401188:	2d 43 03 00 00       	sub    $0x343,%eax               #-835 = -127
  40118d:	05 43 03 00 00       	add    $0x343,%eax
  401192:	2d 43 03 00 00       	sub    $0x343,%eax
  401197:	05 43 03 00 00       	add    $0x343,%eax
  40119c:	2d 43 03 00 00       	sub    $0x343,%eax
  4011a1:	eb 0a                	jmp    4011ad <phase_3+0xa3>

  4011a3:	e8 45 02 00 00       	callq  4013ed <explode_bomb>

  4011a8:	b8 00 00 00 00       	mov    $0x0,%eax

  4011ad:	83 7c 24 14 05       	cmpl   $0x5,0x14(%rsp)
  4011b2:	7f 06                	jg     4011ba <phase_3+0xb0> 

  4011b4:	3b 44 24 10          	cmp    0x10(%rsp),%eax
  4011b8:	74 05                	je     4011bf <phase_3+0xb5>
  4011ba:	e8 2e 02 00 00       	callq  4013ed <explode_bomb>

  4011bf:	48 83 c4 18          	add    $0x18,%rsp
  4011c3:	c3                   	retq   

00000000004011c4 <phase_1>:
  4011c4:	48 83 ec 08          	sub    $0x8,%rsp
  4011c8:	be 48 26 40 00       	mov    $0x402648,%esi
  4011cd:	e8 3d 00 00 00       	callq  40120f <strings_not_equal>
  4011d2:	85 c0                	test   %eax,%eax
  4011d4:	74 05                	je     4011db <phase_1+0x17>
  4011d6:	e8 12 02 00 00       	callq  4013ed <explode_bomb>
  4011db:	48 83 c4 08          	add    $0x8,%rsp
  4011df:	90                   	nop
  4011e0:	c3                   	retq   
  4011e1:	90                   	nop
  4011e2:	90                   	nop
  4011e3:	90                   	nop
  4011e4:	90                   	nop
  4011e5:	90                   	nop
  4011e6:	90                   	nop
  4011e7:	90                   	nop
  4011e8:	90                   	nop
  4011e9:	90                   	nop
  4011ea:	90                   	nop
  4011eb:	90                   	nop
  4011ec:	90                   	nop
  4011ed:	90                   	nop
  4011ee:	90                   	nop
  4011ef:	90                   	nop

00000000004011f0 <string_length>:
  4011f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f5:	80 3f 00             	cmpb   $0x0,(%rdi)
  4011f8:	74 13                	je     40120d <string_length+0x1d>
  4011fa:	48 89 fa             	mov    %rdi,%rdx
  4011fd:	0f b6 42 01          	movzbl 0x1(%rdx),%eax
  401201:	48 83 c2 01          	add    $0x1,%rdx
  401205:	84 c0                	test   %al,%al
  401207:	75 f4                	jne    4011fd <string_length+0xd>
  401209:	89 d0                	mov    %edx,%eax
  40120b:	29 f8                	sub    %edi,%eax
  40120d:	f3 c3                	repz retq 

000000000040120f <strings_not_equal>:
  40120f:	41 54                	push   %r12
  401211:	55                   	push   %rbp
  401212:	53                   	push   %rbx
  401213:	48 89 fd             	mov    %rdi,%rbp
  401216:	49 89 f4             	mov    %rsi,%r12
  401219:	e8 d2 ff ff ff       	callq  4011f0 <string_length>
  40121e:	89 c3                	mov    %eax,%ebx
  401220:	4c 89 e7             	mov    %r12,%rdi
  401223:	e8 c8 ff ff ff       	callq  4011f0 <string_length>
  401228:	39 c3                	cmp    %eax,%ebx
  40122a:	75 32                	jne    40125e <strings_not_equal+0x4f>
  40122c:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  401230:	84 c0                	test   %al,%al
  401232:	74 31                	je     401265 <strings_not_equal+0x56>
  401234:	48 89 e9             	mov    %rbp,%rcx
  401237:	4c 89 e2             	mov    %r12,%rdx
  40123a:	41 3a 04 24          	cmp    (%r12),%al
  40123e:	74 13                	je     401253 <strings_not_equal+0x44>
  401240:	eb 1c                	jmp    40125e <strings_not_equal+0x4f>
  401242:	0f b6 42 01          	movzbl 0x1(%rdx),%eax
  401246:	48 83 c1 01          	add    $0x1,%rcx
  40124a:	48 83 c2 01          	add    $0x1,%rdx
  40124e:	40 38 c6             	cmp    %al,%sil
  401251:	75 0b                	jne    40125e <strings_not_equal+0x4f>
  401253:	0f b6 71 01          	movzbl 0x1(%rcx),%esi
  401257:	40 84 f6             	test   %sil,%sil
  40125a:	75 e6                	jne    401242 <strings_not_equal+0x33>
  40125c:	eb 07                	jmp    401265 <strings_not_equal+0x56>
  40125e:	b8 01 00 00 00       	mov    $0x1,%eax
  401263:	eb 05                	jmp    40126a <strings_not_equal+0x5b>
  401265:	b8 00 00 00 00       	mov    $0x0,%eax
  40126a:	5b                   	pop    %rbx
  40126b:	5d                   	pop    %rbp
  40126c:	41 5c                	pop    %r12
  40126e:	66 90                	xchg   %ax,%ax
  401270:	c3                   	retq   

0000000000401271 <initialize_bomb_solve>:
  401271:	f3 c3                	repz retq 

0000000000401273 <invalid_phase>:
  401273:	48 83 ec 08          	sub    $0x8,%rsp
  401277:	48 89 fe             	mov    %rdi,%rsi
  40127a:	bf 00 27 40 00       	mov    $0x402700,%edi
  40127f:	b8 00 00 00 00       	mov    $0x0,%eax
  401284:	e8 c7 f7 ff ff       	callq  400a50 <printf@plt>
  401289:	bf 08 00 00 00       	mov    $0x8,%edi
  40128e:	e8 0d f8 ff ff       	callq  400aa0 <exit@plt>

0000000000401293 <send_msg>:
  401293:	55                   	push   %rbp
  401294:	53                   	push   %rbx
  401295:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  40129c:	89 fe                	mov    %edi,%esi
  40129e:	44 8b 0d 1f 2e 20 00 	mov    0x202e1f(%rip),%r9d        # 6040c4 <num_input_strings>
  4012a5:	49 63 c1             	movslq %r9d,%rax
  4012a8:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4012ac:	48 c1 e0 04          	shl    $0x4,%rax
  4012b0:	48 8d 90 90 40 60 00 	lea    0x604090(%rax),%rdx
  4012b7:	48 89 d7             	mov    %rdx,%rdi
  4012ba:	fc                   	cld    
  4012bb:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4012c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c7:	f2 ae                	repnz scas %es:(%rdi),%al
  4012c9:	48 f7 d1             	not    %rcx
  4012cc:	48 83 c1 63          	add    $0x63,%rcx
  4012d0:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  4012d7:	76 14                	jbe    4012ed <send_msg+0x5a>
  4012d9:	bf e8 28 40 00       	mov    $0x4028e8,%edi
  4012de:	e8 6d f7 ff ff       	callq  400a50 <printf@plt>
  4012e3:	bf 08 00 00 00       	mov    $0x8,%edi
  4012e8:	e8 b3 f7 ff ff       	callq  400aa0 <exit@plt>
  4012ed:	85 f6                	test   %esi,%esi
  4012ef:	41 b8 19 27 40 00    	mov    $0x402719,%r8d
  4012f5:	b8 11 27 40 00       	mov    $0x402711,%eax
  4012fa:	4c 0f 45 c0          	cmovne %rax,%r8
  4012fe:	48 8d 9c 24 10 20 00 	lea    0x2010(%rsp),%rbx
  401305:	00 
  401306:	48 89 14 24          	mov    %rdx,(%rsp)
  40130a:	b9 e0 37 60 00       	mov    $0x6037e0,%ecx
  40130f:	8b 15 ab 20 20 00    	mov    0x2020ab(%rip),%edx        # 6033c0 <bomb_id>
  401315:	be 22 27 40 00       	mov    $0x402722,%esi
  40131a:	48 89 df             	mov    %rbx,%rdi
  40131d:	b8 00 00 00 00       	mov    $0x0,%eax
  401322:	e8 f9 f7 ff ff       	callq  400b20 <sprintf@plt>
  401327:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
  40132c:	48 89 e9             	mov    %rbp,%rcx
  40132f:	ba 00 00 00 00       	mov    $0x0,%edx
  401334:	48 89 de             	mov    %rbx,%rsi
  401337:	bf e0 33 60 00       	mov    $0x6033e0,%edi
  40133c:	e8 cf 0f 00 00       	callq  402310 <driver_post>
  401341:	85 c0                	test   %eax,%eax
  401343:	79 12                	jns    401357 <send_msg+0xc4>
  401345:	48 89 ef             	mov    %rbp,%rdi
  401348:	e8 43 f7 ff ff       	callq  400a90 <puts@plt>
  40134d:	bf 00 00 00 00       	mov    $0x0,%edi
  401352:	e8 49 f7 ff ff       	callq  400aa0 <exit@plt>
  401357:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  40135e:	5b                   	pop    %rbx
  40135f:	5d                   	pop    %rbp
  401360:	c3                   	retq   

0000000000401361 <phase_defused>:
  401361:	53                   	push   %rbx
  401362:	48 83 ec 60          	sub    $0x60,%rsp
  401366:	bf 01 00 00 00       	mov    $0x1,%edi
  40136b:	e8 23 ff ff ff       	callq  401293 <send_msg>
  401370:	83 3d 4d 2d 20 00 06 	cmpl   $0x6,0x202d4d(%rip)        # 6040c4 <num_input_strings>
  401377:	75 6e                	jne    4013e7 <phase_defused+0x86>
  401379:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  40137e:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  401383:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401388:	49 89 d8             	mov    %rbx,%r8
  40138b:	be 31 27 40 00       	mov    $0x402731,%esi
  401390:	bf d0 41 60 00       	mov    $0x6041d0,%edi
  401395:	b8 00 00 00 00       	mov    $0x0,%eax
  40139a:	e8 a1 f7 ff ff       	callq  400b40 <sscanf@plt>
  40139f:	83 f8 03             	cmp    $0x3,%eax
  4013a2:	75 2f                	jne    4013d3 <phase_defused+0x72>
  4013a4:	be 3a 27 40 00       	mov    $0x40273a,%esi
  4013a9:	48 89 df             	mov    %rbx,%rdi
  4013ac:	e8 5e fe ff ff       	callq  40120f <strings_not_equal>
  4013b1:	85 c0                	test   %eax,%eax
  4013b3:	75 1e                	jne    4013d3 <phase_defused+0x72>
  4013b5:	bf 10 29 40 00       	mov    $0x402910,%edi
  4013ba:	e8 d1 f6 ff ff       	callq  400a90 <puts@plt>
  4013bf:	bf 38 29 40 00       	mov    $0x402938,%edi
  4013c4:	e8 c7 f6 ff ff       	callq  400a90 <puts@plt>
  4013c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4013ce:	e8 bb fa ff ff       	callq  400e8e <secret_phase>
  4013d3:	bf 70 29 40 00       	mov    $0x402970,%edi
  4013d8:	e8 b3 f6 ff ff       	callq  400a90 <puts@plt>
  4013dd:	bf a0 29 40 00       	mov    $0x4029a0,%edi
  4013e2:	e8 a9 f6 ff ff       	callq  400a90 <puts@plt>
  4013e7:	48 83 c4 60          	add    $0x60,%rsp
  4013eb:	5b                   	pop    %rbx
  4013ec:	c3                   	retq   

00000000004013ed <explode_bomb>:
  4013ed:	48 83 ec 08          	sub    $0x8,%rsp
  4013f1:	bf 44 27 40 00       	mov    $0x402744,%edi
  4013f6:	e8 95 f6 ff ff       	callq  400a90 <puts@plt>
  4013fb:	bf 4d 27 40 00       	mov    $0x40274d,%edi
  401400:	e8 8b f6 ff ff       	callq  400a90 <puts@plt>
  401405:	bf 00 00 00 00       	mov    $0x0,%edi
  40140a:	e8 84 fe ff ff       	callq  401293 <send_msg>
  40140f:	bf e8 29 40 00       	mov    $0x4029e8,%edi
  401414:	e8 77 f6 ff ff       	callq  400a90 <puts@plt>
  401419:	bf 08 00 00 00       	mov    $0x8,%edi
  40141e:	e8 7d f6 ff ff       	callq  400aa0 <exit@plt>

0000000000401423 <read_six_numbers>:
  401423:	48 83 ec 18          	sub    $0x18,%rsp
  401427:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  40142b:	48 8d 46 14          	lea    0x14(%rsi),%rax
  40142f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401434:	48 8d 46 10          	lea    0x10(%rsi),%rax
  401438:	48 89 04 24          	mov    %rax,(%rsp)
  40143c:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401440:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401444:	48 89 f2             	mov    %rsi,%rdx
  401447:	be 64 27 40 00       	mov    $0x402764,%esi
  40144c:	b8 00 00 00 00       	mov    $0x0,%eax
  401451:	e8 ea f6 ff ff       	callq  400b40 <sscanf@plt>
  401456:	83 f8 05             	cmp    $0x5,%eax
  401459:	7f 05                	jg     401460 <read_six_numbers+0x3d>
  40145b:	e8 8d ff ff ff       	callq  4013ed <explode_bomb>
  401460:	48 83 c4 18          	add    $0x18,%rsp
  401464:	c3                   	retq   

0000000000401465 <blank_line>:
  401465:	55                   	push   %rbp
  401466:	53                   	push   %rbx
  401467:	48 83 ec 08          	sub    $0x8,%rsp
  40146b:	48 89 fd             	mov    %rdi,%rbp
  40146e:	eb 1e                	jmp    40148e <blank_line+0x29>
  401470:	e8 9b f6 ff ff       	callq  400b10 <__ctype_b_loc@plt>
  401475:	48 0f be d3          	movsbq %bl,%rdx
  401479:	48 8b 00             	mov    (%rax),%rax
  40147c:	f6 44 50 01 20       	testb  $0x20,0x1(%rax,%rdx,2)
  401481:	75 07                	jne    40148a <blank_line+0x25>
  401483:	b8 00 00 00 00       	mov    $0x0,%eax
  401488:	eb 11                	jmp    40149b <blank_line+0x36>
  40148a:	48 83 c5 01          	add    $0x1,%rbp
  40148e:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401492:	84 db                	test   %bl,%bl
  401494:	75 da                	jne    401470 <blank_line+0xb>
  401496:	b8 01 00 00 00       	mov    $0x1,%eax
  40149b:	48 83 c4 08          	add    $0x8,%rsp
  40149f:	5b                   	pop    %rbx
  4014a0:	5d                   	pop    %rbp
  4014a1:	c3                   	retq   

00000000004014a2 <skip>:
  4014a2:	53                   	push   %rbx
  4014a3:	48 63 3d 1a 2c 20 00 	movslq 0x202c1a(%rip),%rdi        # 6040c4 <num_input_strings>
  4014aa:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
  4014ae:	48 c1 e7 04          	shl    $0x4,%rdi
  4014b2:	48 81 c7 e0 40 60 00 	add    $0x6040e0,%rdi
  4014b9:	48 8b 15 08 2c 20 00 	mov    0x202c08(%rip),%rdx        # 6040c8 <infile>
  4014c0:	be 50 00 00 00       	mov    $0x50,%esi
  4014c5:	e8 26 f6 ff ff       	callq  400af0 <fgets@plt>
  4014ca:	48 89 c3             	mov    %rax,%rbx
  4014cd:	48 85 c0             	test   %rax,%rax
  4014d0:	74 0c                	je     4014de <skip+0x3c>
  4014d2:	48 89 c7             	mov    %rax,%rdi
  4014d5:	e8 8b ff ff ff       	callq  401465 <blank_line>
  4014da:	85 c0                	test   %eax,%eax
  4014dc:	75 c5                	jne    4014a3 <skip+0x1>
  4014de:	48 89 d8             	mov    %rbx,%rax
  4014e1:	5b                   	pop    %rbx
  4014e2:	c3                   	retq   

00000000004014e3 <read_line>:
  4014e3:	53                   	push   %rbx
  4014e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4014e9:	e8 b4 ff ff ff       	callq  4014a2 <skip>
  4014ee:	48 85 c0             	test   %rax,%rax
  4014f1:	75 6e                	jne    401561 <read_line+0x7e>
  4014f3:	48 8b 05 a6 2b 20 00 	mov    0x202ba6(%rip),%rax        # 6040a0 <__bss_start>
  4014fa:	48 39 05 c7 2b 20 00 	cmp    %rax,0x202bc7(%rip)        # 6040c8 <infile>
  401501:	75 14                	jne    401517 <read_line+0x34>
  401503:	bf 76 27 40 00       	mov    $0x402776,%edi
  401508:	e8 83 f5 ff ff       	callq  400a90 <puts@plt>
  40150d:	bf 08 00 00 00       	mov    $0x8,%edi
  401512:	e8 89 f5 ff ff       	callq  400aa0 <exit@plt>
  401517:	bf 94 27 40 00       	mov    $0x402794,%edi
  40151c:	e8 7f f6 ff ff       	callq  400ba0 <getenv@plt>
  401521:	48 85 c0             	test   %rax,%rax
  401524:	74 0a                	je     401530 <read_line+0x4d>
  401526:	bf 00 00 00 00       	mov    $0x0,%edi
  40152b:	e8 70 f5 ff ff       	callq  400aa0 <exit@plt>
  401530:	48 8b 05 69 2b 20 00 	mov    0x202b69(%rip),%rax        # 6040a0 <__bss_start>
  401537:	48 89 05 8a 2b 20 00 	mov    %rax,0x202b8a(%rip)        # 6040c8 <infile>
  40153e:	b8 00 00 00 00       	mov    $0x0,%eax
  401543:	e8 5a ff ff ff       	callq  4014a2 <skip>
  401548:	48 85 c0             	test   %rax,%rax
  40154b:	75 14                	jne    401561 <read_line+0x7e>
  40154d:	bf 76 27 40 00       	mov    $0x402776,%edi
  401552:	e8 39 f5 ff ff       	callq  400a90 <puts@plt>
  401557:	bf 00 00 00 00       	mov    $0x0,%edi
  40155c:	e8 3f f5 ff ff       	callq  400aa0 <exit@plt>
  401561:	48 63 05 5c 2b 20 00 	movslq 0x202b5c(%rip),%rax        # 6040c4 <num_input_strings>
  401568:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40156c:	48 c1 e0 04          	shl    $0x4,%rax
  401570:	48 8d b8 e0 40 60 00 	lea    0x6040e0(%rax),%rdi
  401577:	fc                   	cld    
  401578:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40157f:	b8 00 00 00 00       	mov    $0x0,%eax
  401584:	f2 ae                	repnz scas %es:(%rdi),%al
  401586:	48 f7 d1             	not    %rcx
  401589:	8d 59 ff             	lea    -0x1(%rcx),%ebx
  40158c:	83 fb 4e             	cmp    $0x4e,%ebx
  40158f:	7e 50                	jle    4015e1 <read_line+0xfe>
  401591:	bf 9f 27 40 00       	mov    $0x40279f,%edi
  401596:	e8 f5 f4 ff ff       	callq  400a90 <puts@plt>
  40159b:	8b 05 23 2b 20 00    	mov    0x202b23(%rip),%eax        # 6040c4 <num_input_strings>
  4015a1:	8d 50 01             	lea    0x1(%rax),%edx
  4015a4:	89 15 1a 2b 20 00    	mov    %edx,0x202b1a(%rip)        # 6040c4 <num_input_strings>
  4015aa:	48 98                	cltq   
  4015ac:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4015b0:	48 c1 e0 04          	shl    $0x4,%rax
  4015b4:	c7 80 e0 40 60 00 2a 	movl   $0x742a2a2a,0x6040e0(%rax)
  4015bb:	2a 2a 74 
  4015be:	c7 80 e4 40 60 00 72 	movl   $0x636e7572,0x6040e4(%rax)
  4015c5:	75 6e 63 
  4015c8:	c7 80 e8 40 60 00 61 	movl   $0x64657461,0x6040e8(%rax)
  4015cf:	74 65 64 
  4015d2:	c7 80 ec 40 60 00 2a 	movl   $0x2a2a2a,0x6040ec(%rax)
  4015d9:	2a 2a 00 
  4015dc:	e8 0c fe ff ff       	callq  4013ed <explode_bomb>
  4015e1:	8b 0d dd 2a 20 00    	mov    0x202add(%rip),%ecx        # 6040c4 <num_input_strings>
  4015e7:	8d 53 ff             	lea    -0x1(%rbx),%edx
  4015ea:	48 63 d2             	movslq %edx,%rdx
  4015ed:	48 63 c1             	movslq %ecx,%rax
  4015f0:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4015f4:	48 c1 e0 04          	shl    $0x4,%rax
  4015f8:	48 05 e0 40 60 00    	add    $0x6040e0,%rax
  4015fe:	c6 04 10 00          	movb   $0x0,(%rax,%rdx,1)
  401602:	83 c1 01             	add    $0x1,%ecx
  401605:	89 0d b9 2a 20 00    	mov    %ecx,0x202ab9(%rip)        # 6040c4 <num_input_strings>
  40160b:	5b                   	pop    %rbx
  40160c:	c3                   	retq   

000000000040160d <initialize_bomb>:
  40160d:	55                   	push   %rbp
  40160e:	53                   	push   %rbx
  40160f:	48 81 ec 48 20 00 00 	sub    $0x2048,%rsp
  401616:	be cf 16 40 00       	mov    $0x4016cf,%esi
  40161b:	bf 02 00 00 00       	mov    $0x2,%edi
  401620:	e8 5b f5 ff ff       	callq  400b80 <signal@plt>
  401625:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  40162c:	00 
  40162d:	be 40 00 00 00       	mov    $0x40,%esi
  401632:	e8 39 f5 ff ff       	callq  400b70 <gethostname@plt>
  401637:	85 c0                	test   %eax,%eax
  401639:	75 1b                	jne    401656 <initialize_bomb+0x49>
  40163b:	48 8b 3d de 27 20 00 	mov    0x2027de(%rip),%rdi        # 603e20 <host_table>
  401642:	bb 00 00 00 00       	mov    $0x0,%ebx
  401647:	48 8d ac 24 00 20 00 	lea    0x2000(%rsp),%rbp
  40164e:	00 
  40164f:	48 85 ff             	test   %rdi,%rdi
  401652:	75 16                	jne    40166a <initialize_bomb+0x5d>
  401654:	eb 5b                	jmp    4016b1 <initialize_bomb+0xa4>
  401656:	bf 10 2a 40 00       	mov    $0x402a10,%edi
  40165b:	e8 30 f4 ff ff       	callq  400a90 <puts@plt>
  401660:	bf 08 00 00 00       	mov    $0x8,%edi
  401665:	e8 36 f4 ff ff       	callq  400aa0 <exit@plt>
  40166a:	48 89 ee             	mov    %rbp,%rsi
  40166d:	e8 3e f4 ff ff       	callq  400ab0 <strcasecmp@plt>
  401672:	85 c0                	test   %eax,%eax
  401674:	74 13                	je     401689 <initialize_bomb+0x7c>
  401676:	48 8b 3c dd 28 3e 60 	mov    0x603e28(,%rbx,8),%rdi
  40167d:	00 
  40167e:	48 83 c3 01          	add    $0x1,%rbx
  401682:	48 85 ff             	test   %rdi,%rdi
  401685:	74 2a                	je     4016b1 <initialize_bomb+0xa4>
  401687:	eb e1                	jmp    40166a <initialize_bomb+0x5d>
  401689:	48 89 e7             	mov    %rsp,%rdi
  40168c:	e8 8f 00 00 00       	callq  401720 <init_driver>
  401691:	85 c0                	test   %eax,%eax
  401693:	79 30                	jns    4016c5 <initialize_bomb+0xb8>
  401695:	48 89 e6             	mov    %rsp,%rsi
  401698:	bf ba 27 40 00       	mov    $0x4027ba,%edi
  40169d:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a2:	e8 a9 f3 ff ff       	callq  400a50 <printf@plt>
  4016a7:	bf 08 00 00 00       	mov    $0x8,%edi
  4016ac:	e8 ef f3 ff ff       	callq  400aa0 <exit@plt>
  4016b1:	bf 48 2a 40 00       	mov    $0x402a48,%edi
  4016b6:	e8 d5 f3 ff ff       	callq  400a90 <puts@plt>
  4016bb:	bf 08 00 00 00       	mov    $0x8,%edi
  4016c0:	e8 db f3 ff ff       	callq  400aa0 <exit@plt>
  4016c5:	48 81 c4 48 20 00 00 	add    $0x2048,%rsp
  4016cc:	5b                   	pop    %rbx
  4016cd:	5d                   	pop    %rbp
  4016ce:	c3                   	retq   

00000000004016cf <sig_handler>:
  4016cf:	48 83 ec 08          	sub    $0x8,%rsp
  4016d3:	bf 80 2a 40 00       	mov    $0x402a80,%edi
  4016d8:	e8 b3 f3 ff ff       	callq  400a90 <puts@plt>
  4016dd:	bf 03 00 00 00       	mov    $0x3,%edi
  4016e2:	e8 69 f4 ff ff       	callq  400b50 <sleep@plt>
  4016e7:	bf d4 27 40 00       	mov    $0x4027d4,%edi
  4016ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4016f1:	e8 5a f3 ff ff       	callq  400a50 <printf@plt>
  4016f6:	48 8b 3d b3 29 20 00 	mov    0x2029b3(%rip),%rdi        # 6040b0 <stdout@@GLIBC_2.2.5>
  4016fd:	e8 fe f4 ff ff       	callq  400c00 <fflush@plt>
  401702:	bf 01 00 00 00       	mov    $0x1,%edi
  401707:	e8 44 f4 ff ff       	callq  400b50 <sleep@plt>
  40170c:	bf dc 27 40 00       	mov    $0x4027dc,%edi
  401711:	e8 7a f3 ff ff       	callq  400a90 <puts@plt>
  401716:	bf 10 00 00 00       	mov    $0x10,%edi
  40171b:	e8 80 f3 ff ff       	callq  400aa0 <exit@plt>

0000000000401720 <init_driver>:
  401720:	41 54                	push   %r12
  401722:	55                   	push   %rbp
  401723:	53                   	push   %rbx
  401724:	48 83 ec 10          	sub    $0x10,%rsp
  401728:	48 89 fd             	mov    %rdi,%rbp
  40172b:	be 01 00 00 00       	mov    $0x1,%esi
  401730:	bf 0d 00 00 00       	mov    $0xd,%edi
  401735:	e8 46 f4 ff ff       	callq  400b80 <signal@plt>
  40173a:	be 01 00 00 00       	mov    $0x1,%esi
  40173f:	bf 1d 00 00 00       	mov    $0x1d,%edi
  401744:	e8 37 f4 ff ff       	callq  400b80 <signal@plt>
  401749:	be 01 00 00 00       	mov    $0x1,%esi
  40174e:	bf 1d 00 00 00       	mov    $0x1d,%edi
  401753:	e8 28 f4 ff ff       	callq  400b80 <signal@plt>
  401758:	ba 00 00 00 00       	mov    $0x0,%edx
  40175d:	be 01 00 00 00       	mov    $0x1,%esi
  401762:	bf 02 00 00 00       	mov    $0x2,%edi
  401767:	e8 24 f4 ff ff       	callq  400b90 <socket@plt>
  40176c:	41 89 c4             	mov    %eax,%r12d
  40176f:	85 c0                	test   %eax,%eax
  401771:	79 4f                	jns    4017c2 <init_driver+0xa2>
  401773:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  40177a:	c7 45 04 72 3a 20 43 	movl   $0x43203a72,0x4(%rbp)
  401781:	c7 45 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%rbp)
  401788:	c7 45 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%rbp)
  40178f:	c7 45 10 61 62 6c 65 	movl   $0x656c6261,0x10(%rbp)
  401796:	c7 45 14 20 74 6f 20 	movl   $0x206f7420,0x14(%rbp)
  40179d:	c7 45 18 63 72 65 61 	movl   $0x61657263,0x18(%rbp)
  4017a4:	c7 45 1c 74 65 20 73 	movl   $0x73206574,0x1c(%rbp)
  4017ab:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4017b2:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4017b8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4017bd:	e9 27 01 00 00       	jmpq   4018e9 <init_driver+0x1c9>
  4017c2:	bf d8 2a 40 00       	mov    $0x402ad8,%edi
  4017c7:	e8 b4 f2 ff ff       	callq  400a80 <gethostbyname@plt>
  4017cc:	48 85 c0             	test   %rax,%rax
  4017cf:	75 69                	jne    40183a <init_driver+0x11a>
  4017d1:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  4017d8:	c7 45 04 72 3a 20 44 	movl   $0x44203a72,0x4(%rbp)
  4017df:	c7 45 08 4e 53 20 69 	movl   $0x6920534e,0x8(%rbp)
  4017e6:	c7 45 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%rbp)
  4017ed:	c7 45 10 61 62 6c 65 	movl   $0x656c6261,0x10(%rbp)
  4017f4:	c7 45 14 20 74 6f 20 	movl   $0x206f7420,0x14(%rbp)
  4017fb:	c7 45 18 72 65 73 6f 	movl   $0x6f736572,0x18(%rbp)
  401802:	c7 45 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%rbp)
  401809:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  401810:	c7 45 24 65 72 20 61 	movl   $0x61207265,0x24(%rbp)
  401817:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40181e:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  401824:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  401828:	44 89 e7             	mov    %r12d,%edi
  40182b:	e8 40 f2 ff ff       	callq  400a70 <close@plt>
  401830:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401835:	e9 af 00 00 00       	jmpq   4018e9 <init_driver+0x1c9>
  40183a:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  401841:	00 
  401842:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  401849:	00 00 
  40184b:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  401851:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  401856:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40185a:	48 8b 40 18          	mov    0x18(%rax),%rax
  40185e:	48 8b 38             	mov    (%rax),%rdi
  401861:	e8 9a f2 ff ff       	callq  400b00 <bcopy@plt>
  401866:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  40186d:	ba 10 00 00 00       	mov    $0x10,%edx
  401872:	48 89 e6             	mov    %rsp,%rsi
  401875:	44 89 e7             	mov    %r12d,%edi
  401878:	e8 e3 f2 ff ff       	callq  400b60 <connect@plt>
  40187d:	85 c0                	test   %eax,%eax
  40187f:	79 51                	jns    4018d2 <init_driver+0x1b2>
  401881:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  401888:	c7 45 04 72 3a 20 55 	movl   $0x55203a72,0x4(%rbp)
  40188f:	c7 45 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%rbp)
  401896:	c7 45 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%rbp)
  40189d:	c7 45 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%rbp)
  4018a4:	c7 45 14 6e 65 63 74 	movl   $0x7463656e,0x14(%rbp)
  4018ab:	c7 45 18 20 74 6f 20 	movl   $0x206f7420,0x18(%rbp)
  4018b2:	c7 45 1c 73 65 72 76 	movl   $0x76726573,0x1c(%rbp)
  4018b9:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4018bf:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4018c3:	44 89 e7             	mov    %r12d,%edi
  4018c6:	e8 a5 f1 ff ff       	callq  400a70 <close@plt>
  4018cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4018d0:	eb 17                	jmp    4018e9 <init_driver+0x1c9>
  4018d2:	44 89 e7             	mov    %r12d,%edi
  4018d5:	e8 96 f1 ff ff       	callq  400a70 <close@plt>
  4018da:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4018e0:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4018e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e9:	48 83 c4 10          	add    $0x10,%rsp
  4018ed:	5b                   	pop    %rbx
  4018ee:	5d                   	pop    %rbp
  4018ef:	41 5c                	pop    %r12
  4018f1:	c3                   	retq   

00000000004018f2 <init_timeout>:
  4018f2:	53                   	push   %rbx
  4018f3:	89 fb                	mov    %edi,%ebx
  4018f5:	85 ff                	test   %edi,%edi
  4018f7:	74 1e                	je     401917 <init_timeout+0x25>
  4018f9:	be 88 23 40 00       	mov    $0x402388,%esi
  4018fe:	bf 0e 00 00 00       	mov    $0xe,%edi
  401903:	e8 78 f2 ff ff       	callq  400b80 <signal@plt>
  401908:	85 db                	test   %ebx,%ebx
  40190a:	bf 00 00 00 00       	mov    $0x0,%edi
  40190f:	0f 49 fb             	cmovns %ebx,%edi
  401912:	e8 99 f2 ff ff       	callq  400bb0 <alarm@plt>
  401917:	5b                   	pop    %rbx
  401918:	c3                   	retq   

0000000000401919 <rio_readlineb>:
  401919:	41 57                	push   %r15
  40191b:	41 56                	push   %r14
  40191d:	41 55                	push   %r13
  40191f:	41 54                	push   %r12
  401921:	55                   	push   %rbp
  401922:	53                   	push   %rbx
  401923:	48 83 ec 18          	sub    $0x18,%rsp
  401927:	48 89 fb             	mov    %rdi,%rbx
  40192a:	49 89 d7             	mov    %rdx,%r15
  40192d:	49 89 f5             	mov    %rsi,%r13
  401930:	49 89 f6             	mov    %rsi,%r14
  401933:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  401939:	48 83 fa 01          	cmp    $0x1,%rdx
  40193d:	77 3b                	ja     40197a <rio_readlineb+0x61>
  40193f:	e9 7e 00 00 00       	jmpq   4019c2 <rio_readlineb+0xa9>
  401944:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  401948:	ba 00 20 00 00       	mov    $0x2000,%edx
  40194d:	48 89 ee             	mov    %rbp,%rsi
  401950:	8b 3b                	mov    (%rbx),%edi
  401952:	e8 69 f1 ff ff       	callq  400ac0 <read@plt>
  401957:	89 43 04             	mov    %eax,0x4(%rbx)
  40195a:	85 c0                	test   %eax,%eax
  40195c:	79 14                	jns    401972 <rio_readlineb+0x59>
  40195e:	e8 5d f2 ff ff       	callq  400bc0 <__errno_location@plt>
  401963:	83 38 04             	cmpl   $0x4,(%rax)
  401966:	74 12                	je     40197a <rio_readlineb+0x61>
  401968:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40196f:	90                   	nop
  401970:	eb 67                	jmp    4019d9 <rio_readlineb+0xc0>
  401972:	85 c0                	test   %eax,%eax
  401974:	74 5e                	je     4019d4 <rio_readlineb+0xbb>
  401976:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40197a:	83 7b 04 00          	cmpl   $0x0,0x4(%rbx)
  40197e:	66 90                	xchg   %ax,%ax
  401980:	7e c2                	jle    401944 <rio_readlineb+0x2b>
  401982:	48 8b 43 08          	mov    0x8(%rbx),%rax
  401986:	0f b6 00             	movzbl (%rax),%eax
  401989:	88 44 24 17          	mov    %al,0x17(%rsp)
  40198d:	48 83 43 08 01       	addq   $0x1,0x8(%rbx)
  401992:	83 6b 04 01          	subl   $0x1,0x4(%rbx)
  401996:	43 88 44 2c ff       	mov    %al,-0x1(%r12,%r13,1)
  40199b:	49 83 c6 01          	add    $0x1,%r14
  40199f:	80 7c 24 17 0a       	cmpb   $0xa,0x17(%rsp)
  4019a4:	75 0f                	jne    4019b5 <rio_readlineb+0x9c>
  4019a6:	eb 23                	jmp    4019cb <rio_readlineb+0xb2>
  4019a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ad:	49 83 fc 01          	cmp    $0x1,%r12
  4019b1:	74 31                	je     4019e4 <rio_readlineb+0xcb>
  4019b3:	eb 16                	jmp    4019cb <rio_readlineb+0xb2>
  4019b5:	49 83 c4 01          	add    $0x1,%r12
  4019b9:	4d 39 fc             	cmp    %r15,%r12
  4019bc:	75 bc                	jne    40197a <rio_readlineb+0x61>
  4019be:	66 90                	xchg   %ax,%ax
  4019c0:	eb 09                	jmp    4019cb <rio_readlineb+0xb2>
  4019c2:	49 89 f6             	mov    %rsi,%r14
  4019c5:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  4019cb:	41 c6 06 00          	movb   $0x0,(%r14)
  4019cf:	4c 89 e0             	mov    %r12,%rax
  4019d2:	eb 10                	jmp    4019e4 <rio_readlineb+0xcb>
  4019d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4019d9:	85 c0                	test   %eax,%eax
  4019db:	74 cb                	je     4019a8 <rio_readlineb+0x8f>
  4019dd:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4019e4:	48 83 c4 18          	add    $0x18,%rsp
  4019e8:	5b                   	pop    %rbx
  4019e9:	5d                   	pop    %rbp
  4019ea:	41 5c                	pop    %r12
  4019ec:	41 5d                	pop    %r13
  4019ee:	41 5e                	pop    %r14
  4019f0:	41 5f                	pop    %r15
  4019f2:	c3                   	retq   

00000000004019f3 <submitr>:
  4019f3:	41 57                	push   %r15
  4019f5:	41 56                	push   %r14
  4019f7:	41 55                	push   %r13
  4019f9:	41 54                	push   %r12
  4019fb:	55                   	push   %rbp
  4019fc:	53                   	push   %rbx
  4019fd:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
  401a04:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  401a09:	89 f5                	mov    %esi,%ebp
  401a0b:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
  401a10:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  401a15:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  401a1a:	4d 89 cf             	mov    %r9,%r15
  401a1d:	4c 8b b4 24 b0 a0 00 	mov    0xa0b0(%rsp),%r14
  401a24:	00 
  401a25:	c7 84 24 4c 20 00 00 	movl   $0x0,0x204c(%rsp)
  401a2c:	00 00 00 00 
  401a30:	ba 00 00 00 00       	mov    $0x0,%edx
  401a35:	be 01 00 00 00       	mov    $0x1,%esi
  401a3a:	bf 02 00 00 00       	mov    $0x2,%edi
  401a3f:	e8 4c f1 ff ff       	callq  400b90 <socket@plt>
  401a44:	41 89 c5             	mov    %eax,%r13d
  401a47:	85 c0                	test   %eax,%eax
  401a49:	79 58                	jns    401aa3 <submitr+0xb0>
  401a4b:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401a52:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  401a59:	43 
  401a5a:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  401a61:	6e 
  401a62:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  401a69:	6e 
  401a6a:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401a71:	65 
  401a72:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401a79:	20 
  401a7a:	41 c7 46 18 63 72 65 	movl   $0x61657263,0x18(%r14)
  401a81:	61 
  401a82:	41 c7 46 1c 74 65 20 	movl   $0x73206574,0x1c(%r14)
  401a89:	73 
  401a8a:	41 c7 46 20 6f 63 6b 	movl   $0x656b636f,0x20(%r14)
  401a91:	65 
  401a92:	66 41 c7 46 24 74 00 	movw   $0x74,0x24(%r14)
  401a99:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401a9e:	e9 5b 08 00 00       	jmpq   4022fe <submitr+0x90b>
  401aa3:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  401aa8:	e8 d3 ef ff ff       	callq  400a80 <gethostbyname@plt>
  401aad:	48 85 c0             	test   %rax,%rax
  401ab0:	0f 85 85 00 00 00    	jne    401b3b <submitr+0x148>
  401ab6:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401abd:	41 c7 46 04 72 3a 20 	movl   $0x44203a72,0x4(%r14)
  401ac4:	44 
  401ac5:	41 c7 46 08 4e 53 20 	movl   $0x6920534e,0x8(%r14)
  401acc:	69 
  401acd:	41 c7 46 0c 73 20 75 	movl   $0x6e752073,0xc(%r14)
  401ad4:	6e 
  401ad5:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401adc:	65 
  401add:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401ae4:	20 
  401ae5:	41 c7 46 18 72 65 73 	movl   $0x6f736572,0x18(%r14)
  401aec:	6f 
  401aed:	41 c7 46 1c 6c 76 65 	movl   $0x2065766c,0x1c(%r14)
  401af4:	20 
  401af5:	41 c7 46 20 41 75 74 	movl   $0x6f747541,0x20(%r14)
  401afc:	6f 
  401afd:	41 c7 46 24 6c 61 62 	movl   $0x2062616c,0x24(%r14)
  401b04:	20 
  401b05:	41 c7 46 28 73 65 72 	movl   $0x76726573,0x28(%r14)
  401b0c:	76 
  401b0d:	41 c7 46 2c 65 72 20 	movl   $0x61207265,0x2c(%r14)
  401b14:	61 
  401b15:	41 c7 46 30 64 64 72 	movl   $0x65726464,0x30(%r14)
  401b1c:	65 
  401b1d:	66 41 c7 46 34 73 73 	movw   $0x7373,0x34(%r14)
  401b24:	41 c6 46 36 00       	movb   $0x0,0x36(%r14)
  401b29:	44 89 ef             	mov    %r13d,%edi
  401b2c:	e8 3f ef ff ff       	callq  400a70 <close@plt>
  401b31:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b36:	e9 c3 07 00 00       	jmpq   4022fe <submitr+0x90b>
  401b3b:	48 8d 9c 24 60 a0 00 	lea    0xa060(%rsp),%rbx
  401b42:	00 
  401b43:	48 c7 84 24 60 a0 00 	movq   $0x0,0xa060(%rsp)
  401b4a:	00 00 00 00 00 
  401b4f:	48 c7 84 24 68 a0 00 	movq   $0x0,0xa068(%rsp)
  401b56:	00 00 00 00 00 
  401b5b:	66 c7 84 24 60 a0 00 	movw   $0x2,0xa060(%rsp)
  401b62:	00 02 00 
  401b65:	48 8d 73 04          	lea    0x4(%rbx),%rsi
  401b69:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401b6d:	48 8b 40 18          	mov    0x18(%rax),%rax
  401b71:	48 8b 38             	mov    (%rax),%rdi
  401b74:	e8 87 ef ff ff       	callq  400b00 <bcopy@plt>
  401b79:	89 e8                	mov    %ebp,%eax
  401b7b:	66 c1 c8 08          	ror    $0x8,%ax
  401b7f:	66 89 84 24 62 a0 00 	mov    %ax,0xa062(%rsp)
  401b86:	00 
  401b87:	ba 10 00 00 00       	mov    $0x10,%edx
  401b8c:	48 89 de             	mov    %rbx,%rsi
  401b8f:	44 89 ef             	mov    %r13d,%edi
  401b92:	e8 c9 ef ff ff       	callq  400b60 <connect@plt>
  401b97:	85 c0                	test   %eax,%eax
  401b99:	79 75                	jns    401c10 <submitr+0x21d>
  401b9b:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401ba2:	41 c7 46 04 72 3a 20 	movl   $0x55203a72,0x4(%r14)
  401ba9:	55 
  401baa:	41 c7 46 08 6e 61 62 	movl   $0x6c62616e,0x8(%r14)
  401bb1:	6c 
  401bb2:	41 c7 46 0c 65 20 74 	movl   $0x6f742065,0xc(%r14)
  401bb9:	6f 
  401bba:	41 c7 46 10 20 63 6f 	movl   $0x6e6f6320,0x10(%r14)
  401bc1:	6e 
  401bc2:	41 c7 46 14 6e 65 63 	movl   $0x7463656e,0x14(%r14)
  401bc9:	74 
  401bca:	41 c7 46 18 20 74 6f 	movl   $0x206f7420,0x18(%r14)
  401bd1:	20 
  401bd2:	41 c7 46 1c 74 68 65 	movl   $0x20656874,0x1c(%r14)
  401bd9:	20 
  401bda:	41 c7 46 20 41 75 74 	movl   $0x6f747541,0x20(%r14)
  401be1:	6f 
  401be2:	41 c7 46 24 6c 61 62 	movl   $0x2062616c,0x24(%r14)
  401be9:	20 
  401bea:	41 c7 46 28 73 65 72 	movl   $0x76726573,0x28(%r14)
  401bf1:	76 
  401bf2:	66 41 c7 46 2c 65 72 	movw   $0x7265,0x2c(%r14)
  401bf9:	41 c6 46 2e 00       	movb   $0x0,0x2e(%r14)
  401bfe:	44 89 ef             	mov    %r13d,%edi
  401c01:	e8 6a ee ff ff       	callq  400a70 <close@plt>
  401c06:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c0b:	e9 ee 06 00 00       	jmpq   4022fe <submitr+0x90b>
  401c10:	48 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%rbx
  401c17:	4c 89 ff             	mov    %r15,%rdi
  401c1a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401c20:	fc                   	cld    
  401c21:	48 89 d9             	mov    %rbx,%rcx
  401c24:	44 89 c0             	mov    %r8d,%eax
  401c27:	f2 ae                	repnz scas %es:(%rdi),%al
  401c29:	48 89 ce             	mov    %rcx,%rsi
  401c2c:	48 f7 d6             	not    %rsi
  401c2f:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  401c34:	48 89 d9             	mov    %rbx,%rcx
  401c37:	f2 ae                	repnz scas %es:(%rdi),%al
  401c39:	48 89 ca             	mov    %rcx,%rdx
  401c3c:	48 f7 d2             	not    %rdx
  401c3f:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  401c44:	48 89 d9             	mov    %rbx,%rcx
  401c47:	f2 ae                	repnz scas %es:(%rdi),%al
  401c49:	49 89 c9             	mov    %rcx,%r9
  401c4c:	49 f7 d1             	not    %r9
  401c4f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401c54:	48 89 d9             	mov    %rbx,%rcx
  401c57:	f2 ae                	repnz scas %es:(%rdi),%al
  401c59:	48 f7 d1             	not    %rcx
  401c5c:	49 8d 44 11 7e       	lea    0x7e(%r9,%rdx,1),%rax
  401c61:	48 8d 4c 01 ff       	lea    -0x1(%rcx,%rax,1),%rcx
  401c66:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401c6b:	48 01 c1             	add    %rax,%rcx
  401c6e:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  401c75:	76 7e                	jbe    401cf5 <submitr+0x302>
  401c77:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401c7e:	41 c7 46 04 72 3a 20 	movl   $0x52203a72,0x4(%r14)
  401c85:	52 
  401c86:	41 c7 46 08 65 73 75 	movl   $0x6c757365,0x8(%r14)
  401c8d:	6c 
  401c8e:	41 c7 46 0c 74 20 73 	movl   $0x74732074,0xc(%r14)
  401c95:	74 
  401c96:	41 c7 46 10 72 69 6e 	movl   $0x676e6972,0x10(%r14)
  401c9d:	67 
  401c9e:	41 c7 46 14 20 74 6f 	movl   $0x6f6f7420,0x14(%r14)
  401ca5:	6f 
  401ca6:	41 c7 46 18 20 6c 61 	movl   $0x72616c20,0x18(%r14)
  401cad:	72 
  401cae:	41 c7 46 1c 67 65 2e 	movl   $0x202e6567,0x1c(%r14)
  401cb5:	20 
  401cb6:	41 c7 46 20 49 6e 63 	movl   $0x72636e49,0x20(%r14)
  401cbd:	72 
  401cbe:	41 c7 46 24 65 61 73 	movl   $0x65736165,0x24(%r14)
  401cc5:	65 
  401cc6:	41 c7 46 28 20 53 55 	movl   $0x42555320,0x28(%r14)
  401ccd:	42 
  401cce:	41 c7 46 2c 4d 49 54 	movl   $0x5254494d,0x2c(%r14)
  401cd5:	52 
  401cd6:	41 c7 46 30 5f 4d 41 	movl   $0x58414d5f,0x30(%r14)
  401cdd:	58 
  401cde:	41 c7 46 34 42 55 46 	movl   $0x465542,0x34(%r14)
  401ce5:	00 
  401ce6:	44 89 ef             	mov    %r13d,%edi
  401ce9:	e8 82 ed ff ff       	callq  400a70 <close@plt>
  401cee:	89 d8                	mov    %ebx,%eax
  401cf0:	e9 09 06 00 00       	jmpq   4022fe <submitr+0x90b>
  401cf5:	4c 8d a4 24 50 40 00 	lea    0x4050(%rsp),%r12
  401cfc:	00 
  401cfd:	ba 00 20 00 00       	mov    $0x2000,%edx
  401d02:	be 00 00 00 00       	mov    $0x0,%esi
  401d07:	4c 89 e7             	mov    %r12,%rdi
  401d0a:	e8 51 ed ff ff       	callq  400a60 <memset@plt>
  401d0f:	4c 89 fd             	mov    %r15,%rbp
  401d12:	4c 89 ff             	mov    %r15,%rdi
  401d15:	fc                   	cld    
  401d16:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401d1d:	b8 00 00 00 00       	mov    $0x0,%eax
  401d22:	f2 ae                	repnz scas %es:(%rdi),%al
  401d24:	48 f7 d1             	not    %rcx
  401d27:	8d 59 fe             	lea    -0x2(%rcx),%ebx
  401d2a:	83 fb ff             	cmp    $0xffffffffffffffff,%ebx
  401d2d:	0f 84 e6 04 00 00    	je     402219 <submitr+0x826>
  401d33:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  401d38:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  401d3c:	80 fa 2a             	cmp    $0x2a,%dl
  401d3f:	74 26                	je     401d67 <submitr+0x374>
  401d41:	80 fa 2d             	cmp    $0x2d,%dl
  401d44:	74 21                	je     401d67 <submitr+0x374>
  401d46:	80 fa 2e             	cmp    $0x2e,%dl
  401d49:	74 1c                	je     401d67 <submitr+0x374>
  401d4b:	80 fa 5f             	cmp    $0x5f,%dl
  401d4e:	66 90                	xchg   %ax,%ax
  401d50:	74 15                	je     401d67 <submitr+0x374>
  401d52:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401d55:	3c 09                	cmp    $0x9,%al
  401d57:	76 0e                	jbe    401d67 <submitr+0x374>
  401d59:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401d5c:	3c 19                	cmp    $0x19,%al
  401d5e:	76 07                	jbe    401d67 <submitr+0x374>
  401d60:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401d63:	3c 19                	cmp    $0x19,%al
  401d65:	77 0a                	ja     401d71 <submitr+0x37e>
  401d67:	41 88 14 24          	mov    %dl,(%r12)
  401d6b:	49 83 c4 01          	add    $0x1,%r12
  401d6f:	eb 52                	jmp    401dc3 <submitr+0x3d0>
  401d71:	80 fa 20             	cmp    $0x20,%dl
  401d74:	75 0b                	jne    401d81 <submitr+0x38e>
  401d76:	41 c6 04 24 2b       	movb   $0x2b,(%r12)
  401d7b:	49 83 c4 01          	add    $0x1,%r12
  401d7f:	eb 42                	jmp    401dc3 <submitr+0x3d0>
  401d81:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401d84:	3c 5f                	cmp    $0x5f,%al
  401d86:	76 05                	jbe    401d8d <submitr+0x39a>
  401d88:	80 fa 09             	cmp    $0x9,%dl
  401d8b:	75 4b                	jne    401dd8 <submitr+0x3e5>
  401d8d:	0f b6 d2             	movzbl %dl,%edx
  401d90:	be b0 2b 40 00       	mov    $0x402bb0,%esi
  401d95:	4c 89 ff             	mov    %r15,%rdi
  401d98:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9d:	e8 7e ed ff ff       	callq  400b20 <sprintf@plt>
  401da2:	0f b6 44 24 30       	movzbl 0x30(%rsp),%eax
  401da7:	41 88 04 24          	mov    %al,(%r12)
  401dab:	0f b6 44 24 31       	movzbl 0x31(%rsp),%eax
  401db0:	41 88 44 24 01       	mov    %al,0x1(%r12)
  401db5:	0f b6 44 24 32       	movzbl 0x32(%rsp),%eax
  401dba:	41 88 44 24 02       	mov    %al,0x2(%r12)
  401dbf:	49 83 c4 03          	add    $0x3,%r12
  401dc3:	83 eb 01             	sub    $0x1,%ebx
  401dc6:	83 fb ff             	cmp    $0xffffffffffffffff,%ebx
  401dc9:	0f 84 4a 04 00 00    	je     402219 <submitr+0x826>
  401dcf:	48 83 c5 01          	add    $0x1,%rbp
  401dd3:	e9 60 ff ff ff       	jmpq   401d38 <submitr+0x345>
  401dd8:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401ddf:	41 c7 46 04 72 3a 20 	movl   $0x52203a72,0x4(%r14)
  401de6:	52 
  401de7:	41 c7 46 08 65 73 75 	movl   $0x6c757365,0x8(%r14)
  401dee:	6c 
  401def:	41 c7 46 0c 74 20 73 	movl   $0x74732074,0xc(%r14)
  401df6:	74 
  401df7:	41 c7 46 10 72 69 6e 	movl   $0x676e6972,0x10(%r14)
  401dfe:	67 
  401dff:	41 c7 46 14 20 63 6f 	movl   $0x6e6f6320,0x14(%r14)
  401e06:	6e 
  401e07:	41 c7 46 18 74 61 69 	movl   $0x6e696174,0x18(%r14)
  401e0e:	6e 
  401e0f:	41 c7 46 1c 73 20 61 	movl   $0x6e612073,0x1c(%r14)
  401e16:	6e 
  401e17:	41 c7 46 20 20 69 6c 	movl   $0x6c6c6920,0x20(%r14)
  401e1e:	6c 
  401e1f:	41 c7 46 24 65 67 61 	movl   $0x6c616765,0x24(%r14)
  401e26:	6c 
  401e27:	41 c7 46 28 20 6f 72 	movl   $0x20726f20,0x28(%r14)
  401e2e:	20 
  401e2f:	41 c7 46 2c 75 6e 70 	movl   $0x72706e75,0x2c(%r14)
  401e36:	72 
  401e37:	41 c7 46 30 69 6e 74 	movl   $0x61746e69,0x30(%r14)
  401e3e:	61 
  401e3f:	41 c7 46 34 62 6c 65 	movl   $0x20656c62,0x34(%r14)
  401e46:	20 
  401e47:	41 c7 46 38 63 68 61 	movl   $0x72616863,0x38(%r14)
  401e4e:	72 
  401e4f:	41 c7 46 3c 61 63 74 	movl   $0x65746361,0x3c(%r14)
  401e56:	65 
  401e57:	66 41 c7 46 40 72 2e 	movw   $0x2e72,0x40(%r14)
  401e5e:	41 c6 46 42 00       	movb   $0x0,0x42(%r14)
  401e63:	44 89 ef             	mov    %r13d,%edi
  401e66:	e8 05 ec ff ff       	callq  400a70 <close@plt>
  401e6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e70:	e9 89 04 00 00       	jmpq   4022fe <submitr+0x90b>
  401e75:	48 01 c5             	add    %rax,%rbp
  401e78:	48 89 da             	mov    %rbx,%rdx
  401e7b:	48 89 ee             	mov    %rbp,%rsi
  401e7e:	44 89 ef             	mov    %r13d,%edi
  401e81:	e8 6a ed ff ff       	callq  400bf0 <write@plt>
  401e86:	48 85 c0             	test   %rax,%rax
  401e89:	7f 0f                	jg     401e9a <submitr+0x4a7>
  401e8b:	e8 30 ed ff ff       	callq  400bc0 <__errno_location@plt>
  401e90:	83 38 04             	cmpl   $0x4,(%rax)
  401e93:	75 0f                	jne    401ea4 <submitr+0x4b1>
  401e95:	b8 00 00 00 00       	mov    $0x0,%eax
  401e9a:	48 29 c3             	sub    %rax,%rbx
  401e9d:	75 d6                	jne    401e75 <submitr+0x482>
  401e9f:	4d 85 e4             	test   %r12,%r12
  401ea2:	79 79                	jns    401f1d <submitr+0x52a>
  401ea4:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401eab:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  401eb2:	43 
  401eb3:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  401eba:	6e 
  401ebb:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  401ec2:	6e 
  401ec3:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401eca:	65 
  401ecb:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401ed2:	20 
  401ed3:	41 c7 46 18 77 72 69 	movl   $0x74697277,0x18(%r14)
  401eda:	74 
  401edb:	41 c7 46 1c 65 20 74 	movl   $0x6f742065,0x1c(%r14)
  401ee2:	6f 
  401ee3:	41 c7 46 20 20 74 68 	movl   $0x65687420,0x20(%r14)
  401eea:	65 
  401eeb:	41 c7 46 24 20 41 75 	movl   $0x74754120,0x24(%r14)
  401ef2:	74 
  401ef3:	41 c7 46 28 6f 6c 61 	movl   $0x62616c6f,0x28(%r14)
  401efa:	62 
  401efb:	41 c7 46 2c 20 73 65 	movl   $0x72657320,0x2c(%r14)
  401f02:	72 
  401f03:	41 c7 46 30 76 65 72 	movl   $0x726576,0x30(%r14)
  401f0a:	00 
  401f0b:	44 89 ef             	mov    %r13d,%edi
  401f0e:	e8 5d eb ff ff       	callq  400a70 <close@plt>
  401f13:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f18:	e9 e1 03 00 00       	jmpq   4022fe <submitr+0x90b>
  401f1d:	44 89 ac 24 50 80 00 	mov    %r13d,0x8050(%rsp)
  401f24:	00 
  401f25:	c7 84 24 54 80 00 00 	movl   $0x0,0x8054(%rsp)
  401f2c:	00 00 00 00 
  401f30:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  401f37:	00 
  401f38:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401f3c:	48 89 84 24 58 80 00 	mov    %rax,0x8058(%rsp)
  401f43:	00 
  401f44:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
  401f4b:	00 
  401f4c:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f51:	e8 c3 f9 ff ff       	callq  401919 <rio_readlineb>
  401f56:	48 85 c0             	test   %rax,%rax
  401f59:	0f 8f 90 00 00 00    	jg     401fef <submitr+0x5fc>
  401f5f:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401f66:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  401f6d:	43 
  401f6e:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  401f75:	6e 
  401f76:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  401f7d:	6e 
  401f7e:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401f85:	65 
  401f86:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401f8d:	20 
  401f8e:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  401f95:	64 
  401f96:	41 c7 46 1c 20 66 69 	movl   $0x72696620,0x1c(%r14)
  401f9d:	72 
  401f9e:	41 c7 46 20 73 74 20 	movl   $0x68207473,0x20(%r14)
  401fa5:	68 
  401fa6:	41 c7 46 24 65 61 64 	movl   $0x65646165,0x24(%r14)
  401fad:	65 
  401fae:	41 c7 46 28 72 20 66 	movl   $0x72662072,0x28(%r14)
  401fb5:	72 
  401fb6:	41 c7 46 2c 6f 6d 20 	movl   $0x41206d6f,0x2c(%r14)
  401fbd:	41 
  401fbe:	41 c7 46 30 75 74 6f 	movl   $0x6c6f7475,0x30(%r14)
  401fc5:	6c 
  401fc6:	41 c7 46 34 61 62 20 	movl   $0x73206261,0x34(%r14)
  401fcd:	73 
  401fce:	41 c7 46 38 65 72 76 	movl   $0x65767265,0x38(%r14)
  401fd5:	65 
  401fd6:	66 41 c7 46 3c 72 00 	movw   $0x72,0x3c(%r14)
  401fdd:	44 89 ef             	mov    %r13d,%edi
  401fe0:	e8 8b ea ff ff       	callq  400a70 <close@plt>
  401fe5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401fea:	e9 0f 03 00 00       	jmpq   4022fe <submitr+0x90b>
  401fef:	48 8d 5c 24 40       	lea    0x40(%rsp),%rbx
  401ff4:	48 8d 8c 24 4c 20 00 	lea    0x204c(%rsp),%rcx
  401ffb:	00 
  401ffc:	48 8d 94 24 50 20 00 	lea    0x2050(%rsp),%rdx
  402003:	00 
  402004:	48 8d bc 24 50 60 00 	lea    0x6050(%rsp),%rdi
  40200b:	00 
  40200c:	49 89 d8             	mov    %rbx,%r8
  40200f:	be b7 2b 40 00       	mov    $0x402bb7,%esi
  402014:	b8 00 00 00 00       	mov    $0x0,%eax
  402019:	e8 22 eb ff ff       	callq  400b40 <sscanf@plt>
  40201e:	8b 94 24 4c 20 00 00 	mov    0x204c(%rsp),%edx
  402025:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  40202b:	74 4a                	je     402077 <submitr+0x684>
  40202d:	48 89 d9             	mov    %rbx,%rcx
  402030:	be f8 2a 40 00       	mov    $0x402af8,%esi
  402035:	4c 89 f7             	mov    %r14,%rdi
  402038:	b8 00 00 00 00       	mov    $0x0,%eax
  40203d:	e8 de ea ff ff       	callq  400b20 <sprintf@plt>
  402042:	44 89 ef             	mov    %r13d,%edi
  402045:	e8 26 ea ff ff       	callq  400a70 <close@plt>
  40204a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40204f:	e9 aa 02 00 00       	jmpq   4022fe <submitr+0x90b>
  402054:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
  40205b:	00 
  40205c:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  402063:	00 
  402064:	ba 00 20 00 00       	mov    $0x2000,%edx
  402069:	e8 ab f8 ff ff       	callq  401919 <rio_readlineb>
  40206e:	48 85 c0             	test   %rax,%rax
  402071:	0f 8e 06 02 00 00    	jle    40227d <submitr+0x88a>
  402077:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
  40207e:	00 
  40207f:	0f b6 94 24 50 60 00 	movzbl 0x6050(%rsp),%edx
  402086:	00 
  402087:	0f b6 05 40 0b 00 00 	movzbl 0xb40(%rip),%eax        # 402bce <array.3307+0x50e>
  40208e:	39 c2                	cmp    %eax,%edx
  402090:	75 c2                	jne    402054 <submitr+0x661>
  402092:	0f b6 94 24 51 60 00 	movzbl 0x6051(%rsp),%edx
  402099:	00 
  40209a:	0f b6 05 2e 0b 00 00 	movzbl 0xb2e(%rip),%eax        # 402bcf <array.3307+0x50f>
  4020a1:	39 c2                	cmp    %eax,%edx
  4020a3:	75 af                	jne    402054 <submitr+0x661>
  4020a5:	0f b6 94 24 52 60 00 	movzbl 0x6052(%rsp),%edx
  4020ac:	00 
  4020ad:	0f b6 05 1c 0b 00 00 	movzbl 0xb1c(%rip),%eax        # 402bd0 <array.3307+0x510>
  4020b4:	39 c2                	cmp    %eax,%edx
  4020b6:	75 9c                	jne    402054 <submitr+0x661>
  4020b8:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  4020bf:	00 
  4020c0:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020c5:	e8 4f f8 ff ff       	callq  401919 <rio_readlineb>
  4020ca:	48 85 c0             	test   %rax,%rax
  4020cd:	0f 8f 91 00 00 00    	jg     402164 <submitr+0x771>
  4020d3:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  4020da:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  4020e1:	43 
  4020e2:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  4020e9:	6e 
  4020ea:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  4020f1:	6e 
  4020f2:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  4020f9:	65 
  4020fa:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  402101:	20 
  402102:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  402109:	64 
  40210a:	41 c7 46 1c 20 73 74 	movl   $0x61747320,0x1c(%r14)
  402111:	61 
  402112:	41 c7 46 20 74 75 73 	movl   $0x20737574,0x20(%r14)
  402119:	20 
  40211a:	41 c7 46 24 6d 65 73 	movl   $0x7373656d,0x24(%r14)
  402121:	73 
  402122:	41 c7 46 28 61 67 65 	movl   $0x20656761,0x28(%r14)
  402129:	20 
  40212a:	41 c7 46 2c 66 72 6f 	movl   $0x6d6f7266,0x2c(%r14)
  402131:	6d 
  402132:	41 c7 46 30 20 41 75 	movl   $0x74754120,0x30(%r14)
  402139:	74 
  40213a:	41 c7 46 34 6f 6c 61 	movl   $0x62616c6f,0x34(%r14)
  402141:	62 
  402142:	41 c7 46 38 20 73 65 	movl   $0x72657320,0x38(%r14)
  402149:	72 
  40214a:	41 c7 46 3c 76 65 72 	movl   $0x726576,0x3c(%r14)
  402151:	00 
  402152:	44 89 ef             	mov    %r13d,%edi
  402155:	e8 16 e9 ff ff       	callq  400a70 <close@plt>
  40215a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40215f:	e9 9a 01 00 00       	jmpq   4022fe <submitr+0x90b>
  402164:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
  40216b:	00 
  40216c:	4c 89 f7             	mov    %r14,%rdi
  40216f:	e8 5c ea ff ff       	callq  400bd0 <strcpy@plt>
  402174:	44 89 ef             	mov    %r13d,%edi
  402177:	e8 f4 e8 ff ff       	callq  400a70 <close@plt>
  40217c:	4d 89 f0             	mov    %r14,%r8
  40217f:	45 0f b6 0e          	movzbl (%r14),%r9d
  402183:	0f b6 05 3e 0a 00 00 	movzbl 0xa3e(%rip),%eax        # 402bc8 <array.3307+0x508>
  40218a:	41 39 c1             	cmp    %eax,%r9d
  40218d:	75 30                	jne    4021bf <submitr+0x7cc>
  40218f:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
  402194:	0f b6 05 2e 0a 00 00 	movzbl 0xa2e(%rip),%eax        # 402bc9 <array.3307+0x509>
  40219b:	39 c2                	cmp    %eax,%edx
  40219d:	75 20                	jne    4021bf <submitr+0x7cc>
  40219f:	41 0f b6 56 02       	movzbl 0x2(%r14),%edx
  4021a4:	0f b6 05 1f 0a 00 00 	movzbl 0xa1f(%rip),%eax        # 402bca <array.3307+0x50a>
  4021ab:	39 c2                	cmp    %eax,%edx
  4021ad:	75 10                	jne    4021bf <submitr+0x7cc>
  4021af:	41 0f b6 56 03       	movzbl 0x3(%r14),%edx
  4021b4:	0f b6 05 10 0a 00 00 	movzbl 0xa10(%rip),%eax        # 402bcb <array.3307+0x50b>
  4021bb:	39 c2                	cmp    %eax,%edx
  4021bd:	74 46                	je     402205 <submitr+0x812>
  4021bf:	4c 89 f6             	mov    %r14,%rsi
  4021c2:	bf cc 2b 40 00       	mov    $0x402bcc,%edi
  4021c7:	b9 05 00 00 00       	mov    $0x5,%ecx
  4021cc:	fc                   	cld    
  4021cd:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4021cf:	0f 97 c2             	seta   %dl
  4021d2:	0f 92 c0             	setb   %al
  4021d5:	38 c2                	cmp    %al,%dl
  4021d7:	74 2c                	je     402205 <submitr+0x812>
  4021d9:	0f b6 05 f1 09 00 00 	movzbl 0x9f1(%rip),%eax        # 402bd1 <array.3307+0x511>
  4021e0:	41 39 c1             	cmp    %eax,%r9d
  4021e3:	75 2a                	jne    40220f <submitr+0x81c>
  4021e5:	41 0f b6 50 01       	movzbl 0x1(%r8),%edx
  4021ea:	0f b6 05 e1 09 00 00 	movzbl 0x9e1(%rip),%eax        # 402bd2 <array.3307+0x512>
  4021f1:	39 c2                	cmp    %eax,%edx
  4021f3:	75 1a                	jne    40220f <submitr+0x81c>
  4021f5:	41 0f b6 50 02       	movzbl 0x2(%r8),%edx
  4021fa:	0f b6 05 d2 09 00 00 	movzbl 0x9d2(%rip),%eax        # 402bd3 <array.3307+0x513>
  402201:	39 c2                	cmp    %eax,%edx
  402203:	75 0a                	jne    40220f <submitr+0x81c>
  402205:	b8 00 00 00 00       	mov    $0x0,%eax
  40220a:	e9 ef 00 00 00       	jmpq   4022fe <submitr+0x90b>
  40220f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402214:	e9 e5 00 00 00       	jmpq   4022fe <submitr+0x90b>
  402219:	48 8d ac 24 50 60 00 	lea    0x6050(%rsp),%rbp
  402220:	00 
  402221:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  402226:	48 89 04 24          	mov    %rax,(%rsp)
  40222a:	4c 8d 8c 24 50 40 00 	lea    0x4050(%rsp),%r9
  402231:	00 
  402232:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  402237:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40223c:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
  402241:	be 28 2b 40 00       	mov    $0x402b28,%esi
  402246:	48 89 ef             	mov    %rbp,%rdi
  402249:	b8 00 00 00 00       	mov    $0x0,%eax
  40224e:	e8 cd e8 ff ff       	callq  400b20 <sprintf@plt>
  402253:	48 89 ef             	mov    %rbp,%rdi
  402256:	fc                   	cld    
  402257:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40225e:	b8 00 00 00 00       	mov    $0x0,%eax
  402263:	f2 ae                	repnz scas %es:(%rdi),%al
  402265:	48 f7 d1             	not    %rcx
  402268:	49 89 cc             	mov    %rcx,%r12
  40226b:	49 83 ec 01          	sub    $0x1,%r12
  40226f:	0f 84 a8 fc ff ff    	je     401f1d <submitr+0x52a>
  402275:	4c 89 e3             	mov    %r12,%rbx
  402278:	e9 fb fb ff ff       	jmpq   401e78 <submitr+0x485>
  40227d:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  402284:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  40228b:	43 
  40228c:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  402293:	6e 
  402294:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  40229b:	6e 
  40229c:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  4022a3:	65 
  4022a4:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  4022ab:	20 
  4022ac:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  4022b3:	64 
  4022b4:	41 c7 46 1c 20 68 65 	movl   $0x61656820,0x1c(%r14)
  4022bb:	61 
  4022bc:	41 c7 46 20 64 65 72 	movl   $0x73726564,0x20(%r14)
  4022c3:	73 
  4022c4:	41 c7 46 24 20 66 72 	movl   $0x6f726620,0x24(%r14)
  4022cb:	6f 
  4022cc:	41 c7 46 28 6d 20 41 	movl   $0x7541206d,0x28(%r14)
  4022d3:	75 
  4022d4:	41 c7 46 2c 74 6f 6c 	movl   $0x616c6f74,0x2c(%r14)
  4022db:	61 
  4022dc:	41 c7 46 30 62 20 73 	movl   $0x65732062,0x30(%r14)
  4022e3:	65 
  4022e4:	41 c7 46 34 72 76 65 	movl   $0x72657672,0x34(%r14)
  4022eb:	72 
  4022ec:	41 c6 46 38 00       	movb   $0x0,0x38(%r14)
  4022f1:	44 89 ef             	mov    %r13d,%edi
  4022f4:	e8 77 e7 ff ff       	callq  400a70 <close@plt>
  4022f9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022fe:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
  402305:	5b                   	pop    %rbx
  402306:	5d                   	pop    %rbp
  402307:	41 5c                	pop    %r12
  402309:	41 5d                	pop    %r13
  40230b:	41 5e                	pop    %r14
  40230d:	41 5f                	pop    %r15
  40230f:	c3                   	retq   

0000000000402310 <driver_post>:
  402310:	53                   	push   %rbx
  402311:	48 83 ec 10          	sub    $0x10,%rsp
  402315:	48 89 cb             	mov    %rcx,%rbx
  402318:	85 d2                	test   %edx,%edx
  40231a:	74 1f                	je     40233b <driver_post+0x2b>
  40231c:	bf d4 2b 40 00       	mov    $0x402bd4,%edi
  402321:	b8 00 00 00 00       	mov    $0x0,%eax
  402326:	e8 25 e7 ff ff       	callq  400a50 <printf@plt>
  40232b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402330:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402334:	b8 00 00 00 00       	mov    $0x0,%eax
  402339:	eb 47                	jmp    402382 <driver_post+0x72>
  40233b:	48 85 ff             	test   %rdi,%rdi
  40233e:	74 34                	je     402374 <driver_post+0x64>
  402340:	0f b6 17             	movzbl (%rdi),%edx
  402343:	0f b6 05 86 08 00 00 	movzbl 0x886(%rip),%eax        # 402bd0 <array.3307+0x510>
  40234a:	39 c2                	cmp    %eax,%edx
  40234c:	74 26                	je     402374 <driver_post+0x64>
  40234e:	48 89 0c 24          	mov    %rcx,(%rsp)
  402352:	49 89 f1             	mov    %rsi,%r9
  402355:	41 b8 eb 2b 40 00    	mov    $0x402beb,%r8d
  40235b:	48 89 f9             	mov    %rdi,%rcx
  40235e:	ba f3 2b 40 00       	mov    $0x402bf3,%edx
  402363:	be 50 00 00 00       	mov    $0x50,%esi
  402368:	bf d8 2a 40 00       	mov    $0x402ad8,%edi
  40236d:	e8 81 f6 ff ff       	callq  4019f3 <submitr>
  402372:	eb 0e                	jmp    402382 <driver_post+0x72>
  402374:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402379:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40237d:	b8 00 00 00 00       	mov    $0x0,%eax
  402382:	48 83 c4 10          	add    $0x10,%rsp
  402386:	5b                   	pop    %rbx
  402387:	c3                   	retq   

0000000000402388 <sigalrm_handler>:
  402388:	48 83 ec 08          	sub    $0x8,%rsp
  40238c:	ba 00 00 00 00       	mov    $0x0,%edx
  402391:	be 88 2b 40 00       	mov    $0x402b88,%esi
  402396:	48 8b 3d 0b 1d 20 00 	mov    0x201d0b(%rip),%rdi        # 6040a8 <stderr@@GLIBC_2.2.5>
  40239d:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a2:	e8 39 e8 ff ff       	callq  400be0 <fprintf@plt>
  4023a7:	bf 01 00 00 00       	mov    $0x1,%edi
  4023ac:	e8 ef e6 ff ff       	callq  400aa0 <exit@plt>
  4023b1:	90                   	nop
  4023b2:	90                   	nop
  4023b3:	90                   	nop
  4023b4:	90                   	nop
  4023b5:	90                   	nop
  4023b6:	90                   	nop
  4023b7:	90                   	nop
  4023b8:	90                   	nop
  4023b9:	90                   	nop
  4023ba:	90                   	nop
  4023bb:	90                   	nop
  4023bc:	90                   	nop
  4023bd:	90                   	nop
  4023be:	90                   	nop
  4023bf:	90                   	nop

00000000004023c0 <__libc_csu_fini>:
  4023c0:	f3 c3                	repz retq 
  4023c2:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4023c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004023d0 <__libc_csu_init>:
  4023d0:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4023d5:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4023da:	4c 8d 25 fb 0c 20 00 	lea    0x200cfb(%rip),%r12        # 6030dc <__fini_array_end>
  4023e1:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4023e6:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4023eb:	49 89 f6             	mov    %rsi,%r14
  4023ee:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4023f3:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4023f8:	48 83 ec 38          	sub    $0x38,%rsp
  4023fc:	41 89 ff             	mov    %edi,%r15d
  4023ff:	49 89 d5             	mov    %rdx,%r13
  402402:	e8 21 e6 ff ff       	callq  400a28 <_init>
  402407:	48 8d 05 ce 0c 20 00 	lea    0x200cce(%rip),%rax        # 6030dc <__fini_array_end>
  40240e:	49 29 c4             	sub    %rax,%r12
  402411:	49 c1 fc 03          	sar    $0x3,%r12
  402415:	4d 85 e4             	test   %r12,%r12
  402418:	74 1e                	je     402438 <__libc_csu_init+0x68>
  40241a:	31 ed                	xor    %ebp,%ebp
  40241c:	48 89 c3             	mov    %rax,%rbx
  40241f:	90                   	nop
  402420:	48 83 c5 01          	add    $0x1,%rbp
  402424:	4c 89 ea             	mov    %r13,%rdx
  402427:	4c 89 f6             	mov    %r14,%rsi
  40242a:	44 89 ff             	mov    %r15d,%edi
  40242d:	ff 13                	callq  *(%rbx)
  40242f:	48 83 c3 08          	add    $0x8,%rbx
  402433:	49 39 ec             	cmp    %rbp,%r12
  402436:	75 e8                	jne    402420 <__libc_csu_init+0x50>
  402438:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40243d:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  402442:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  402447:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40244c:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  402451:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  402456:	48 83 c4 38          	add    $0x38,%rsp
  40245a:	c3                   	retq   
  40245b:	90                   	nop
  40245c:	90                   	nop
  40245d:	90                   	nop
  40245e:	90                   	nop
  40245f:	90                   	nop

0000000000402460 <__do_global_ctors_aux>:
  402460:	55                   	push   %rbp
  402461:	48 89 e5             	mov    %rsp,%rbp
  402464:	53                   	push   %rbx
  402465:	bb e0 30 60 00       	mov    $0x6030e0,%ebx
  40246a:	48 83 ec 08          	sub    $0x8,%rsp
  40246e:	48 8b 05 6b 0c 20 00 	mov    0x200c6b(%rip),%rax        # 6030e0 <__CTOR_LIST__>
  402475:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  402479:	74 14                	je     40248f <__do_global_ctors_aux+0x2f>
  40247b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402480:	48 83 eb 08          	sub    $0x8,%rbx
  402484:	ff d0                	callq  *%rax
  402486:	48 8b 03             	mov    (%rbx),%rax
  402489:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40248d:	75 f1                	jne    402480 <__do_global_ctors_aux+0x20>
  40248f:	48 83 c4 08          	add    $0x8,%rsp
  402493:	5b                   	pop    %rbx
  402494:	c9                   	leaveq 
  402495:	c3                   	retq   
  402496:	90                   	nop
  402497:	90                   	nop

Disassembly of section .fini:

0000000000402498 <_fini>:
  402498:	48 83 ec 08          	sub    $0x8,%rsp
  40249c:	e8 bf e7 ff ff       	callq  400c60 <__do_global_dtors_aux>
  4024a1:	48 83 c4 08          	add    $0x8,%rsp
  4024a5:	c3                   	retq   
