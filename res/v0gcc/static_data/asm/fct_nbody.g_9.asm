address;source_location;insn;indent
0x1710;:0;ENDBR64;
0x1714;:0;TEST	%RSI,%RSI;
0x1717;:0;JE	1829 <move_particles+0x119>;
0x171d;:0;LEA	(%RSI,%RSI,2),%RAX;
0x1721;:0;LEA	(%RDI),%RCX;
0x1724;:0;LEA	(%RDI,%RAX,8),%RSI;
0x1728;:0;LEA	(%RDI),%RDX;
0x172b;:0;VMOVSS	0xa25(%RIP),%XMM13;
0x1733;:0;VMOVSS	0xa21(%RIP),%XMM12;
0x173b;:0;VXORPS	%XMM14,%XMM14,%XMM14;
0x1740;:0;VMOVSS	(%RDX),%XMM11;(4) 
0x1744;:0;LEA	(%RDI),%RAX;(4) 
0x1747;:0;VMOVSS	0x4(%RDX),%XMM10;(4) 
0x174c;:0;VMOVSS	%XMM14,%XMM14,%XMM7;(4) 
0x1750;:0;VMOVSS	0x8(%RDX),%XMM9;(4) 
0x1755;:0;VMOVSS	%XMM14,%XMM14,%XMM6;(4) 
0x1759;:0;VMOVSS	%XMM14,%XMM14,%XMM5;(4) 
0x175d;:0;NOPL	(%RAX);(4) 
0x1760;:0;VMOVSS	0x4(%RAX),%XMM3;  (3) 
0x1765;:0;LEA	0x18(%RAX),%RAX;  (3) 
0x1769;:0;VSUBSS	%XMM10,%XMM3,%XMM3;  (3) 
0x176e;:0;VMOVSS	-0x10(%RAX),%XMM2;  (3) 
0x1773;:0;VSUBSS	%XMM9,%XMM2,%XMM2;  (3) 
0x1778;:0;VMOVSS	-0x18(%RAX),%XMM4;  (3) 
0x177d;:0;VSUBSS	%XMM11,%XMM4,%XMM4;  (3) 
0x1782;:0;CMP	%RAX,%RSI;  (3) 
0x1785;:0;VMULSS	%XMM3,%XMM3,%XMM1;  (3) 
0x1789;:0;VMOVSS	%XMM2,%XMM2,%XMM8;  (3) 
0x178d;:0;VFMADD132SS	%XMM2,%XMM13,%XMM8;  (3) 
0x1792;:0;VFMADD231SS	%XMM4,%XMM4,%XMM1;  (3) 
0x1797;:0;VADDSS	%XMM8,%XMM1,%XMM1;  (3) 
0x179c;:0;VCVTSS2SD	%XMM1,%XMM1,%XMM1;  (3) 
0x17a0;:0;VSQRTSD	%XMM1,%XMM1,%XMM8;  (3) 
0x17a4;:0;VMULSD	%XMM8,%XMM1,%XMM1;  (3) 
0x17a9;:0;VCVTSD2SS	%XMM1,%XMM1,%XMM1;  (3) 
0x17ad;:0;VDIVSS	%XMM1,%XMM12,%XMM1;  (3) 
0x17b1;:0;VFMADD231SS	%XMM1,%XMM4,%XMM5;  (3) 
0x17b6;:0;VFMADD231SS	%XMM1,%XMM3,%XMM6;  (3) 
0x17bb;:0;VFMADD231SS	%XMM1,%XMM2,%XMM7;  (3) 
0x17c0;:0;JNE	1760 <move_particles+0x50>;  (3) 
0x17c2;:0;VFMADD213SS	0xc(%RDX),%XMM0,%XMM5;(4) 
0x17c8;:0;VFMADD213SS	0x10(%RDX),%XMM0,%XMM6;(4) 
0x17ce;:0;VFMADD213SS	0x14(%RDX),%XMM0,%XMM7;(4) 
0x17d4;:0;VMOVSS	%XMM5,0xc(%RDX);(4) 
0x17d9;:0;VMOVSS	%XMM6,0x10(%RDX);(4) 
0x17de;:0;LEA	0x18(%RDX),%RDX;(4) 
0x17e2;:0;VMOVSS	%XMM7,-0x4(%RDX);(4) 
0x17e7;:0;CMP	%RDX,%RSI;(4) 
0x17ea;:0;JNE	1740 <move_particles+0x30>;(4) 
0x17f0;:0;VMOVSS	0xc(%RCX),%XMM1;(5) 
0x17f5;:0;LEA	0x18(%RCX),%RCX;(5) 
0x17f9;:0;VFMADD213SS	-0x18(%RCX),%XMM0,%XMM1;(5) 
0x17ff;:0;VMOVSS	%XMM1,-0x18(%RCX);(5) 
0x1804;:0;VMOVSS	-0x8(%RCX),%XMM1;(5) 
0x1809;:0;VFMADD213SS	-0x14(%RCX),%XMM0,%XMM1;(5) 
0x180f;:0;VMOVSS	%XMM1,-0x14(%RCX);(5) 
0x1814;:0;VMOVSS	-0x4(%RCX),%XMM1;(5) 
0x1819;:0;VFMADD213SS	-0x10(%RCX),%XMM0,%XMM1;(5) 
0x181f;:0;VMOVSS	%XMM1,-0x10(%RCX);(5) 
0x1824;:0;CMP	%RCX,%RSI;(5) 
0x1827;:0;JNE	17f0 <move_particles+0xe0>;(5) 
0x1829;:0;RET;
0x182a;:0;NOPW	(%RAX,%RAX,1);