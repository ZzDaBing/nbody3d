address;source_location;insn;indent
0x402d87;:0;VMOVSS	(%R11,%RDI,4),%XMM9;
0x402d8d;:0;VMOVSS	(%R14,%RDI,4),%XMM8;
0x402d93;:0;VMOVAPS	%ZMM21,%ZMM0;
0x402d99;:0;VMOVAPS	%ZMM0,%ZMM1;
0x402d9f;:0;VMOVAPS	%ZMM1,%ZMM3;
0x402da5;:0;VMOVSS	(%R13,%RDI,4),%XMM7;
0x402dac;:0;VXORPS	0xe44c(%RIP),%XMM9,%XMM6;
0x402db4;:0;VXORPS	0xe444(%RIP),%XMM8,%XMM5;
0x402dbc;:0;VXORPS	0xe43c(%RIP),%XMM7,%XMM4;
0x402dc4;:0;CMP	$0x960,%R15;
0x402dcb;:0;JB	4032d2 <main+0xfe2>;
0x402dd1;:0;MOV	0xa8(%RSP),%RDX;
0x402dd9;:0;TEST	%RDX,%RDX;
0x402ddc;:0;JE	402ed5 <main+0xbe5>;
0x402de2;:0;CMPQ	$0,0xa0(%RSP);
0x402deb;:0;JNE	4032ca <main+0xfda>;
0x402df1;:0;CMP	%RCX,%R15;
0x402df4;:0;MOV	%RCX,%RDX;
0x402df7;:0;CMOVB	%R15,%RDX;
0x402dfb;:0;MOV	%R15,%R9;
0x402dfe;:0;SUB	%RDX,%R9;
0x402e01;:0;AND	$0xf,%R9;
0x402e05;:0;NEG	%R9;
0x402e08;:0;ADD	%R15,%R9;
0x402e0b;:0;CMP	$0x1,%RDX;
0x402e0f;:0;JB	402edd <main+0xbed>;
0x402e15;:0;VMOVAPS	%ZMM19,%ZMM26;
0x402e1b;:0;VMOVAPS	%ZMM18,%ZMM25;
0x402e21;:0;VPBROADCASTQ	%RDX,%ZMM24;
0x402e27;:0;VBROADCASTSS	%XMM6,%ZMM23;
0x402e2d;:0;XOR	%EAX,%EAX;
0x402e2f;:0;VBROADCASTSS	%XMM5,%ZMM22;
0x402e35;:0;VBROADCASTSS	%XMM4,%ZMM16;
0x402e3b;:0;VPCMPNLEUQ	%ZMM26,%ZMM24,%K1;  (5) 
0x402e42;:0;VPCMPNLEUQ	%ZMM25,%ZMM24,%K0;  (5) 
0x402e49;:0;KUNPCKBW	%K1,%K0,%K2;  (5) 
0x402e4d;:0;VMOVAPS	%ZMM17,%ZMM30;  (5) 
0x402e53;:0;VPADDQ	%ZMM20,%ZMM26,%ZMM26;  (5) 
0x402e59;:0;VMOVUPS	(%R11,%RAX,4),%ZMM27{%K2}{z};  (5) 
0x402e60;:0;VMOVUPS	(%R14,%RAX,4),%ZMM28{%K2}{z};  (5) 
0x402e67;:0;VPADDQ	%ZMM20,%ZMM25,%ZMM25;  (5) 
0x402e6d;:0;VADDPS	%ZMM27,%ZMM23,%ZMM27;  (5) 
0x402e73;:0;VADDPS	%ZMM28,%ZMM22,%ZMM28;  (5) 
0x402e79;:0;VMOVUPS	(%R13,%RAX,4),%ZMM29{%K2}{z};  (5) 
0x402e81;:0;ADD	$0x10,%RAX;  (5) 
0x402e85;:0;VFMADD231PS	%ZMM27,%ZMM27,%ZMM30;  (5) 
0x402e8b;:0;VADDPS	%ZMM29,%ZMM16,%ZMM29;  (5) 
0x402e91;:0;VFMADD231PS	%ZMM28,%ZMM28,%ZMM30;  (5) 
0x402e97;:0;VFMADD231PS	%ZMM29,%ZMM29,%ZMM30;  (5) 
0x402e9d;:0;VRSQRT28PS	%ZMM30,%ZMM31{%K2}{z};  (5) 
0x402ea3;:0;VRCP28PS	%ZMM30,%ZMM30;  (5) 
0x402ea9;:0;VMULPS	%ZMM30,%ZMM31,%ZMM30;  (5) 
0x402eaf;:0;VFMADD231PS	%ZMM27,%ZMM30,%ZMM0{%K2};  (5) 
0x402eb5;:0;VFMADD231PS	%ZMM28,%ZMM30,%ZMM1{%K2};  (5) 
0x402ebb;:0;VFMADD231PS	%ZMM29,%ZMM30,%ZMM3{%K2};  (5) 
0x402ec1;:0;CMP	%RDX,%RAX;  (5) 
0x402ec4;:0;JB	402e3b <main+0xb4b>;  (5) 
0x402eca;:0;CMP	%RDX,%R15;
0x402ecd;:0;JE	40302f <main+0xd3f>;
0x402ed3;:0;JMP	402edd <main+0xbed>;
0x402ed5;:0;MOV	0x98(%RSP),%R9;
0x402edd;:0;LEA	0x10(%RDX),%RAX;
0x402ee1;:0;CMP	%RAX,%R9;
0x402ee4;:0;JB	402f5b <main+0xc6b>;
0x402ee6;:0;VBROADCASTSS	%XMM6,%ZMM23;
0x402eec;:0;VBROADCASTSS	%XMM5,%ZMM22;
0x402ef2;:0;VBROADCASTSS	%XMM4,%ZMM16;
0x402ef8;:0;NOPL	(%RAX,%RAX,1);
0x402f00;:0;VADDPS	(%R11,%RDX,4),%ZMM23,%ZMM27;  (4) 
0x402f07;:0;VMOVAPS	%ZMM17,%ZMM24;  (4) 
0x402f0d;:0;VADDPS	(%R14,%RDX,4),%ZMM22,%ZMM28;  (4) 
0x402f14;:0;VFMADD231PS	%ZMM27,%ZMM27,%ZMM24;  (4) 
0x402f1a;:0;VADDPS	(%R13,%RDX,4),%ZMM16,%ZMM30;  (4) 
0x402f22;:0;ADD	$0x10,%RDX;  (4) 
0x402f26;:0;VFMADD231PS	%ZMM28,%ZMM28,%ZMM24;  (4) 
0x402f2c;:0;VFMADD231PS	%ZMM30,%ZMM30,%ZMM24;  (4) 
0x402f32;:0;VRSQRT28PS	%ZMM24,%ZMM25;  (4) 
0x402f38;:0;VRCP28PS	%ZMM24,%ZMM26;  (4) 
0x402f3e;:0;VMULPS	%ZMM26,%ZMM25,%ZMM29;  (4) 
0x402f44;:0;VFMADD231PS	%ZMM27,%ZMM29,%ZMM0;  (4) 
0x402f4a;:0;VFMADD231PS	%ZMM28,%ZMM29,%ZMM1;  (4) 
0x402f50;:0;VFMADD231PS	%ZMM30,%ZMM29,%ZMM3;  (4) 
0x402f56;:0;CMP	%R9,%RDX;  (4) 
0x402f59;:0;JB	402f00 <main+0xc10>;  (4) 
0x402f5b;:0;LEA	0x1(%R9),%RAX;
0x402f5f;:0;CMP	%R15,%RAX;
0x402f62;:0;JA	40302f <main+0xd3f>;
0x402f68;:0;MOV	%R15,%RDX;
0x402f6b;:0;VMOVAPS	%ZMM19,%ZMM26;
0x402f71;:0;VMOVAPS	%ZMM18,%ZMM25;
0x402f77;:0;VBROADCASTSS	%XMM6,%ZMM24;
0x402f7d;:0;VBROADCASTSS	%XMM5,%ZMM23;
0x402f83;:0;XOR	%EAX,%EAX;
0x402f85;:0;SUB	%R9,%RDX;
0x402f88;:0;VBROADCASTSS	%XMM4,%ZMM22;
0x402f8e;:0;VPBROADCASTQ	%RDX,%ZMM16;
0x402f94;:0;LEA	(%R11,%R9,4),%RSI;
0x402f98;:0;LEA	(%R14,%R9,4),%R8;
0x402f9c;:0;LEA	(%R13,%R9,4),%R9;
0x402fa1;:0;VPCMPNLEUQ	%ZMM26,%ZMM16,%K1;  (3) 
0x402fa8;:0;VPCMPNLEUQ	%ZMM25,%ZMM16,%K0;  (3) 
0x402faf;:0;KUNPCKBW	%K1,%K0,%K2;  (3) 
0x402fb3;:0;VMOVAPS	%ZMM17,%ZMM30;  (3) 
0x402fb9;:0;VPADDQ	%ZMM20,%ZMM26,%ZMM26;  (3) 
0x402fbf;:0;VMOVUPS	(%RSI,%RAX,4),%ZMM27{%K2}{z};  (3) 
0x402fc6;:0;VMOVUPS	(%R8,%RAX,4),%ZMM28{%K2}{z};  (3) 
0x402fcd;:0;VPADDQ	%ZMM20,%ZMM25,%ZMM25;  (3) 
0x402fd3;:0;VADDPS	%ZMM27,%ZMM24,%ZMM27;  (3) 
0x402fd9;:0;VADDPS	%ZMM28,%ZMM23,%ZMM28;  (3) 
0x402fdf;:0;VMOVUPS	(%R9,%RAX,4),%ZMM29{%K2}{z};  (3) 
0x402fe6;:0;ADD	$0x10,%RAX;  (3) 
0x402fea;:0;VFMADD231PS	%ZMM27,%ZMM27,%ZMM30;  (3) 
0x402ff0;:0;VADDPS	%ZMM29,%ZMM22,%ZMM29;  (3) 
0x402ff6;:0;VFMADD231PS	%ZMM28,%ZMM28,%ZMM30;  (3) 
0x402ffc;:0;VFMADD231PS	%ZMM29,%ZMM29,%ZMM30;  (3) 
0x403002;:0;VRSQRT28PS	%ZMM30,%ZMM31{%K2}{z};  (3) 
0x403008;:0;VRCP28PS	%ZMM30,%ZMM30;  (3) 
0x40300e;:0;VMULPS	%ZMM30,%ZMM31,%ZMM30;  (3) 
0x403014;:0;VFMADD231PS	%ZMM27,%ZMM30,%ZMM0{%K2};  (3) 
0x40301a;:0;VFMADD231PS	%ZMM28,%ZMM30,%ZMM1{%K2};  (3) 
0x403020;:0;VFMADD231PS	%ZMM29,%ZMM30,%ZMM3{%K2};  (3) 
0x403026;:0;CMP	%RDX,%RAX;  (3) 
0x403029;:0;JB	402fa1 <main+0xcb1>;  (3) 
0x40302f;:0;VEXTRACTF64X4	$0x1,%ZMM0,%YMM4;
0x403036;:0;VADDPS	%YMM0,%YMM4,%YMM6;
0x40303a;:0;VEXTRACTF64X4	$0x1,%ZMM1,%YMM0;
0x403041;:0;VADDPS	%YMM1,%YMM0,%YMM1;
0x403045;:0;VPERMPD	$-0x1,%YMM6,%YMM5;
0x40304b;:0;VPERMPD	$-0x56,%YMM6,%YMM10;
0x403051;:0;VPERMPD	$0x55,%YMM6,%YMM11;
0x403057;:0;VADDPS	%YMM6,%YMM5,%YMM12;
0x40305b;:0;VADDPS	%YMM11,%YMM10,%YMM13;
0x403060;:0;VPERMPD	$-0x1,%YMM1,%YMM0;
0x403066;:0;VADDPS	%YMM13,%YMM12,%YMM14;
0x40306b;:0;VEXTRACTF64X4	$0x1,%ZMM3,%YMM13;
0x403072;:0;VADDPS	%YMM3,%YMM13,%YMM13;
0x403076;:0;VPERMPD	$-0x56,%YMM1,%YMM4;
0x40307c;:0;VPERMPD	$0x55,%YMM1,%YMM5;
0x403082;:0;VADDPS	%YMM1,%YMM0,%YMM6;
0x403086;:0;VPERMPD	$-0x1,%YMM13,%YMM3;
0x40308c;:0;VPERMPD	$-0x56,%YMM13,%YMM0;
0x403092;:0;VPERMPD	$0x55,%YMM13,%YMM1;
0x403098;:0;VADDPS	%YMM5,%YMM4,%YMM10;
0x40309c;:0;VADDPS	%YMM13,%YMM3,%YMM4;
0x4030a1;:0;VADDPS	%YMM1,%YMM0,%YMM5;
0x4030a5;:0;VADDPS	%YMM10,%YMM6,%YMM11;
0x4030aa;:0;VADDPS	%YMM5,%YMM4,%YMM6;
0x4030ae;:0;VPSRLQ	$0x20,%XMM14,%XMM15;
0x4030b4;:0;VPSRLQ	$0x20,%XMM11,%XMM12;
0x4030ba;:0;VPSRLQ	$0x20,%XMM6,%XMM10;
0x4030bf;:0;VADDSS	%XMM14,%XMM15,%XMM16;
0x4030c5;:0;VADDSS	%XMM11,%XMM12,%XMM22;
0x4030cb;:0;VADDSS	%XMM6,%XMM10,%XMM23;
0x4030d1;:0;VFMADD213SS	(%R10,%RDI,4),%XMM2,%XMM16;
0x4030d8;:0;VMOVSS	%XMM16,(%R10,%RDI,4);
0x4030df;:0;VFMADD213SS	(%RBX,%RDI,4),%XMM2,%XMM22;
0x4030e6;:0;VMOVSS	%XMM22,(%RBX,%RDI,4);
0x4030ed;:0;VFMADD213SS	(%R12,%RDI,4),%XMM2,%XMM23;
0x4030f4;:0;VMOVSS	%XMM23,(%R12,%RDI,4);
0x4030fb;:0;VFMADD213SS	%XMM9,%XMM2,%XMM16;
0x403101;:0;VMOVSS	%XMM16,(%R11,%RDI,4);
0x403108;:0;VFMADD213SS	%XMM8,%XMM2,%XMM22;
0x40310e;:0;VMOVSS	%XMM22,(%R14,%RDI,4);
0x403115;:0;VFMADD213SS	%XMM7,%XMM2,%XMM23;
0x40311b;:0;VMOVSS	%XMM23,(%R13,%RDI,4);
0x403123;:0;ADD	$0x1,%RDI;
0x403127;:0;CMP	%R15,%RDI;
0x40312a;:0;JB	402d87 <main+0xa97>;
0x4032ca;:0;XOR	%R9D,%R9D;
0x4032cd;:0;JMP	402f5b <main+0xc6b>;
0x4032d2;:0;MOV	0x38(%RSP),%R9;
0x4032d7;:0;XOR	%EDX,%EDX;
0x4032d9;:0;JMP	402edd <main+0xbed>;
