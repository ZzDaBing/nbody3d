address;source_location;insn;indent
0x402f08;:0;VMOVSS	(%R11,%RDI,4),%XMM7;
0x402f0e;:0;VMOVSS	(%R14,%RDI,4),%XMM9;
0x402f14;:0;VMOVAPS	%ZMM20,%ZMM0;
0x402f1a;:0;VMOVAPS	%ZMM0,%ZMM1;
0x402f20;:0;VMOVAPS	%ZMM1,%ZMM3;
0x402f26;:0;VMOVSS	(%R13,%RDI,4),%XMM8;
0x402f2d;:0;VXORPS	0xf24b(%RIP),%XMM7,%XMM4;
0x402f35;:0;VXORPS	0xf243(%RIP),%XMM9,%XMM5;
0x402f3d;:0;VXORPS	0xf23b(%RIP),%XMM8,%XMM6;
0x402f45;:0;CMP	$0x960,%R15;
0x402f4c;:0;JB	4035f7 <main+0x1307>;
0x402f52;:0;MOV	0xa8(%RSP),%RDX;
0x402f5a;:0;TEST	%RDX,%RDX;
0x402f5d;:0;JE	4030e2 <main+0xdf2>;
0x402f63;:0;CMPQ	$0,0xa0(%RSP);
0x402f6c;:0;JNE	4035ef <main+0x12ff>;
0x402f72;:0;CMP	%RCX,%R15;
0x402f75;:0;MOV	%RCX,%RDX;
0x402f78;:0;CMOVB	%R15,%RDX;
0x402f7c;:0;MOV	%R15,%R9;
0x402f7f;:0;SUB	%RDX,%R9;
0x402f82;:0;AND	$0xf,%R9;
0x402f86;:0;NEG	%R9;
0x402f89;:0;ADD	%R15,%R9;
0x402f8c;:0;CMP	$0x1,%RDX;
0x402f90;:0;JB	4030ea <main+0xdfa>;
0x402f96;:0;VMOVAPS	%ZMM18,%ZMM31;
0x402f9c;:0;VMOVAPS	%ZMM17,%ZMM29;
0x402fa2;:0;VPBROADCASTQ	%RDX,%ZMM28;
0x402fa8;:0;VBROADCASTSS	%XMM4,%ZMM27;
0x402fae;:0;XOR	%EAX,%EAX;
0x402fb0;:0;VBROADCASTSS	%XMM5,%ZMM30;
0x402fb6;:0;VBROADCASTSS	%XMM6,%ZMM10;
0x402fbc;:0;VPCMPNLEUQ	%ZMM31,%ZMM28,%K1;  (5) 
0x402fc3;:0;VPCMPNLEUQ	%ZMM29,%ZMM28,%K0;  (5) 
0x402fca;:0;KUNPCKBW	%K1,%K0,%K2;  (5) 
0x402fce;:0;VMOVAPS	%ZMM16,%ZMM22;  (5) 
0x402fd4;:0;VPADDQ	%ZMM19,%ZMM31,%ZMM31;  (5) 
0x402fda;:0;VMOVUPS	(%R11,%RAX,4),%ZMM26{%K2}{z};  (5) 
0x402fe1;:0;VMOVUPS	(%R14,%RAX,4),%ZMM25{%K2}{z};  (5) 
0x402fe8;:0;VPADDQ	%ZMM19,%ZMM29,%ZMM29;  (5) 
0x402fee;:0;VADDPS	%ZMM26,%ZMM27,%ZMM26;  (5) 
0x402ff4;:0;VADDPS	%ZMM25,%ZMM30,%ZMM25;  (5) 
0x402ffa;:0;VMOVUPS	(%R13,%RAX,4),%ZMM24{%K2}{z};  (5) 
0x403002;:0;ADD	$0x10,%RAX;  (5) 
0x403006;:0;VFMADD231PS	%ZMM26,%ZMM26,%ZMM22;  (5) 
0x40300c;:0;VADDPS	%ZMM24,%ZMM10,%ZMM24;  (5) 
0x403012;:0;VFMADD231PS	%ZMM25,%ZMM25,%ZMM22;  (5) 
0x403018;:0;VFMADD231PS	%ZMM24,%ZMM24,%ZMM22;  (5) 
0x40301e;:0;VCVTPS2PD	%YMM22,%ZMM23;  (5) 
0x403024;:0;VEXTRACTF64X4	$0x1,%ZMM22,%YMM22;  (5) 
0x40302b;:0;(bad);  (5) 
0x40302c;:0;MOV	%AL,-0x3;  (5) 
0x40302e;:0;POP	%RAX;  (5) 
0x40302f;:0;INT	$0x3;  (5) 
0x403030;:0;OUT	%EAX,%DX;  (5) 
0x403031;:0;VCVTPS2PD	%YMM22,%ZMM22;  (5) 
0x403037;:0;(bad);  (5) 
0x403038;:0;XOR	%CH,%BH;  (5) 
0x40303a;:0;POP	%RAX;  (5) 
0x40303b;:0;INT	$0x3;  (5) 
0x40303c;:0;OUT	%AL,%DX;  (5) 
0x40303d;:0;VMULPD	{rn-sae},%ZMM23,%ZMM21,%ZMM12;  (5) 
0x403043;:0;VSCALEFPD	0xf153(%RIP){1to8},%ZMM21,%ZMM11;  (5) 
0x40304d;:0;VMOVAPS	%ZMM23,%ZMM21;  (5) 
0x403053;:0;VSCALEFPD	0xf143(%RIP){1to8},%ZMM13,%ZMM14;  (5) 
0x40305d;:0;VFNMADD231PD	{rn-sae},%ZMM12,%ZMM12,%ZMM21;  (5) 
0x403063;:0;VMULPD	{rn-sae},%ZMM22,%ZMM13,%ZMM15;  (5) 
0x403069;:0;VFMADD213PD	%ZMM12,%ZMM11,%ZMM21;  (5) 
0x40306f;:0;VMOVAPS	%ZMM22,%ZMM11;  (5) 
0x403075;:0;VFNMADD231PD	{rn-sae},%ZMM15,%ZMM15,%ZMM11;  (5) 
0x40307b;:0;VFIXUPIMMPD	$0x70,0xf122(%RIP){1to8},%ZMM23,%ZMM21;  (5) 
0x403086;:0;VFMADD213PD	%ZMM15,%ZMM14,%ZMM11;  (5) 
0x40308c;:0;VMULPD	%ZMM23,%ZMM21,%ZMM21;  (5) 
0x403092;:0;VFIXUPIMMPD	$0x70,0xf10b(%RIP){1to8},%ZMM22,%ZMM11;  (5) 
0x40309d;:0;VCVTPD2PS	%ZMM21,%YMM23;  (5) 
0x4030a3;:0;VMULPD	%ZMM22,%ZMM11,%ZMM22;  (5) 
0x4030a9;:0;VCVTPD2PS	%ZMM22,%YMM12;  (5) 
0x4030af;:0;VINSERTF64X4	$0x1,%YMM12,%ZMM23,%ZMM21;  (5) 
0x4030b6;:0;VRCP28PS	%ZMM21,%ZMM21;  (5) 
0x4030bc;:0;VFMADD231PS	%ZMM26,%ZMM21,%ZMM0{%K2};  (5) 
0x4030c2;:0;VFMADD231PS	%ZMM25,%ZMM21,%ZMM1{%K2};  (5) 
0x4030c8;:0;VFMADD231PS	%ZMM24,%ZMM21,%ZMM3{%K2};  (5) 
0x4030ce;:0;CMP	%RDX,%RAX;  (5) 
0x4030d1;:0;JB	402fbc <main+0xccc>;  (5) 
0x4030d7;:0;CMP	%RDX,%R15;
0x4030da;:0;JE	403354 <main+0x1064>;
0x4030e0;:0;JMP	4030ea <main+0xdfa>;
0x4030e2;:0;MOV	0x98(%RSP),%R9;
0x4030ea;:0;LEA	0x10(%RDX),%RAX;
0x4030ee;:0;CMP	%RAX,%R9;
0x4030f1;:0;JB	4031f4 <main+0xf04>;
0x4030f7;:0;VBROADCASTSS	%XMM4,%ZMM25;
0x4030fd;:0;VBROADCASTSS	%XMM5,%ZMM26;
0x403103;:0;VBROADCASTSS	%XMM6,%ZMM27;
0x403109;:0;VADDPS	(%R11,%RDX,4),%ZMM25,%ZMM22;  (4) 
0x403110;:0;VMOVAPS	%ZMM16,%ZMM28;  (4) 
0x403116;:0;VADDPS	(%R14,%RDX,4),%ZMM26,%ZMM23;  (4) 
0x40311d;:0;VFMADD231PS	%ZMM22,%ZMM22,%ZMM28;  (4) 
0x403123;:0;VADDPS	(%R13,%RDX,4),%ZMM27,%ZMM24;  (4) 
0x40312b;:0;ADD	$0x10,%RDX;  (4) 
0x40312f;:0;VFMADD231PS	%ZMM23,%ZMM23,%ZMM28;  (4) 
0x403135;:0;VFMADD231PS	%ZMM24,%ZMM24,%ZMM28;  (4) 
0x40313b;:0;VCVTPS2PD	%YMM28,%ZMM21;  (4) 
0x403141;:0;VEXTRACTF64X4	$0x1,%ZMM28,%YMM29;  (4) 
0x403148;:0;(bad);  (4) 
0x403149;:0;AND	%CH,%BH;  (4) 
0x40314b;:0;POP	%RAX;  (4) 
0x40314c;:0;INT	$0x3;  (4) 
0x40314d;:0;CMC;  (4) 
0x40314e;:0;VCVTPS2PD	%YMM29,%ZMM10;  (4) 
0x403154;:0;VMOVAPS	%ZMM10,%ZMM29;  (4) 
0x40315a;:0;VMULPD	{rn-sae},%ZMM21,%ZMM30,%ZMM28;  (4) 
0x403160;:0;VSCALEFPD	0xf036(%RIP){1to8},%ZMM30,%ZMM31;  (4) 
0x40316a;:0;VMOVAPS	%ZMM21,%ZMM30;  (4) 
0x403170;:0;VFNMADD231PD	{rn-sae},%ZMM28,%ZMM28,%ZMM30;  (4) 
0x403176;:0;VFMADD213PD	%ZMM28,%ZMM31,%ZMM30;  (4) 
0x40317c;:0;(bad);  (4) 
0x40317d;:0;(bad);  (4) 
0x40317e;:0;STD;  (4) 
0x40317f;:0;POP	%RAX;  (4) 
0x403180;:0;INT	$0x3;  (4) 
0x403181;:0;LOOP	4031e5 <main+0xef5>;  (4) 
0x403183;:0;(bad);  (4) 
0x403184;:0;(bad);  (4) 
0x403185;:0;PUSH	%RAX;  (4) 
0x403186;:0;PUSH	%RSP;  (4) 
0x403187;:0;XOR	$0xf01b,%EAX;  (4) 
0x40318c;:0;JO	4031f0 <main+0xf00>;  (4) 
0x40318e;:0;(bad);  (4) 
0x40318f;:0;POPFQ;  (4) 
0x403190;:0;ADC	%BL,-0x6(%RCX);  (4) 
0x403193;:0;VSCALEFPD	0xf003(%RIP){1to8},%ZMM28,%ZMM28;  (4) 
0x40319d;:0;VMULPD	%ZMM21,%ZMM30,%ZMM21;  (4) 
0x4031a3;:0;VFNMADD231PD	{rn-sae},%ZMM31,%ZMM31,%ZMM29;  (4) 
0x4031a9;:0;VCVTPD2PS	%ZMM21,%YMM21;  (4) 
0x4031af;:0;VFMADD213PD	%ZMM31,%ZMM28,%ZMM29;  (4) 
0x4031b5;:0;VFIXUPIMMPD	$0x70,0xefe8(%RIP){1to8},%ZMM10,%ZMM29;  (4) 
0x4031c0;:0;VMULPD	%ZMM10,%ZMM29,%ZMM28;  (4) 
0x4031c6;:0;VCVTPD2PS	%ZMM28,%YMM11;  (4) 
0x4031cc;:0;VINSERTF64X4	$0x1,%YMM11,%ZMM21,%ZMM21;  (4) 
0x4031d3;:0;VRCP28PS	%ZMM21,%ZMM21;  (4) 
0x4031d9;:0;VFMADD231PS	%ZMM22,%ZMM21,%ZMM0;  (4) 
0x4031df;:0;VFMADD231PS	%ZMM23,%ZMM21,%ZMM1;  (4) 
0x4031e5;:0;VFMADD231PS	%ZMM24,%ZMM21,%ZMM3;  (4) 
0x4031eb;:0;CMP	%R9,%RDX;  (4) 
0x4031ee;:0;JB	403109 <main+0xe19>;  (4) 
0x4031f4;:0;LEA	0x1(%R9),%RAX;
0x4031f8;:0;CMP	%R15,%RAX;
0x4031fb;:0;JA	403354 <main+0x1064>;
0x403201;:0;MOV	%R15,%RDX;
0x403204;:0;VMOVAPS	%ZMM18,%ZMM30;
0x40320a;:0;VMOVAPS	%ZMM17,%ZMM29;
0x403210;:0;VBROADCASTSS	%XMM4,%ZMM28;
0x403216;:0;VBROADCASTSS	%XMM5,%ZMM27;
0x40321c;:0;XOR	%EAX,%EAX;
0x40321e;:0;SUB	%R9,%RDX;
0x403221;:0;VBROADCASTSS	%XMM6,%ZMM25;
0x403227;:0;VPBROADCASTQ	%RDX,%ZMM26;
0x40322d;:0;LEA	(%R11,%R9,4),%RSI;
0x403231;:0;LEA	(%R14,%R9,4),%R8;
0x403235;:0;LEA	(%R13,%R9,4),%R9;
0x40323a;:0;VPCMPNLEUQ	%ZMM30,%ZMM26,%K1;  (3) 
0x403241;:0;VPCMPNLEUQ	%ZMM29,%ZMM26,%K0;  (3) 
0x403248;:0;KUNPCKBW	%K1,%K0,%K2;  (3) 
0x40324c;:0;VPADDQ	%ZMM19,%ZMM30,%ZMM30;  (3) 
0x403252;:0;VPADDQ	%ZMM19,%ZMM29,%ZMM29;  (3) 
0x403258;:0;VMOVUPS	(%RSI,%RAX,4),%ZMM31{%K2}{z};  (3) 
0x40325f;:0;VMOVUPS	(%R8,%RAX,4),%ZMM23{%K2}{z};  (3) 
0x403266;:0;VADDPS	%ZMM31,%ZMM28,%ZMM24;  (3) 
0x40326c;:0;VMOVAPS	%ZMM16,%ZMM31;  (3) 
0x403272;:0;VMOVUPS	(%R9,%RAX,4),%ZMM22{%K2}{z};  (3) 
0x403279;:0;ADD	$0x10,%RAX;  (3) 
0x40327d;:0;VADDPS	%ZMM23,%ZMM27,%ZMM23;  (3) 
0x403283;:0;VFMADD231PS	%ZMM24,%ZMM24,%ZMM31;  (3) 
0x403289;:0;VADDPS	%ZMM22,%ZMM25,%ZMM22;  (3) 
0x40328f;:0;VFMADD231PS	%ZMM23,%ZMM23,%ZMM31;  (3) 
0x403295;:0;VFMADD231PS	%ZMM22,%ZMM22,%ZMM31;  (3) 
0x40329b;:0;VCVTPS2PD	%YMM31,%ZMM21;  (3) 
0x4032a1;:0;VEXTRACTF64X4	$0x1,%ZMM31,%YMM31;  (3) 
0x4032a8;:0;VMOVAPS	%ZMM21,%ZMM6;  (3) 
0x4032ae;:0;VCVTPS2PD	%YMM31,%ZMM11;  (3) 
0x4032b4;:0;(bad);  (3) 
0x4032b5;:0;AND	%CH,%BH;  (3) 
0x4032b7;:0;POP	%RAX;  (3) 
0x4032b8;:0;INT	$0x3;  (3) 
0x4032b9;:0;STD;  (3) 
0x4032ba;:0;VMOVAPS	%ZMM11,%ZMM10;  (3) 
0x4032c0;:0;VMULPD	{rn-sae},%ZMM21,%ZMM31,%ZMM4;  (3) 
0x4032c6;:0;VSCALEFPD	0xeed0(%RIP){1to8},%ZMM31,%ZMM31;  (3) 
0x4032d0;:0;VFNMADD231PD	{rn-sae},%ZMM4,%ZMM4,%ZMM6;  (3) 
0x4032d6;:0;VFMADD213PD	%ZMM4,%ZMM31,%ZMM6;  (3) 
0x4032dc;:0;(bad);  (3) 
0x4032dd;:0;(bad);  (3) 
0x4032de;:0;STD;  (3) 
0x4032df;:0;POP	%RAX;  (3) 
0x4032e0;:0;INT	$0x3;  (3) 
0x4032e1;:0;STI;  (3) 
0x4032e2;:0;VFIXUPIMMPD	$0x70,0xeebb(%RIP){1to8},%ZMM21,%ZMM6;  (3) 
0x4032ed;:0;VMULPD	{rn-sae},%ZMM11,%ZMM31,%ZMM5;  (3) 
0x4032f3;:0;VSCALEFPD	0xeea3(%RIP){1to8},%ZMM31,%ZMM31;  (3) 
0x4032fd;:0;VMULPD	%ZMM21,%ZMM6,%ZMM21;  (3) 
0x403303;:0;VFNMADD231PD	{rn-sae},%ZMM5,%ZMM5,%ZMM10;  (3) 
0x403309;:0;VCVTPD2PS	%ZMM21,%YMM21;  (3) 
0x40330f;:0;VFMADD213PD	%ZMM5,%ZMM31,%ZMM10;  (3) 
0x403315;:0;VFIXUPIMMPD	$0x70,0xee88(%RIP){1to8},%ZMM11,%ZMM10;  (3) 
0x403320;:0;VMULPD	%ZMM11,%ZMM10,%ZMM31;  (3) 
0x403326;:0;VCVTPD2PS	%ZMM31,%YMM12;  (3) 
0x40332c;:0;VINSERTF64X4	$0x1,%YMM12,%ZMM21,%ZMM21;  (3) 
0x403333;:0;VRCP28PS	%ZMM21,%ZMM21;  (3) 
0x403339;:0;VFMADD231PS	%ZMM24,%ZMM21,%ZMM0{%K2};  (3) 
0x40333f;:0;VFMADD231PS	%ZMM23,%ZMM21,%ZMM1{%K2};  (3) 
0x403345;:0;VFMADD231PS	%ZMM22,%ZMM21,%ZMM3{%K2};  (3) 
0x40334b;:0;CMP	%RDX,%RAX;  (3) 
0x40334e;:0;JB	40323a <main+0xf4a>;  (3) 
0x403354;:0;VEXTRACTF64X4	$0x1,%ZMM0,%YMM4;
0x40335b;:0;VADDPS	%YMM0,%YMM4,%YMM6;
0x40335f;:0;VEXTRACTF64X4	$0x1,%ZMM1,%YMM0;
0x403366;:0;VADDPS	%YMM1,%YMM0,%YMM1;
0x40336a;:0;VPERMPD	$-0x1,%YMM6,%YMM5;
0x403370;:0;VPERMPD	$-0x56,%YMM6,%YMM10;
0x403376;:0;VPERMPD	$0x55,%YMM6,%YMM11;
0x40337c;:0;VADDPS	%YMM6,%YMM5,%YMM12;
0x403380;:0;VADDPS	%YMM11,%YMM10,%YMM13;
0x403385;:0;VPERMPD	$-0x1,%YMM1,%YMM0;
0x40338b;:0;VADDPS	%YMM13,%YMM12,%YMM14;
0x403390;:0;VEXTRACTF64X4	$0x1,%ZMM3,%YMM13;
0x403397;:0;VADDPS	%YMM3,%YMM13,%YMM13;
0x40339b;:0;VPERMPD	$-0x56,%YMM1,%YMM4;
0x4033a1;:0;VPERMPD	$0x55,%YMM1,%YMM5;
0x4033a7;:0;VADDPS	%YMM1,%YMM0,%YMM6;
0x4033ab;:0;VPERMPD	$-0x1,%YMM13,%YMM3;
0x4033b1;:0;VPERMPD	$-0x56,%YMM13,%YMM0;
0x4033b7;:0;VPERMPD	$0x55,%YMM13,%YMM1;
0x4033bd;:0;VADDPS	%YMM5,%YMM4,%YMM10;
0x4033c1;:0;VADDPS	%YMM13,%YMM3,%YMM4;
0x4033c6;:0;VADDPS	%YMM1,%YMM0,%YMM5;
0x4033ca;:0;VADDPS	%YMM10,%YMM6,%YMM11;
0x4033cf;:0;VADDPS	%YMM5,%YMM4,%YMM6;
0x4033d3;:0;VPSRLQ	$0x20,%XMM14,%XMM15;
0x4033d9;:0;VPSRLQ	$0x20,%XMM11,%XMM12;
0x4033df;:0;VPSRLQ	$0x20,%XMM6,%XMM10;
0x4033e4;:0;VADDSS	%XMM14,%XMM15,%XMM21;
0x4033ea;:0;VADDSS	%XMM11,%XMM12,%XMM22;
0x4033f0;:0;VADDSS	%XMM6,%XMM10,%XMM23;
0x4033f6;:0;VFMADD213SS	(%R10,%RDI,4),%XMM2,%XMM21;
0x4033fd;:0;VMOVSS	%XMM21,(%R10,%RDI,4);
0x403404;:0;VFMADD213SS	(%RBX,%RDI,4),%XMM2,%XMM22;
0x40340b;:0;VMOVSS	%XMM22,(%RBX,%RDI,4);
0x403412;:0;VFMADD213SS	(%R12,%RDI,4),%XMM2,%XMM23;
0x403419;:0;VMOVSS	%XMM23,(%R12,%RDI,4);
0x403420;:0;VFMADD213SS	%XMM7,%XMM2,%XMM21;
0x403426;:0;VMOVSS	%XMM21,(%R11,%RDI,4);
0x40342d;:0;VFMADD213SS	%XMM9,%XMM2,%XMM22;
0x403433;:0;VMOVSS	%XMM22,(%R14,%RDI,4);
0x40343a;:0;VFMADD213SS	%XMM8,%XMM2,%XMM23;
0x403440;:0;VMOVSS	%XMM23,(%R13,%RDI,4);
0x403448;:0;ADD	$0x1,%RDI;
0x40344c;:0;CMP	%R15,%RDI;
0x40344f;:0;JB	402f08 <main+0xc18>;
0x4035ef;:0;XOR	%R9D,%R9D;
0x4035f2;:0;JMP	4031f4 <main+0xf04>;
0x4035f7;:0;MOV	0x38(%RSP),%R9;
0x4035fc;:0;XOR	%EDX,%EDX;
0x4035fe;:0;JMP	4030ea <main+0xdfa>;
