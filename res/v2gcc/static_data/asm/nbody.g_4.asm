address;source_location;insn;indent
0x19f0;:0;MOV	-0x18(%RSP),%RDX;
0x19f5;:0;XOR	%EAX,%EAX;
0x19f7;:0;VMOVSS	(%RSI,%RCX,4),%XMM4;
0x19fc;:0;VMOVAPS	%ZMM15,%ZMM17;
0x1a02;:0;VMOVSS	(%R9,%RCX,4),%XMM5;
0x1a08;:0;VMOVAPS	%ZMM15,%ZMM16;
0x1a0e;:0;CMP	%RDX,-0x10(%RSP);
0x1a13;:0;VMOVSS	%XMM15,%XMM15,%XMM3;
0x1a17;:0;VMOVSS	(%R8,%RCX,4),%XMM6;
0x1a1d;:0;JA	1c00 <move_particles+0x2e0>;
0x1a23;:0;TEST	%R10,%R10;
0x1a26;:0;JE	1a95 <move_particles+0x175>;
0x1a28;:0;NOPL	(%RAX,%RAX,1);
0x1a30;:0;VMOVSS	(%R9,%RAX,4),%XMM8;  (6) 
0x1a36;:0;VSUBSS	%XMM5,%XMM8,%XMM8;  (6) 
0x1a3a;:0;VMOVSS	(%R8,%RAX,4),%XMM7;  (6) 
0x1a40;:0;VSUBSS	%XMM6,%XMM7,%XMM7;  (6) 
0x1a44;:0;VMOVSS	(%RSI,%RAX,4),%XMM9;  (6) 
0x1a49;:0;VSUBSS	%XMM4,%XMM9,%XMM9;  (6) 
0x1a4d;:0;LEA	0x1(%RAX),%RAX;  (6) 
0x1a51;:0;VMULSS	%XMM8,%XMM8,%XMM2;  (6) 
0x1a56;:0;CMP	%R10,%RAX;  (6) 
0x1a59;:0;VMOVSS	%XMM7,%XMM7,%XMM1;  (6) 
0x1a5d;:0;VFMADD132SS	%XMM7,%XMM13,%XMM1;  (6) 
0x1a62;:0;VFMADD231SS	%XMM9,%XMM9,%XMM2;  (6) 
0x1a67;:0;VADDSS	%XMM2,%XMM1,%XMM2;  (6) 
0x1a6b;:0;VCVTSS2SD	%XMM2,%XMM2,%XMM2;  (6) 
0x1a6f;:0;VSQRTSD	%XMM2,%XMM2,%XMM1;  (6) 
0x1a73;:0;VMULSD	%XMM2,%XMM1,%XMM1;  (6) 
0x1a77;:0;VCVTSD2SS	%XMM1,%XMM1,%XMM1;  (6) 
0x1a7b;:0;VDIVSS	%XMM1,%XMM12,%XMM1;  (6) 
0x1a7f;:0;VFMADD231SS	%XMM9,%XMM1,%XMM3;  (6) 
0x1a84;:0;VFMADD231SS	%XMM8,%XMM1,%XMM16;  (6) 
0x1a8a;:0;VFMADD231SS	%XMM7,%XMM1,%XMM17;  (6) 
0x1a90;:0;JNE	1a30 <move_particles+0x110>;  (6) 
0x1a92;:0;LEA	(%R10),%RAX;
0x1a95;:0;VXORPS	%XMM9,%XMM9,%XMM9;
0x1a9a;:0;VBROADCASTSS	%XMM4,%ZMM23;
0x1aa0;:0;VBROADCASTSS	%XMM5,%ZMM22;
0x1aa6;:0;VBROADCASTSS	%XMM6,%ZMM21;
0x1aac;:0;XOR	%EDX,%EDX;
0x1aae;:0;VMOVAPS	%ZMM9,%ZMM8;
0x1ab4;:0;VMOVAPS	%ZMM9,%ZMM7;
0x1aba;:0;NOPW	(%RAX,%RAX,1);
0x1ac0;:0;VMOVAPS	(%R13,%RDX,1),%ZMM2;  (5) 
0x1ac8;:0;VSUBPS	%ZMM23,%ZMM2,%ZMM20;  (5) 
0x1ace;:0;VMOVUPS	(%R12,%RDX,1),%ZMM2;  (5) 
0x1ad5;:0;VSUBPS	%ZMM22,%ZMM2,%ZMM19;  (5) 
0x1adb;:0;VMOVUPS	(%R11,%RDX,1),%ZMM2;  (5) 
0x1ae2;:0;VSUBPS	%ZMM21,%ZMM2,%ZMM18;  (5) 
0x1ae8;:0;LEA	0x40(%RDX),%RDX;  (5) 
0x1aec;:0;CMP	%RDX,%RBX;  (5) 
0x1aef;:0;VMULPS	%ZMM19,%ZMM19,%ZMM1;  (5) 
0x1af5;:0;VFMADD231PS	%ZMM20,%ZMM20,%ZMM1;  (5) 
0x1afb;:0;VADDPS	%ZMM14,%ZMM1,%ZMM1;  (5) 
0x1b01;:0;VFMADD231PS	%ZMM18,%ZMM18,%ZMM1;  (5) 
0x1b07;:0;VCVTPS2PD	%YMM1,%ZMM2;  (5) 
0x1b0d;:0;VEXTRACTI64X4	$0x1,%ZMM1,%YMM1;  (5) 
0x1b14;:0;VCVTPS2PD	%YMM1,%ZMM1;  (5) 
0x1b1a;:0;VSQRTPD	%ZMM2,%ZMM25;  (5) 
0x1b20;:0;VSQRTPD	%ZMM1,%ZMM24;  (5) 
0x1b26;:0;VMULPD	%ZMM25,%ZMM2,%ZMM2;  (5) 
0x1b2c;:0;VMULPD	%ZMM24,%ZMM1,%ZMM1;  (5) 
0x1b32;:0;VCVTPD2PS	%ZMM2,%YMM2;  (5) 
0x1b38;:0;VCVTPD2PS	%ZMM1,%YMM1;  (5) 
0x1b3e;:0;VINSERTF64X4	$0x1,%YMM1,%ZMM2,%ZMM1;  (5) 
0x1b45;:0;VRCP28PS	%ZMM1,%ZMM1;  (5) 
0x1b4b;:0;VFMADD231PS	%ZMM20,%ZMM1,%ZMM7;  (5) 
0x1b51;:0;VFMADD231PS	%ZMM19,%ZMM1,%ZMM8;  (5) 
0x1b57;:0;VFMADD231PS	%ZMM1,%ZMM18,%ZMM9;  (5) 
0x1b5d;:0;JNE	1ac0 <move_particles+0x1a0>;  (5) 
0x1b63;:0;VEXTRACTI64X4	$0x1,%ZMM9,%YMM1;
0x1b6a;:0;VADDPS	%YMM9,%YMM1,%YMM9;
0x1b6f;:0;MOV	-0x20(%RSP),%RDX;
0x1b74;:0;VEXTRACTF128	$0x1,%YMM9,%XMM1;
0x1b7a;:0;ADD	%RDX,%RAX;
0x1b7d;:0;VADDPS	%XMM9,%XMM1,%XMM9;
0x1b82;:0;CMP	-0x28(%RSP),%RDX;
0x1b87;:0;VMOVHLPS	%XMM9,%XMM9,%XMM1;
0x1b8c;:0;VADDPS	%XMM9,%XMM1,%XMM9;
0x1b91;:0;VSHUFPS	$0x55,%XMM9,%XMM9,%XMM1;
0x1b97;:0;VADDPS	%XMM9,%XMM1,%XMM1;
0x1b9c;:0;VADDSS	%XMM1,%XMM17,%XMM17;
0x1ba2;:0;VEXTRACTI64X4	$0x1,%ZMM8,%YMM1;
0x1ba9;:0;VADDPS	%YMM8,%YMM1,%YMM1;
0x1bae;:0;VEXTRACTF128	$0x1,%YMM1,%XMM8;
0x1bb4;:0;VADDPS	%XMM1,%XMM8,%XMM8;
0x1bb8;:0;VMOVHLPS	%XMM8,%XMM8,%XMM1;
0x1bbd;:0;VADDPS	%XMM8,%XMM1,%XMM8;
0x1bc2;:0;VSHUFPS	$0x55,%XMM8,%XMM8,%XMM1;
0x1bc8;:0;VADDPS	%XMM8,%XMM1,%XMM1;
0x1bcd;:0;VADDSS	%XMM1,%XMM16,%XMM16;
0x1bd3;:0;VEXTRACTI64X4	$0x1,%ZMM7,%YMM1;
0x1bda;:0;VADDPS	%YMM7,%YMM1,%YMM1;
0x1bde;:0;VEXTRACTF128	$0x1,%YMM1,%XMM7;
0x1be4;:0;VADDPS	%XMM1,%XMM7,%XMM7;
0x1be8;:0;VMOVHLPS	%XMM7,%XMM7,%XMM1;
0x1bec;:0;VADDPS	%XMM7,%XMM1,%XMM7;
0x1bf0;:0;VSHUFPS	$0x55,%XMM7,%XMM7,%XMM1;
0x1bf5;:0;VADDPS	%XMM7,%XMM1,%XMM1;
0x1bf9;:0;VADDSS	%XMM1,%XMM3,%XMM3;
0x1bfd;:0;JE	1c68 <move_particles+0x348>;
0x1bff;:0;NOP;
0x1c00;:0;VMOVSS	(%R9,%RAX,4),%XMM8;  (3) 
0x1c06;:0;VSUBSS	%XMM5,%XMM8,%XMM8;  (3) 
0x1c0a;:0;VMOVSS	(%R8,%RAX,4),%XMM7;  (3) 
0x1c10;:0;VSUBSS	%XMM6,%XMM7,%XMM7;  (3) 
0x1c14;:0;VMOVSS	(%RSI,%RAX,4),%XMM18;  (3) 
0x1c1b;:0;VSUBSS	%XMM4,%XMM18,%XMM18;  (3) 
0x1c21;:0;LEA	0x1(%RAX),%RAX;  (3) 
0x1c25;:0;VMULSS	%XMM8,%XMM8,%XMM1;  (3) 
0x1c2a;:0;CMP	%RAX,%RDI;  (3) 
0x1c2d;:0;VMOVSS	%XMM7,%XMM7,%XMM2;  (3) 
0x1c31;:0;VFMADD132SS	%XMM7,%XMM11,%XMM2;  (3) 
0x1c36;:0;VFMADD231SS	%XMM18,%XMM18,%XMM1;  (3) 
0x1c3c;:0;VADDSS	%XMM2,%XMM1,%XMM2;  (3) 
0x1c40;:0;VCVTSS2SD	%XMM2,%XMM2,%XMM2;  (3) 
0x1c44;:0;VSQRTSD	%XMM2,%XMM2,%XMM1;  (3) 
0x1c48;:0;VMULSD	%XMM2,%XMM1,%XMM1;  (3) 
0x1c4c;:0;VCVTSD2SS	%XMM1,%XMM1,%XMM1;  (3) 
0x1c50;:0;VDIVSS	%XMM1,%XMM10,%XMM1;  (3) 
0x1c54;:0;VFMADD231SS	%XMM1,%XMM18,%XMM3;  (3) 
0x1c5a;:0;VFMADD231SS	%XMM1,%XMM8,%XMM16;  (3) 
0x1c60;:0;VFMADD231SS	%XMM1,%XMM7,%XMM17;  (3) 
0x1c66;:0;JA	1c00 <move_particles+0x2e0>;  (3) 
0x1c68;:0;MOV	-0x8(%RSP),%RAX;
0x1c6d;:0;VFMADD213SS	(%RAX,%RCX,4),%XMM0,%XMM3;
0x1c73;:0;VMOVSS	%XMM3,(%RAX,%RCX,4);
0x1c78;:0;VFMADD213SS	(%R14,%RCX,4),%XMM0,%XMM16;
0x1c7f;:0;VMOVSS	%XMM16,(%R14,%RCX,4);
0x1c86;:0;VFMADD213SS	(%R15,%RCX,4),%XMM0,%XMM17;
0x1c8d;:0;VMOVSS	%XMM17,(%R15,%RCX,4);
0x1c94;:0;VMOVSS	(%RAX,%RCX,4),%XMM1;
0x1c99;:0;VFMADD213SS	(%RSI,%RCX,4),%XMM0,%XMM1;
0x1c9f;:0;VMOVSS	%XMM1,(%RSI,%RCX,4);
0x1ca4;:0;VMOVSS	(%R14,%RCX,4),%XMM1;
0x1caa;:0;VFMADD213SS	(%R9,%RCX,4),%XMM0,%XMM1;
0x1cb0;:0;VMOVSS	%XMM1,(%R9,%RCX,4);
0x1cb6;:0;VMOVSS	(%R15,%RCX,4),%XMM1;
0x1cbc;:0;VFMADD213SS	(%R8,%RCX,4),%XMM0,%XMM1;
0x1cc2;:0;VMOVSS	%XMM1,(%R8,%RCX,4);
0x1cc8;:0;LEA	0x1(%RCX),%RCX;
0x1ccc;:0;CMP	%RCX,%RDI;
0x1ccf;:0;JNE	19f0 <move_particles+0xd0>;
