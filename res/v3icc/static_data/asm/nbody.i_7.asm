address;source_location;insn;indent
0x402617;:0;CALL	402090 <omp_get_wtime@plt>;  (8) 
0x40261c;:0;VMOVSD	%XMM0,0x90(%RSP);  (8) 
0x402625;:0;XOR	%EAX,%EAX;  (8) 
0x402627;:0;TEST	%R15,%R15;  (8) 
0x40262a;:0;JBE	402ae7 <main+0x7f7>;  (8) 
0x402630;:0;VPXORD	%ZMM16,%ZMM16,%ZMM16;
0x402636;:0;MOV	%R13,0x80(%RSP);
0x40263e;:0;VMOVSS	0xec7e(%RIP),%XMM2;
0x402646;:0;VMOVUPS	0xea30(%RIP),%ZMM17;
0x402650;:0;VMOVDQU32	0xeae6(%RIP),%ZMM18;
0x40265a;:0;VMOVDQU32	0xea9c(%RIP),%ZMM19;
0x402664;:0;VMOVUPS	0xe9d2(%RIP),%ZMM20;
0x40266e;:0;MOV	(%RSP),%RCX;
0x402672;:0;MOV	0x30(%RSP),%R10;
0x402677;:0;MOV	0x50(%RSP),%R13;
0x40267c;:0;MOV	0x48(%RSP),%R11;
0x402681;:0;MOV	0x58(%RSP),%R8;
0x402686;:0;VMOVSS	(%R8,%RAX,4),%XMM9;
0x40268c;:0;VMOVSS	(%R10,%RAX,4),%XMM8;
0x402692;:0;VMOVAPS	%ZMM16,%ZMM0;
0x402698;:0;VMOVAPS	%ZMM0,%ZMM3;
0x40269e;:0;VMOVAPS	%ZMM3,%ZMM1;
0x4026a4;:0;VMOVSS	(%R11,%RAX,4),%XMM7;
0x4026aa;:0;VXORPS	0xebce(%RIP),%XMM9,%XMM4;
0x4026b2;:0;VXORPS	0xebc6(%RIP),%XMM8,%XMM5;
0x4026ba;:0;VXORPS	0xebbe(%RIP),%XMM7,%XMM6;
0x4026c2;:0;CMP	$0x960,%R15;
0x4026c9;:0;JB	403419 <main+0x1129>;
0x4026cf;:0;MOV	0xa8(%RSP),%RBX;
0x4026d7;:0;TEST	%RBX,%RBX;
0x4026da;:0;JE	402821 <main+0x531>;
0x4026e0;:0;CMPQ	$0,0xa0(%RSP);
0x4026e9;:0;JNE	4033fd <main+0x110d>;
0x4026ef;:0;CMP	%R14,%R15;
0x4026f2;:0;MOV	%R14,%RBX;
0x4026f5;:0;CMOVB	%R15,%RBX;
0x4026f9;:0;MOV	%R15,%R9;
0x4026fc;:0;SUB	%RBX,%R9;
0x4026ff;:0;AND	$0xf,%R9;
0x402703;:0;NEG	%R9;
0x402706;:0;ADD	%R15,%R9;
0x402709;:0;CMP	$0x1,%RBX;
0x40270d;:0;JB	402829 <main+0x539>;
0x402713;:0;VMOVAPS	%ZMM19,%ZMM29;
0x402719;:0;VMOVAPS	%ZMM18,%ZMM28;
0x40271f;:0;VPBROADCASTQ	%RBX,%ZMM27;
0x402725;:0;VBROADCASTSS	%XMM4,%ZMM26;
0x40272b;:0;XOR	%EDX,%EDX;
0x40272d;:0;VBROADCASTSS	%XMM5,%ZMM25;
0x402733;:0;VBROADCASTSS	%XMM6,%ZMM30;
0x402739;:0;VMOVUPS	0xea3d(%RIP),%ZMM24;
0x402743;:0;VPCMPNLEUQ	%ZMM29,%ZMM27,%K1;  (6) 
0x40274a;:0;VPCMPNLEUQ	%ZMM28,%ZMM27,%K0;  (6) 
0x402751;:0;KUNPCKBW	%K1,%K0,%K5;  (6) 
0x402755;:0;VMOVAPS	%ZMM17,%ZMM10;  (6) 
0x40275b;:0;VPADDQ	%ZMM20,%ZMM29,%ZMM29;  (6) 
0x402761;:0;VMOVUPS	(%R8,%RDX,4),%ZMM31{%K5}{z};  (6) 
0x402768;:0;VMOVUPS	(%R10,%RDX,4),%ZMM22{%K5}{z};  (6) 
0x40276f;:0;KNOTW	%K5,%K3;  (6) 
0x402773;:0;VPADDQ	%ZMM20,%ZMM28,%ZMM28;  (6) 
0x402779;:0;VADDPS	%ZMM31,%ZMM26,%ZMM23;  (6) 
0x40277f;:0;VADDPS	%ZMM22,%ZMM25,%ZMM22;  (6) 
0x402785;:0;VMOVUPS	(%R11,%RDX,4),%ZMM21{%K5}{z};  (6) 
0x40278c;:0;ADD	$0x10,%RDX;  (6) 
0x402790;:0;VFMADD231PS	%ZMM23,%ZMM23,%ZMM10;  (6) 
0x402796;:0;VADDPS	%ZMM21,%ZMM30,%ZMM21;  (6) 
0x40279c;:0;VFMADD231PS	%ZMM22,%ZMM22,%ZMM10;  (6) 
0x4027a2;:0;VFMADD231PS	%ZMM21,%ZMM21,%ZMM10;  (6) 
0x4027a8;:0;VPANDD	0xea8e(%RIP),%ZMM10,%ZMM31;  (6) 
0x4027b2;:0;VCMPPS	$0xd,0xea43(%RIP),%ZMM31,%K2;  (6) 
0x4027bd;:0;VRSQRT28PS	%ZMM10,%ZMM31{%K5}{z};  (6) 
0x4027c3;:0;KORW	%K3,%K2,%K4;  (6) 
0x4027c7;:0;VMOVAPS	%ZMM31,%ZMM11{%K4}{z};  (6) 
0x4027cd;:0;VMULPS	%ZMM11,%ZMM10,%ZMM31{%K5}{z};  (6) 
0x4027d3;:0;VFMSUB213PS	%ZMM24,%ZMM31,%ZMM11{%K5}{z};  (6) 
0x4027d9;:0;VMULPS	%ZMM11,%ZMM31,%ZMM31{%K5}{z};  (6) 
0x4027df;:0;VMULPS	0xe9d7(%RIP),%ZMM31,%ZMM31{%K5}{z};  (6) 
0x4027e9;:0;VMULPS	%ZMM31,%ZMM31,%ZMM12;  (6) 
0x4027ef;:0;VMULPS	%ZMM12,%ZMM31,%ZMM31;  (6) 
0x4027f5;:0;VRCP28PS	%ZMM31,%ZMM31;  (6) 
0x4027fb;:0;VFMADD231PS	%ZMM23,%ZMM31,%ZMM0{%K5};  (6) 
0x402801;:0;VFMADD231PS	%ZMM22,%ZMM31,%ZMM3{%K5};  (6) 
0x402807;:0;VFMADD231PS	%ZMM21,%ZMM31,%ZMM1{%K5};  (6) 
0x40280d;:0;CMP	%RBX,%RDX;  (6) 
0x402810;:0;JB	402743 <main+0x453>;  (6) 
0x402816;:0;CMP	%RBX,%R15;
0x402819;:0;JE	4029d8 <main+0x6e8>;
0x4029d8;:0;VEXTRACTF64X4	$0x1,%ZMM0,%YMM4;
0x4029df;:0;VADDPS	%YMM0,%YMM4,%YMM6;
0x4029e3;:0;VEXTRACTF64X4	$0x1,%ZMM3,%YMM0;
0x4029ea;:0;VADDPS	%YMM3,%YMM0,%YMM3;
0x4029ee;:0;VPERMPD	$-0x1,%YMM6,%YMM5;
0x4029f4;:0;VPERMPD	$-0x56,%YMM6,%YMM10;
0x4029fa;:0;VPERMPD	$0x55,%YMM6,%YMM11;
0x402a00;:0;VADDPS	%YMM6,%YMM5,%YMM12;
0x402a04;:0;VADDPS	%YMM11,%YMM10,%YMM13;
0x402a09;:0;VPERMPD	$-0x1,%YMM3,%YMM0;
0x402a0f;:0;VADDPS	%YMM13,%YMM12,%YMM14;
0x402a14;:0;VEXTRACTF64X4	$0x1,%ZMM1,%YMM13;
0x402a1b;:0;VADDPS	%YMM1,%YMM13,%YMM13;
0x402a1f;:0;VPERMPD	$-0x56,%YMM3,%YMM4;
0x402a25;:0;VPERMPD	$0x55,%YMM3,%YMM5;
0x402a2b;:0;VADDPS	%YMM3,%YMM0,%YMM6;
0x402a2f;:0;VPERMPD	$-0x1,%YMM13,%YMM1;
0x402a35;:0;VPERMPD	$-0x56,%YMM13,%YMM0;
0x402a3b;:0;VPERMPD	$0x55,%YMM13,%YMM3;
0x402a41;:0;VADDPS	%YMM5,%YMM4,%YMM10;
0x402a45;:0;VADDPS	%YMM13,%YMM1,%YMM4;
0x402a4a;:0;VADDPS	%YMM3,%YMM0,%YMM5;
0x402a4e;:0;VADDPS	%YMM10,%YMM6,%YMM11;
0x402a53;:0;VADDPS	%YMM5,%YMM4,%YMM6;
0x402a57;:0;VPSRLQ	$0x20,%XMM14,%XMM15;
0x402a5d;:0;VPSRLQ	$0x20,%XMM11,%XMM12;
0x402a63;:0;VPSRLQ	$0x20,%XMM6,%XMM10;
0x402a68;:0;VADDSS	%XMM14,%XMM15,%XMM21;
0x402a6e;:0;VADDSS	%XMM11,%XMM12,%XMM22;
0x402a74;:0;VADDSS	%XMM6,%XMM10,%XMM23;
0x402a7a;:0;VFMADD213SS	(%R13,%RAX,4),%XMM2,%XMM21;
0x402a82;:0;VMOVSS	%XMM21,(%R13,%RAX,4);
0x402a8a;:0;VFMADD213SS	(%RCX,%RAX,4),%XMM2,%XMM22;
0x402a91;:0;VMOVSS	%XMM22,(%RCX,%RAX,4);
0x402a98;:0;VFMADD213SS	(%R12,%RAX,4),%XMM2,%XMM23;
0x402a9f;:0;VMOVSS	%XMM23,(%R12,%RAX,4);
0x402aa6;:0;VFMADD213SS	%XMM9,%XMM2,%XMM21;
0x402aac;:0;VMOVSS	%XMM21,(%R8,%RAX,4);
0x402ab3;:0;VFMADD213SS	%XMM8,%XMM2,%XMM22;
0x402ab9;:0;VMOVSS	%XMM22,(%R10,%RAX,4);
0x402ac0;:0;VFMADD213SS	%XMM7,%XMM2,%XMM23;
0x402ac6;:0;VMOVSS	%XMM23,(%R11,%RAX,4);
0x402acd;:0;ADD	$0x1,%RAX;
0x402ad1;:0;CMP	%R15,%RAX;
0x402ad4;:0;JB	402686 <main+0x396>;
0x402ada;:0;MOV	$0x4113b4,%EBX;
0x402adf;:0;MOV	0x80(%RSP),%R13;
0x402ae7;:0;CALL	402090 <omp_get_wtime@plt>;  (8) 
0x402aec;:0;VSUBSD	0x90(%RSP),%XMM0,%XMM0;  (8) 
0x402af5;:0;CMP	$0x3,%R13;  (8) 
0x402af9;:0;JB	402b77 <main+0x887>;  (8) 
0x402afb;:0;VRCP28SD	%XMM0,%XMM0,%XMM4;  (8) 
0x402b01;:0;VMULSD	%XMM0,%XMM0,%XMM18;  (8) 
0x402b07;:0;VMOVSD	0xe78f(%RIP),%XMM16;  (8) 
0x402b11;:0;VMOVSD	0xe785(%RIP),%XMM17;  (8) 
0x402b1b;:0;VRCP28SD	%XMM18,%XMM18,%XMM19;  (8) 
0x402b21;:0;VMOVSD	0x60(%RSP),%XMM3;  (8) 
0x402b27;:0;VFNMADD231SD	{rn-sae},%XMM0,%XMM4,%XMM16;  (8) 
0x402b2d;:0;VFMADD231SD	{rn-sae},%XMM4,%XMM16,%XMM4;  (8) 
0x402b33;:0;VFNMADD231SD	{rn-sae},%XMM18,%XMM19,%XMM17;  (8) 
0x402b39;:0;VFIXUPIMMSD	$0x11,0xe764(%RIP),%XMM0,%XMM4;  (8) 
0x402b44;:0;VFMADD231SD	{rn-sae},%XMM19,%XMM17,%XMM19;  (8) 
0x402b4a;:0;VMULSD	0x78(%RSP),%XMM4,%XMM2;  (8) 
0x402b50;:0;VFIXUPIMMSD	$0x11,0xe74d(%RIP),%XMM18,%XMM19;  (8) 
0x402b5b;:0;VADDSD	0x68(%RSP),%XMM2,%XMM1;  (8) 
0x402b61;:0;VMOVSD	%XMM1,0x68(%RSP);  (8) 
0x402b67;:0;VFMADD231SD	0x70(%RSP),%XMM19,%XMM3;  (8) 
0x402b6f;:0;VMOVSD	%XMM3,0x60(%RSP);  (8) 
0x402b75;:0;JMP	402ba2 <main+0x8b2>;  (8) 
0x402b77;:0;VRCP28SD	%XMM0,%XMM0,%XMM4;  (8) 
0x402b7d;:0;VMOVSD	0xe71b(%RIP),%XMM1;  (8) 
0x402b85;:0;VFNMADD231SD	{rn-sae},%XMM0,%XMM4,%XMM1;  (8) 
0x402b8b;:0;VFMADD231SD	{rn-sae},%XMM4,%XMM1,%XMM4;  (8) 
0x402b91;:0;VFIXUPIMMSD	$0x11,0xe70c(%RIP),%XMM0,%XMM4;  (8) 
0x402b9c;:0;VMULSD	0x78(%RSP),%XMM4,%XMM2;  (8) 
0x402ba2;:0;MOV	$0x411370,%EDX;  (8) 
0x402ba7;:0;VMULSD	0x88(%RSP),%XMM4,%XMM1;  (8) 
0x402bb0;:0;MOV	$0x4113b8,%EDI;  (8) 
0x402bb5;:0;CMOVB	%RBX,%RDX;  (8) 
0x402bb9;:0;MOV	%R13,%RSI;  (8) 
0x402bbc;:0;MOV	$0x3,%EAX;  (8) 
0x402bc1;:0;CALL	402030 <printf@plt>;  (8) 
0x402bc6;:0;MOV	0x4a7f3(%RIP),%RDI;  (8) 
0x402bcd;:0;CALL	4020e0 <fflush@plt>;  (8) 
0x402bd2;:0;ADD	$0x1,%R13;  (8) 
0x402bd6;:0;CMP	$0xa,%R13;  (8) 
0x402bda;:0;JB	402617 <main+0x327>;  (8) 
