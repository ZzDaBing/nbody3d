address;source_location;insn;indent
0x1c00;:0;VMOVSS	(%R9,%RAX,4),%XMM8;
0x1c06;:0;VSUBSS	%XMM5,%XMM8,%XMM8;
0x1c0a;:0;VMOVSS	(%R8,%RAX,4),%XMM7;
0x1c10;:0;VSUBSS	%XMM6,%XMM7,%XMM7;
0x1c14;:0;VMOVSS	(%RSI,%RAX,4),%XMM18;
0x1c1b;:0;VSUBSS	%XMM4,%XMM18,%XMM18;
0x1c21;:0;LEA	0x1(%RAX),%RAX;
0x1c25;:0;VMULSS	%XMM8,%XMM8,%XMM1;
0x1c2a;:0;CMP	%RAX,%RDI;
0x1c2d;:0;VMOVSS	%XMM7,%XMM7,%XMM2;
0x1c31;:0;VFMADD132SS	%XMM7,%XMM11,%XMM2;
0x1c36;:0;VFMADD231SS	%XMM18,%XMM18,%XMM1;
0x1c3c;:0;VADDSS	%XMM2,%XMM1,%XMM2;
0x1c40;:0;VCVTSS2SD	%XMM2,%XMM2,%XMM2;
0x1c44;:0;VSQRTSD	%XMM2,%XMM2,%XMM1;
0x1c48;:0;VMULSD	%XMM2,%XMM1,%XMM1;
0x1c4c;:0;VCVTSD2SS	%XMM1,%XMM1,%XMM1;
0x1c50;:0;VDIVSS	%XMM1,%XMM10,%XMM1;
0x1c54;:0;VFMADD231SS	%XMM1,%XMM18,%XMM3;
0x1c5a;:0;VFMADD231SS	%XMM1,%XMM8,%XMM16;
0x1c60;:0;VFMADD231SS	%XMM1,%XMM7,%XMM17;
0x1c66;:0;JA	1c00 <move_particles+0x2e0>;
