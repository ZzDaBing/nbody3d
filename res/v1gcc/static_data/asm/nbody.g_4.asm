address;source_location;insn;indent
0x1cc0;:0;VMOVSS	(%RDI,%RAX,4),%XMM1;
0x1cc5;:0;LEA	(%RAX),%RDX;
0x1cc8;:0;VFMADD213SS	(%RCX,%RAX,4),%XMM0,%XMM1;
0x1cce;:0;VMOVSS	%XMM1,(%RCX,%RAX,4);
0x1cd3;:0;VMOVSS	(%R14,%RAX,4),%XMM1;
0x1cd9;:0;CMP	%RDX,%R9;
0x1cdc;:0;VFMADD213SS	(%RSI,%RAX,4),%XMM0,%XMM1;
0x1ce2;:0;VMOVSS	%XMM1,(%RSI,%RAX,4);
0x1ce7;:0;VMOVSS	(%R15,%RAX,4),%XMM1;
0x1ced;:0;VFMADD213SS	(%R8,%RAX,4),%XMM0,%XMM1;
0x1cf3;:0;VMOVSS	%XMM1,(%R8,%RAX,4);
0x1cf9;:0;LEA	0x1(%RAX),%RAX;
0x1cfd;:0;JNE	1cc0 <move_particles+0x390>;
