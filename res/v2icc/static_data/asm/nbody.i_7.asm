address;source_location;insn;indent
0x402686;:0;VMOVSS	(%R8,%RAX,4),%XMM7;
0x40268c;:0;VMOVSS	(%R10,%RAX,4),%XMM9;
0x402692;:0;VMOVAPS	%ZMM16,%ZMM0;
0x402698;:0;VMOVAPS	%ZMM0,%ZMM1;
0x40269e;:0;VMOVAPS	%ZMM1,%ZMM3;
0x4026a4;:0;VMOVSS	(%R11,%RAX,4),%XMM8;
0x4026aa;:0;VXORPS	0xface(%RIP),%XMM7,%XMM4;
0x4026b2;:0;VXORPS	0xfac6(%RIP),%XMM9,%XMM5;
0x4026ba;:0;VXORPS	0xfabe(%RIP),%XMM8,%XMM6;
0x4026c2;:0;CMP	$0x960,%R15;
0x4026c9;:0;JB	403603 <main+0x1313>;
0x4026cf;:0;MOV	0xa8(%RSP),%RBX;
0x4026d7;:0;TEST	%RBX,%RBX;
0x4026da;:0;JE	40285e <main+0x56e>;
0x4026e0;:0;CMPQ	$0,0xa0(%RSP);
0x4026e9;:0;JNE	4035e7 <main+0x12f7>;
0x4026ef;:0;CMP	%R14,%R15;
0x4026f2;:0;MOV	%R14,%RBX;
0x4026f5;:0;CMOVB	%R15,%RBX;
0x4026f9;:0;MOV	%R15,%R9;
0x4026fc;:0;SUB	%RBX,%R9;
0x4026ff;:0;AND	$0xf,%R9;
0x402703;:0;NEG	%R9;
0x402706;:0;ADD	%R15,%R9;
0x402709;:0;CMP	$0x1,%RBX;
0x40270d;:0;JB	402866 <main+0x576>;
0x402713;:0;VMOVAPS	%ZMM19,%ZMM31;
0x402719;:0;VMOVAPS	%ZMM18,%ZMM30;
0x40271f;:0;VPBROADCASTQ	%RBX,%ZMM29;
0x402725;:0;VBROADCASTSS	%XMM4,%ZMM28;
0x40272b;:0;XOR	%EDX,%EDX;
0x40272d;:0;VBROADCASTSS	%XMM5,%ZMM10;
0x402733;:0;VBROADCASTSS	%XMM6,%ZMM27;
0x402739;:0;VPCMPNLEUQ	%ZMM31,%ZMM29,%K1;  (10) 
0x402740;:0;VPCMPNLEUQ	%ZMM30,%ZMM29,%K0;  (10) 
0x402747;:0;KUNPCKBW	%K1,%K0,%K2;  (10) 
0x40274b;:0;VMOVAPS	%ZMM17,%ZMM21;  (10) 
0x402751;:0;VPADDQ	%ZMM20,%ZMM31,%ZMM31;  (10) 
0x402757;:0;VMOVUPS	(%R8,%RDX,4),%ZMM26{%K2}{z};  (10) 
0x40275e;:0;VMOVUPS	(%R10,%RDX,4),%ZMM25{%K2}{z};  (10) 
0x402765;:0;VPADDQ	%ZMM20,%ZMM30,%ZMM30;  (10) 
0x40276b;:0;VADDPS	%ZMM26,%ZMM28,%ZMM26;  (10) 
0x402771;:0;VADDPS	%ZMM25,%ZMM10,%ZMM25;  (10) 
0x402777;:0;VMOVUPS	(%R11,%RDX,4),%ZMM24{%K2}{z};  (10) 
0x40277e;:0;ADD	$0x10,%RDX;  (10) 
0x402782;:0;VFMADD231PS	%ZMM26,%ZMM26,%ZMM21;  (10) 
0x402788;:0;VADDPS	%ZMM24,%ZMM27,%ZMM24;  (10) 
0x40278e;:0;VFMADD231PS	%ZMM25,%ZMM25,%ZMM21;  (10) 
0x402794;:0;VFMADD231PS	%ZMM24,%ZMM24,%ZMM21;  (10) 
0x40279a;:0;VCVTPS2PD	%YMM21,%ZMM23;  (10) 
0x4027a0;:0;VEXTRACTF64X4	$0x1,%ZMM21,%YMM21;  (10) 
0x4027a7;:0;VMOVAPS	%ZMM23,%ZMM12;  (10) 
0x4027ad;:0;VCVTPS2PD	%YMM21,%ZMM22;  (10) 
0x4027b3;:0;(bad);  (10) 
0x4027b4;:0;MOV	%AL,-0x3;  (10) 
0x4027b6;:0;POP	%RAX;  (10) 
0x4027b7;:0;INT	$0x3;  (10) 
0x4027b8;:0;OUT	%EAX,%DX;  (10) 
0x4027b9;:0;VMOVAPS	%ZMM22,%ZMM14;  (10) 
0x4027bf;:0;VMULPD	{rn-sae},%ZMM23,%ZMM21,%ZMM11;  (10) 
0x4027c5;:0;VSCALEFPD	0xf9d1(%RIP){1to8},%ZMM21,%ZMM21;  (10) 
0x4027cf;:0;VFNMADD231PD	{rn-sae},%ZMM11,%ZMM11,%ZMM12;  (10) 
0x4027d5;:0;VFMADD213PD	%ZMM11,%ZMM21,%ZMM12;  (10) 
0x4027db;:0;VFIXUPIMMPD	$0x70,0xf9c2(%RIP){1to8},%ZMM23,%ZMM12;  (10) 
0x4027e6;:0;VMULPD	%ZMM23,%ZMM12,%ZMM21;  (10) 
0x4027ec;:0;(bad);  (10) 
0x4027ed;:0;MOV	%AL,-0x3;  (10) 
0x4027ef;:0;POP	%RAX;  (10) 
0x4027f0;:0;INT	$0x3;  (10) 
0x4027f1;:0;(bad);  (10) 
0x4027f2;:0;VCVTPD2PS	%ZMM21,%YMM21;  (10) 
0x4027f8;:0;VMULPD	{rn-sae},%ZMM22,%ZMM23,%ZMM13;  (10) 
0x4027fe;:0;VSCALEFPD	0xf998(%RIP){1to8},%ZMM23,%ZMM23;  (10) 
0x402808;:0;VFNMADD231PD	{rn-sae},%ZMM13,%ZMM13,%ZMM14;  (10) 
0x40280e;:0;VFMADD213PD	%ZMM13,%ZMM23,%ZMM14;  (10) 
0x402814;:0;VFIXUPIMMPD	$0x70,0xf989(%RIP){1to8},%ZMM22,%ZMM14;  (10) 
0x40281f;:0;VMULPD	%ZMM22,%ZMM14,%ZMM22;  (10) 
0x402825;:0;VCVTPD2PS	%ZMM22,%YMM15;  (10) 
0x40282b;:0;VINSERTF64X4	$0x1,%YMM15,%ZMM21,%ZMM21;  (10) 
0x402832;:0;VRCP28PS	%ZMM21,%ZMM22;  (10) 
0x402838;:0;VFMADD231PS	%ZMM26,%ZMM22,%ZMM0{%K2};  (10) 
0x40283e;:0;VFMADD231PS	%ZMM25,%ZMM22,%ZMM1{%K2};  (10) 
0x402844;:0;VFMADD231PS	%ZMM24,%ZMM22,%ZMM3{%K2};  (10) 
0x40284a;:0;CMP	%RBX,%RDX;  (10) 
0x40284d;:0;JB	402739 <main+0x449>;  (10) 
0x402853;:0;CMP	%RBX,%R15;
0x402856;:0;JE	402ace <main+0x7de>;
0x40285c;:0;JMP	402866 <main+0x576>;
0x40285e;:0;MOV	0x98(%RSP),%R9;
0x402866;:0;LEA	0x10(%RBX),%RDX;
0x40286a;:0;CMP	%RDX,%R9;
0x40286d;:0;JB	40296f <main+0x67f>;
0x402873;:0;VBROADCASTSS	%XMM4,%ZMM26;
0x402879;:0;VBROADCASTSS	%XMM5,%ZMM27;
0x40287f;:0;VBROADCASTSS	%XMM6,%ZMM22;
0x402885;:0;VADDPS	(%R8,%RBX,4),%ZMM26,%ZMM23;  (9) 
0x40288c;:0;VMOVAPS	%ZMM17,%ZMM28;  (9) 
0x402892;:0;VADDPS	(%R10,%RBX,4),%ZMM27,%ZMM24;  (9) 
0x402899;:0;VFMADD231PS	%ZMM23,%ZMM23,%ZMM28;  (9) 
0x40289f;:0;VADDPS	(%R11,%RBX,4),%ZMM22,%ZMM25;  (9) 
0x4028a6;:0;ADD	$0x10,%RBX;  (9) 
0x4028aa;:0;VFMADD231PS	%ZMM24,%ZMM24,%ZMM28;  (9) 
0x4028b0;:0;VFMADD231PS	%ZMM25,%ZMM25,%ZMM28;  (9) 
0x4028b6;:0;VCVTPS2PD	%YMM28,%ZMM10;  (9) 
0x4028bc;:0;VEXTRACTF64X4	$0x1,%ZMM28,%YMM29;  (9) 
0x4028c3;:0;(bad);  (9) 
0x4028c4;:0;(bad);  (9) 
0x4028c5;:0;STD;  (9) 
0x4028c6;:0;POP	%RAX;  (9) 
0x4028c7;:0;INT	$0x3;  (9) 
0x4028c8;:0;VCVTPS2PD	%YMM29,%ZMM21;  (9) 
0x4028cf;:0;VMOVAPS	%ZMM10,%ZMM29;  (9) 
0x4028d5;:0;VMULPD	{rn-sae},%ZMM10,%ZMM30,%ZMM28;  (9) 
0x4028db;:0;VSCALEFPD	0xf8bb(%RIP){1to8},%ZMM30,%ZMM31;  (9) 
0x4028e5;:0;VFNMADD231PD	{rn-sae},%ZMM28,%ZMM28,%ZMM29;  (9) 
0x4028eb;:0;VFMADD213PD	%ZMM28,%ZMM31,%ZMM29;  (9) 
0x4028f1;:0;(bad);  (9) 
0x4028f2;:0;AND	%CH,%BH;  (9) 
0x4028f4;:0;POP	%RAX;  (9) 
0x4028f5;:0;INT	$0x3;  (9) 
0x4028f6;:0;IN	$0x62,%EAX;  (9) 
0x4028f8;:0;(bad);  (9) 
0x4028f9;:0;LODSL	(%RSI);  (9) 
0x4028fa;:0;POP	%RAX;  (9) 
0x4028fb;:0;PUSH	%RSP;  (9) 
0x4028fc;:0;SUB	$0xf8a6,%EAX;  (9) 
0x402901;:0;JO	402965 <main+0x675>;  (9) 
0x402903;:0;XCHG	%R13D,%EAX;  (9) 
0x402905;:0;POP	%RCX;  (9) 
0x402907;:0;(bad);  (9) 
0x402908;:0;VMULPD	{rn-sae},%ZMM21,%ZMM28,%ZMM30;  (9) 
0x40290e;:0;VSCALEFPD	0xf888(%RIP){1to8},%ZMM28,%ZMM28;  (9) 
0x402918;:0;VCVTPD2PS	%ZMM29,%YMM31;  (9) 
0x40291e;:0;VMOVAPS	%ZMM21,%ZMM29;  (9) 
0x402924;:0;VFNMADD231PD	{rn-sae},%ZMM30,%ZMM30,%ZMM29;  (9) 
0x40292a;:0;VFMADD213PD	%ZMM30,%ZMM28,%ZMM29;  (9) 
0x402930;:0;VFIXUPIMMPD	$0x70,0xf86d(%RIP){1to8},%ZMM21,%ZMM29;  (9) 
0x40293b;:0;VMULPD	%ZMM21,%ZMM29,%ZMM21;  (9) 
0x402941;:0;VCVTPD2PS	%ZMM21,%YMM11;  (9) 
0x402947;:0;VINSERTF64X4	$0x1,%YMM11,%ZMM31,%ZMM21;  (9) 
0x40294e;:0;VRCP28PS	%ZMM21,%ZMM21;  (9) 
0x402954;:0;VFMADD231PS	%ZMM23,%ZMM21,%ZMM0;  (9) 
0x40295a;:0;VFMADD231PS	%ZMM24,%ZMM21,%ZMM1;  (9) 
0x402960;:0;VFMADD231PS	%ZMM25,%ZMM21,%ZMM3;  (9) 
0x402966;:0;CMP	%R9,%RBX;  (9) 
0x402969;:0;JB	402885 <main+0x595>;  (9) 
0x40296f;:0;LEA	0x1(%R9),%RDX;
0x402973;:0;CMP	%R15,%RDX;
0x402976;:0;JA	402ace <main+0x7de>;
0x40297c;:0;MOV	%R15,%RBX;
0x40297f;:0;VMOVAPS	%ZMM19,%ZMM30;
0x402985;:0;VMOVAPS	%ZMM18,%ZMM29;
0x40298b;:0;VBROADCASTSS	%XMM4,%ZMM28;
0x402991;:0;VBROADCASTSS	%XMM5,%ZMM27;
0x402997;:0;XOR	%EDX,%EDX;
0x402999;:0;SUB	%R9,%RBX;
0x40299c;:0;VBROADCASTSS	%XMM6,%ZMM25;
0x4029a2;:0;VPBROADCASTQ	%RBX,%ZMM26;
0x4029a8;:0;LEA	(%R8,%R9,4),%RSI;
0x4029ac;:0;LEA	(%R10,%R9,4),%RDI;
0x4029b0;:0;LEA	(%R11,%R9,4),%R9;
0x4029b4;:0;VPCMPNLEUQ	%ZMM30,%ZMM26,%K1;  (8) 
0x4029bb;:0;VPCMPNLEUQ	%ZMM29,%ZMM26,%K0;  (8) 
0x4029c2;:0;KUNPCKBW	%K1,%K0,%K2;  (8) 
0x4029c6;:0;VMOVAPS	%ZMM17,%ZMM21;  (8) 
0x4029cc;:0;VPADDQ	%ZMM20,%ZMM30,%ZMM30;  (8) 
0x4029d2;:0;VMOVUPS	(%RSI,%RDX,4),%ZMM31{%K2}{z};  (8) 
0x4029d9;:0;VMOVUPS	(%RDI,%RDX,4),%ZMM23{%K2}{z};  (8) 
0x4029e0;:0;VPADDQ	%ZMM20,%ZMM29,%ZMM29;  (8) 
0x4029e6;:0;VADDPS	%ZMM31,%ZMM28,%ZMM24;  (8) 
0x4029ec;:0;VADDPS	%ZMM23,%ZMM27,%ZMM23;  (8) 
0x4029f2;:0;VMOVUPS	(%R9,%RDX,4),%ZMM22{%K2}{z};  (8) 
0x4029f9;:0;ADD	$0x10,%RDX;  (8) 
0x4029fd;:0;VFMADD231PS	%ZMM24,%ZMM24,%ZMM21;  (8) 
0x402a03;:0;VADDPS	%ZMM22,%ZMM25,%ZMM22;  (8) 
0x402a09;:0;VFMADD231PS	%ZMM23,%ZMM23,%ZMM21;  (8) 
0x402a0f;:0;VFMADD231PS	%ZMM22,%ZMM22,%ZMM21;  (8) 
0x402a15;:0;VCVTPS2PD	%YMM21,%ZMM6;  (8) 
0x402a1b;:0;VEXTRACTF64X4	$0x1,%ZMM21,%YMM21;  (8) 
0x402a22;:0;(bad);  (8) 
0x402a23;:0;(bad);  (8) 
0x402a24;:0;STD;  (8) 
0x402a25;:0;POP	%RAX;  (8) 
0x402a26;:0;INT	$0x3;  (8) 
0x402a27;:0;(bad);  (8) 
0x402a28;:0;VMOVAPS	%ZMM6,%ZMM5;  (8) 
0x402a2e;:0;VCVTPS2PD	%YMM21,%ZMM21;  (8) 
0x402a34;:0;VMOVAPS	%ZMM21,%ZMM12;  (8) 
0x402a3a;:0;VMULPD	{rn-sae},%ZMM6,%ZMM31,%ZMM4;  (8) 
0x402a40;:0;VSCALEFPD	0xf756(%RIP){1to8},%ZMM31,%ZMM31;  (8) 
0x402a4a;:0;VFNMADD231PD	{rn-sae},%ZMM4,%ZMM4,%ZMM5;  (8) 
0x402a50;:0;VFMADD213PD	%ZMM4,%ZMM31,%ZMM5;  (8) 
0x402a56;:0;(bad);  (8) 
0x402a57;:0;AND	%CH,%BH;  (8) 
0x402a59;:0;POP	%RAX;  (8) 
0x402a5a;:0;INT	$0x3;  (8) 
0x402a5b;:0;STD;  (8) 
0x402a5c;:0;VFIXUPIMMPD	$0x70,0xf741(%RIP){1to8},%ZMM6,%ZMM5;  (8) 
0x402a67;:0;VMULPD	{rn-sae},%ZMM21,%ZMM31,%ZMM11;  (8) 
0x402a6d;:0;VSCALEFPD	0xf729(%RIP){1to8},%ZMM31,%ZMM31;  (8) 
0x402a77;:0;VMULPD	%ZMM6,%ZMM5,%ZMM10;  (8) 
0x402a7d;:0;VFNMADD231PD	{rn-sae},%ZMM11,%ZMM11,%ZMM12;  (8) 
0x402a83;:0;VCVTPD2PS	%ZMM10,%YMM14;  (8) 
0x402a89;:0;VFMADD213PD	%ZMM11,%ZMM31,%ZMM12;  (8) 
0x402a8f;:0;VFIXUPIMMPD	$0x70,0xf70e(%RIP){1to8},%ZMM21,%ZMM12;  (8) 
0x402a9a;:0;VMULPD	%ZMM21,%ZMM12,%ZMM21;  (8) 
0x402aa0;:0;VCVTPD2PS	%ZMM21,%YMM13;  (8) 
0x402aa6;:0;VINSERTF64X4	$0x1,%YMM13,%ZMM14,%ZMM21;  (8) 
0x402aad;:0;VRCP28PS	%ZMM21,%ZMM21;  (8) 
0x402ab3;:0;VFMADD231PS	%ZMM24,%ZMM21,%ZMM0{%K2};  (8) 
0x402ab9;:0;VFMADD231PS	%ZMM23,%ZMM21,%ZMM1{%K2};  (8) 
0x402abf;:0;VFMADD231PS	%ZMM22,%ZMM21,%ZMM3{%K2};  (8) 
0x402ac5;:0;CMP	%RBX,%RDX;  (8) 
0x402ac8;:0;JB	4029b4 <main+0x6c4>;  (8) 
0x402ace;:0;VEXTRACTF64X4	$0x1,%ZMM0,%YMM4;
0x402ad5;:0;VADDPS	%YMM0,%YMM4,%YMM6;
0x402ad9;:0;VEXTRACTF64X4	$0x1,%ZMM1,%YMM0;
0x402ae0;:0;VADDPS	%YMM1,%YMM0,%YMM1;
0x402ae4;:0;VPERMPD	$-0x1,%YMM6,%YMM5;
0x402aea;:0;VPERMPD	$-0x56,%YMM6,%YMM10;
0x402af0;:0;VPERMPD	$0x55,%YMM6,%YMM11;
0x402af6;:0;VADDPS	%YMM6,%YMM5,%YMM12;
0x402afa;:0;VADDPS	%YMM11,%YMM10,%YMM13;
0x402aff;:0;VPERMPD	$-0x1,%YMM1,%YMM0;
0x402b05;:0;VADDPS	%YMM13,%YMM12,%YMM14;
0x402b0a;:0;VEXTRACTF64X4	$0x1,%ZMM3,%YMM13;
0x402b11;:0;VADDPS	%YMM3,%YMM13,%YMM13;
0x402b15;:0;VPERMPD	$-0x56,%YMM1,%YMM4;
0x402b1b;:0;VPERMPD	$0x55,%YMM1,%YMM5;
0x402b21;:0;VADDPS	%YMM1,%YMM0,%YMM6;
0x402b25;:0;VPERMPD	$-0x1,%YMM13,%YMM3;
0x402b2b;:0;VPERMPD	$-0x56,%YMM13,%YMM0;
0x402b31;:0;VPERMPD	$0x55,%YMM13,%YMM1;
0x402b37;:0;VADDPS	%YMM5,%YMM4,%YMM10;
0x402b3b;:0;VADDPS	%YMM13,%YMM3,%YMM4;
0x402b40;:0;VADDPS	%YMM1,%YMM0,%YMM5;
0x402b44;:0;VADDPS	%YMM10,%YMM6,%YMM11;
0x402b49;:0;VADDPS	%YMM5,%YMM4,%YMM6;
0x402b4d;:0;VPSRLQ	$0x20,%XMM14,%XMM15;
0x402b53;:0;VPSRLQ	$0x20,%XMM11,%XMM12;
0x402b59;:0;VPSRLQ	$0x20,%XMM6,%XMM10;
0x402b5e;:0;VADDSS	%XMM14,%XMM15,%XMM21;
0x402b64;:0;VADDSS	%XMM11,%XMM12,%XMM22;
0x402b6a;:0;VADDSS	%XMM6,%XMM10,%XMM23;
0x402b70;:0;VFMADD213SS	(%R13,%RAX,4),%XMM2,%XMM21;
0x402b78;:0;VMOVSS	%XMM21,(%R13,%RAX,4);
0x402b80;:0;VFMADD213SS	(%RCX,%RAX,4),%XMM2,%XMM22;
0x402b87;:0;VMOVSS	%XMM22,(%RCX,%RAX,4);
0x402b8e;:0;VFMADD213SS	(%R12,%RAX,4),%XMM2,%XMM23;
0x402b95;:0;VMOVSS	%XMM23,(%R12,%RAX,4);
0x402b9c;:0;VFMADD213SS	%XMM7,%XMM2,%XMM21;
0x402ba2;:0;VMOVSS	%XMM21,(%R8,%RAX,4);
0x402ba9;:0;VFMADD213SS	%XMM9,%XMM2,%XMM22;
0x402baf;:0;VMOVSS	%XMM22,(%R10,%RAX,4);
0x402bb6;:0;VFMADD213SS	%XMM8,%XMM2,%XMM23;
0x402bbc;:0;VMOVSS	%XMM23,(%R11,%RAX,4);
0x402bc3;:0;ADD	$0x1,%RAX;
0x402bc7;:0;CMP	%R15,%RAX;
0x402bca;:0;JB	402686 <main+0x396>;
0x4035e7;:0;XOR	%R9D,%R9D;
0x4035ea;:0;JMP	40296f <main+0x67f>;
0x403603;:0;MOV	0x38(%RSP),%R9;
0x403608;:0;XOR	%EBX,%EBX;
0x40360a;:0;JMP	402866 <main+0x576>;
