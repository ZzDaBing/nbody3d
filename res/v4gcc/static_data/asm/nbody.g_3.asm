address;source_location;insn;indent
0x1bf0;:0;VMOVSS	(%R9,%RAX,4),%XMM8;
0x1bf6;:0;VSUBSS	%XMM4,%XMM8,%XMM8;
0x1bfa;:0;VMOVSS	(%R8,%RAX,4),%XMM7;
0x1c00;:0;VSUBSS	%XMM5,%XMM7,%XMM7;
0x1c04;:0;VMOVSS	(%RSI,%RAX,4),%XMM17;
0x1c0b;:0;VSUBSS	%XMM3,%XMM17,%XMM17;
0x1c11;:0;LEA	0x1(%RAX),%RAX;
0x1c15;:0;VMULSS	%XMM8,%XMM8,%XMM1;
0x1c1a;:0;CMP	%RAX,%RDI;
0x1c1d;:0;VMOVSS	%XMM7,%XMM7,%XMM2;
0x1c21;:0;VFMADD132SS	%XMM7,%XMM11,%XMM2;
0x1c26;:0;VFMADD231SS	%XMM17,%XMM17,%XMM1;
0x1c2c;:0;VADDSS	%XMM2,%XMM1,%XMM2;
0x1c30;:0;VSQRTSS	%XMM2,%XMM2,%XMM1;
0x1c34;:0;VMULSS	%XMM2,%XMM1,%XMM1;
0x1c38;:0;VDIVSS	%XMM1,%XMM10,%XMM1;
0x1c3c;:0;VFMADD231SS	%XMM17,%XMM1,%XMM18;
0x1c42;:0;VFMADD231SS	%XMM8,%XMM1,%XMM6;
0x1c47;:0;VFMADD231SS	%XMM7,%XMM1,%XMM16;
0x1c4d;:0;JA	1bf0 <move_particles+0x2b0>;