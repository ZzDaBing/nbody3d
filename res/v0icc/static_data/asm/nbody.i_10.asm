address;source_location;insn;indent
0x4026e1;:0;LEA	(%RCX,%RCX,2),%R9;
0x4026e5;:0;VPXORD	%ZMM29,%ZMM29,%ZMM29;
0x4026eb;:0;KXNORW	%K0,%K0,%K3;
0x4026ef;:0;VPXORD	%ZMM27,%ZMM27,%ZMM27;
0x4026f5;:0;KXNORW	%K0,%K0,%K2;
0x4026f9;:0;LEA	(%R15,%R9,8),%R10;
0x4026fd;:0;VPXORD	%ZMM25,%ZMM25,%ZMM25;
0x402703;:0;KXNORW	%K0,%K0,%K1;
0x402707;:0;VMOVAPS	%ZMM16,%ZMM18;
0x40270d;:0;ADD	$0x10,%RCX;
0x402711;:0;VGATHERDPS	(%R10,%ZMM10,8),%ZMM29{%K3};
0x402718;:0;VGATHERDPS	0x4(%R10,%ZMM10,8),%ZMM27{%K2};
0x402720;:0;VSUBPS	%ZMM7,%ZMM29,%ZMM28;
0x402726;:0;VSUBPS	%ZMM6,%ZMM27,%ZMM26;
0x40272c;:0;VGATHERDPS	0x8(%R10,%ZMM10,8),%ZMM25{%K1};
0x402734;:0;VFMADD231PS	%ZMM28,%ZMM28,%ZMM18;
0x40273a;:0;VSUBPS	%ZMM2,%ZMM25,%ZMM24;
0x402740;:0;VFMADD231PS	%ZMM26,%ZMM26,%ZMM18;
0x402746;:0;VSUBPS	%ZMM31,%ZMM29,%ZMM29;
0x40274c;:0;VFMADD231PS	%ZMM24,%ZMM24,%ZMM18;
0x402752;:0;VSUBPS	%ZMM30,%ZMM27,%ZMM27;
0x402758;:0;VCVTPS2PD	%YMM18,%ZMM23;
0x40275e;:0;VEXTRACTF64X4	$0x1,%ZMM18,%YMM18;
0x402765;:0;VMOVAPS	%ZMM23,%ZMM11;
0x40276b;:0;VCVTPS2PD	%YMM18,%ZMM20;
0x402771;:0;(bad);
0x402772;:0;MOV	%AL,-0x3;
0x402774;:0;POP	%RAX;
0x402775;:0;INT	$0x3;
0x402776;:0;XLATB	(%RBX);
0x402777;:0;VMOVAPS	%ZMM20,%ZMM12;
0x40277d;:0;VSUBPS	%ZMM9,%ZMM25,%ZMM25;
0x402783;:0;VMULPD	{rn-sae},%ZMM23,%ZMM18,%ZMM19;
0x402789;:0;VSCALEFPD	0x10a8d(%RIP){1to8},%ZMM18,%ZMM18;
0x402793;:0;VFNMADD231PD	{rn-sae},%ZMM19,%ZMM19,%ZMM11;
0x402799;:0;VFMADD213PD	%ZMM19,%ZMM18,%ZMM11;
0x40279f;:0;VFIXUPIMMPD	$0x70,0x10a7e(%RIP){1to8},%ZMM23,%ZMM11;
0x4027aa;:0;VMULPD	%ZMM23,%ZMM11,%ZMM18;
0x4027b0;:0;VCVTPD2PS	%ZMM18,%YMM19;
0x4027b6;:0;(bad);
0x4027b7;:0;MOV	%AL,-0x3;
0x4027b9;:0;POP	%RAX;
0x4027ba;:0;INT	$0x3;
0x4027bb;:0;(bad);
0x4027bc;:0;VMULPD	{rn-sae},%ZMM20,%ZMM18,%ZMM23;
0x4027c2;:0;VSCALEFPD	0x10a54(%RIP){1to8},%ZMM18,%ZMM18;
0x4027cc;:0;VFNMADD231PD	{rn-sae},%ZMM23,%ZMM23,%ZMM12;
0x4027d2;:0;VFMADD213PD	%ZMM23,%ZMM18,%ZMM12;
0x4027d8;:0;VFIXUPIMMPD	$0x70,0x10a45(%RIP){1to8},%ZMM20,%ZMM12;
0x4027e3;:0;VMULPD	%ZMM20,%ZMM12,%ZMM18;
0x4027e9;:0;VCVTPD2PS	%ZMM18,%YMM13;
0x4027ef;:0;VINSERTF64X4	$0x1,%YMM13,%ZMM19,%ZMM18;
0x4027f6;:0;VRCP28PS	%ZMM18,%ZMM18;
0x4027fc;:0;VFMADD231PS	%ZMM28,%ZMM18,%ZMM5;
0x402802;:0;VFMADD231PS	%ZMM26,%ZMM18,%ZMM3;
0x402808;:0;VFMADD231PS	%ZMM24,%ZMM18,%ZMM4;
0x40280e;:0;VMOVAPS	%ZMM16,%ZMM18;
0x402814;:0;VFMADD231PS	%ZMM29,%ZMM29,%ZMM18;
0x40281a;:0;VFMADD231PS	%ZMM27,%ZMM27,%ZMM18;
0x402820;:0;VFMADD231PS	%ZMM25,%ZMM25,%ZMM18;
0x402826;:0;VCVTPS2PD	%YMM18,%ZMM24;
0x40282c;:0;VEXTRACTF64X4	$0x1,%ZMM18,%YMM18;
0x402833;:0;(bad);
0x402834;:0;(bad);
0x402835;:0;STD;
0x402836;:0;POP	%RAX;
0x402837;:0;INT	$0x3;
0x402838;:0;FSUBS	-0x7f(%RDX);
0x40283b;:0;JL	402885 <main+0x595>;
0x40283d;:0;SUB	%BH,%AL;
0x40283f;:0;VCVTPS2PD	%YMM18,%ZMM18;
0x402845;:0;VMULPD	{rn-sae},%ZMM24,%ZMM19,%ZMM20;
0x40284b;:0;VSCALEFPD	0x109cb(%RIP){1to8},%ZMM19,%ZMM19;
0x402855;:0;VFNMADD231PD	{rn-sae},%ZMM20,%ZMM20,%ZMM23;
0x40285b;:0;VFMADD213PD	%ZMM20,%ZMM19,%ZMM23;
0x402861;:0;VFIXUPIMMPD	$0x70,0x109bc(%RIP){1to8},%ZMM24,%ZMM23;
0x40286c;:0;VMULPD	%ZMM24,%ZMM23,%ZMM19;
0x402872;:0;VMOVAPS	%ZMM18,%ZMM23;  (9) 
0x402878;:0;VCVTPD2PS	%ZMM19,%YMM24;  (9) 
0x40287e;:0;(bad);  (9) 
0x40287f;:0;MOV	%AL,-0x3;  (9) 
0x402881;:0;POP	%RAX;  (9) 
0x402882;:0;INT	$0x3;  (9) 
0x402883;:0;FISUBL	-0x5f(%RDX);  (9) 
0x402886;:0;IN	$0x10,%EAX;  (9) 
0x402888;:0;POP	%RCX;  (9) 
0x402889;:0;LOOP	4028ed <main+0x5fd>;  (9) 
0x40288b;:0;LOOP	402872 <main+0x582>;  (9) 
0x40288d;:0;PUSH	%RAX;
0x40288e;:0;SUB	$0x1d,%AL;
0x402890;:0;MOV	%CS,(%RCX);
0x402892;:0;ADD	%EAX,(%RAX);
0x402894;:0;VFNMADD231PD	{rn-sae},%ZMM20,%ZMM20,%ZMM23;
0x40289a;:0;VFMADD213PD	%ZMM20,%ZMM19,%ZMM23;
0x4028a0;:0;VFIXUPIMMPD	$0x70,0x1097d(%RIP){1to8},%ZMM18,%ZMM23;
0x4028ab;:0;VMULPD	%ZMM18,%ZMM23,%ZMM18;
0x4028b1;:0;VCVTPD2PS	%ZMM18,%YMM14;
0x4028b7;:0;VINSERTF64X4	$0x1,%YMM14,%ZMM24,%ZMM18;
0x4028be;:0;VRCP28PS	%ZMM18,%ZMM19;
0x4028c4;:0;VFMADD231PS	%ZMM29,%ZMM19,%ZMM8;
0x4028ca;:0;VFMADD231PS	%ZMM27,%ZMM19,%ZMM1;
0x4028d0;:0;VFMADD231PS	%ZMM25,%ZMM19,%ZMM0;
0x4028d6;:0;CMP	%R13,%RCX;
0x4028d9;:0;JB	4026e1 <main+0x3f1>;
