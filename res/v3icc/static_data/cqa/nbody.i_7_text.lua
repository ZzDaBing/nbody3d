_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Use vector aligned instructions:\n  1) align your arrays on 64 bytes boundaries\n  2) inform your compiler that your arrays are vector aligned: read your compiler manual.\n",
          details = " - VEXTRACTF64X4: 3 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "9 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n12 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 111 FP arithmetical operations:\n - 105: addition or subtraction (6 inside FMA instructions)\n - 6: multiply (all inside FMA instructions)\nThe binary loop is loading 460 bytes (115 single precision FP elements).\nThe binary loop is storing 32 bytes (8 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.23 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 95\nloop length        : 555\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 11\nused zmm registers : 15\nnb stack references: 8\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 35.00 cycles\ninstruction queue    : 47.50 cycles\ndecoding             : 47.50 cycles\nmicro-operation queue: 48.00 cycles\nfront end            : 48.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5    | P6\n-------------------------------------------------------------\nuops   | 24.50 | 24.50 | 15.00 | 15.00 | 11.00 | 11.00 | 7.00\ncycles | 24.50 | 24.50 | 15.00 | 15.00 | 11.00 | 11.00 | 7.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 48.00\nDispatch  : 24.50\nOverall L1: 48.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 25%\nload   : 50%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 22%\nFP\nall     : 61%\nload    : 46%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 80%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 86%\nINT+FP\nall     : 50%\nload    : 47%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 70%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 58%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 24%\nload   : 56%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 18%\nFP\nall     : 38%\nload    : 32%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 41%\nfma     : 6%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 51%\nINT+FP\nall     : 34%\nload    : 37%\nstore   : 7%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 37%\nfma     : 6%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 37%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 48.00 cycles. At this rate:\n - 7% of peak load performance is reached (9.58 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.67 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4029d8\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nVPXORD %ZMM16,%ZMM16,%ZMM16            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV %R13,0x80(%RSP)                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVSS 0xec7e(%RIP),%XMM2              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPS 0xea30(%RIP),%ZMM17            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVDQU32 0xeae6(%RIP),%ZMM18          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVDQU32 0xea9c(%RIP),%ZMM19          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPS 0xe9d2(%RIP),%ZMM20            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV (%RSP),%RCX                        | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x30(%RSP),%R10                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x50(%RSP),%R13                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x48(%RSP),%R11                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x58(%RSP),%R8                     | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVSS (%R8,%RAX,4),%XMM9              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSS (%R10,%RAX,4),%XMM8             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVAPS %ZMM16,%ZMM0                   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM0,%ZMM3                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM3,%ZMM1                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVSS (%R11,%RAX,4),%XMM7             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVXORPS 0xebce(%RIP),%XMM9,%XMM4        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVXORPS 0xebc6(%RIP),%XMM8,%XMM5        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVXORPS 0xebbe(%RIP),%XMM7,%XMM6        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nCMP $0x960,%R15                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 403419 <main+0x1129>                | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0xa8(%RSP),%RBX                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %RBX,%RBX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 402821 <main+0x531>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMPQ $0,0xa0(%RSP)                     | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 4033fd <main+0x110d>               | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMP %R14,%R15                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R14,%RBX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCMOVB %R15,%RBX                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nMOV %R15,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB %RBX,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $0xf,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNEG %R9                                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R15,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%RBX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 402829 <main+0x539>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVMOVAPS %ZMM19,%ZMM29                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM18,%ZMM28                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPBROADCASTQ %RBX,%ZMM27               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3       | 1\nVBROADCASTSS %XMM4,%ZMM26              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nXOR %EDX,%EDX\nVBROADCASTSS %XMM5,%ZMM25              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVBROADCASTSS %XMM6,%ZMM30              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPS 0xea3d(%RIP),%ZMM24            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCMP %RBX,%R15                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 4029d8 <main+0x6e8>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVEXTRACTF64X4 $0x1,%ZMM0,%YMM4         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM0,%YMM4,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM3,%YMM0         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM3,%YMM0,%YMM3               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM6,%YMM5              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $-0x56,%YMM6,%YMM10            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM6,%YMM11             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM6,%YMM5,%YMM12              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM11,%YMM10,%YMM13            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM3,%YMM0              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM13,%YMM12,%YMM14            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM1,%YMM13        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM1,%YMM13,%YMM13             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x56,%YMM3,%YMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM3,%YMM5              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM3,%YMM0,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM13,%YMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $-0x56,%YMM13,%YMM0            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM13,%YMM3             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM5,%YMM4,%YMM10              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM13,%YMM1,%YMM4              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM3,%YMM0,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM10,%YMM6,%YMM11             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM5,%YMM4,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPSRLQ $0x20,%XMM14,%XMM15             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPSRLQ $0x20,%XMM11,%XMM12             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPSRLQ $0x20,%XMM6,%XMM10              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDSS %XMM14,%XMM15,%XMM21            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM11,%XMM12,%XMM22            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM6,%XMM10,%XMM23             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SS (%R13,%RAX,4),%XMM2,%XMM21 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM21,(%R13,%RAX,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS (%RCX,%RAX,4),%XMM2,%XMM22 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM22,(%RCX,%RAX,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS (%R12,%RAX,4),%XMM2,%XMM23 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM23,(%R12,%RAX,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM9,%XMM2,%XMM21         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM21,(%R8,%RAX,4)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM8,%XMM2,%XMM22         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM22,(%R10,%RAX,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM7,%XMM2,%XMM23         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM23,(%R11,%RAX,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x1,%RAX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R15,%RAX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 402686 <main+0x396>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV $0x4113b4,%EBX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x80(%RSP),%R13                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\n",
        },
      },
      header = {
        "3% of peak computational performance is used (2.31 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 48.00 to 36.00 cycles (1.33x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "50% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 47% of SSE/AVX loads are used in vector version.\n - 0% of SSE/AVX stores are used in vector version.\n - 70% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 0% of SSE/AVX fused multiply-add instructions are used in vector version.\n - 58% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 34% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 48.00 to 23.49 cycles (2.04x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 6 FMA (fused multiply-add) operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Pass to your compiler a micro-architecture specialization option:\n  * Please read your compiler manual\n - Use vector aligned instructions:\n  1) align your arrays on 64 bytes boundaries\n  2) inform your compiler that your arrays are vector aligned: read your compiler manual.\n",
          details = " - VEXTRACTF64X4: 3 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 3 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "9 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n12 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 111 FP arithmetical operations:\n - 105: addition or subtraction (6 inside FMA instructions)\n - 6: multiply (all inside FMA instructions)\nThe binary loop is loading 460 bytes (115 single precision FP elements).\nThe binary loop is storing 32 bytes (8 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.23 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 95\nloop length        : 555\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 11\nused zmm registers : 15\nnb stack references: 8\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 35.00 cycles\ninstruction queue    : 47.50 cycles\ndecoding             : 47.50 cycles\nmicro-operation queue: 48.00 cycles\nfront end            : 48.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5    | P6\n-------------------------------------------------------------\nuops   | 24.50 | 24.50 | 15.00 | 15.00 | 11.00 | 11.00 | 7.00\ncycles | 24.50 | 24.50 | 15.00 | 15.00 | 11.00 | 11.00 | 7.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 48.00\nDispatch  : 24.50\nOverall L1: 48.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 25%\nload   : 50%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 22%\nFP\nall     : 61%\nload    : 46%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 80%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 86%\nINT+FP\nall     : 50%\nload    : 47%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 70%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 58%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 24%\nload   : 56%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 18%\nFP\nall     : 38%\nload    : 32%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 41%\nfma     : 6%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 51%\nINT+FP\nall     : 34%\nload    : 37%\nstore   : 7%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 37%\nfma     : 6%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 37%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 48.00 cycles. At this rate:\n - 7% of peak load performance is reached (9.58 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.67 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 4029d8\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nVPXORD %ZMM16,%ZMM16,%ZMM16            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV %R13,0x80(%RSP)                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVMOVSS 0xec7e(%RIP),%XMM2              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPS 0xea30(%RIP),%ZMM17            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVDQU32 0xeae6(%RIP),%ZMM18          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVDQU32 0xea9c(%RIP),%ZMM19          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVUPS 0xe9d2(%RIP),%ZMM20            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV (%RSP),%RCX                        | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x30(%RSP),%R10                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x50(%RSP),%R13                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x48(%RSP),%R11                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nMOV 0x58(%RSP),%R8                     | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nVMOVSS (%R8,%RAX,4),%XMM9              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSS (%R10,%RAX,4),%XMM8             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVAPS %ZMM16,%ZMM0                   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM0,%ZMM3                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM3,%ZMM1                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVSS (%R11,%RAX,4),%XMM7             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVXORPS 0xebce(%RIP),%XMM9,%XMM4        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVXORPS 0xebc6(%RIP),%XMM8,%XMM5        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVXORPS 0xebbe(%RIP),%XMM7,%XMM6        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nCMP $0x960,%R15                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 403419 <main+0x1129>                | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0xa8(%RSP),%RBX                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %RBX,%RBX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 402821 <main+0x531>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMPQ $0,0xa0(%RSP)                     | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 4033fd <main+0x110d>               | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMP %R14,%R15                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %R14,%RBX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCMOVB %R15,%RBX                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nMOV %R15,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB %RBX,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $0xf,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNEG %R9                                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R15,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%RBX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 402829 <main+0x539>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVMOVAPS %ZMM19,%ZMM29                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM18,%ZMM28                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPBROADCASTQ %RBX,%ZMM27               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3       | 1\nVBROADCASTSS %XMM4,%ZMM26              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nXOR %EDX,%EDX\nVBROADCASTSS %XMM5,%ZMM25              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVBROADCASTSS %XMM6,%ZMM30              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPS 0xea3d(%RIP),%ZMM24            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCMP %RBX,%R15                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 4029d8 <main+0x6e8>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVEXTRACTF64X4 $0x1,%ZMM0,%YMM4         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM0,%YMM4,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM3,%YMM0         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM3,%YMM0,%YMM3               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM6,%YMM5              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $-0x56,%YMM6,%YMM10            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM6,%YMM11             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM6,%YMM5,%YMM12              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM11,%YMM10,%YMM13            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM3,%YMM0              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM13,%YMM12,%YMM14            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM1,%YMM13        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM1,%YMM13,%YMM13             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x56,%YMM3,%YMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM3,%YMM5              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM3,%YMM0,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM13,%YMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $-0x56,%YMM13,%YMM0            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM13,%YMM3             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM5,%YMM4,%YMM10              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM13,%YMM1,%YMM4              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM3,%YMM0,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM10,%YMM6,%YMM11             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM5,%YMM4,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPSRLQ $0x20,%XMM14,%XMM15             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPSRLQ $0x20,%XMM11,%XMM12             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPSRLQ $0x20,%XMM6,%XMM10              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDSS %XMM14,%XMM15,%XMM21            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM11,%XMM12,%XMM22            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM6,%XMM10,%XMM23             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SS (%R13,%RAX,4),%XMM2,%XMM21 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM21,(%R13,%RAX,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS (%RCX,%RAX,4),%XMM2,%XMM22 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM22,(%RCX,%RAX,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS (%R12,%RAX,4),%XMM2,%XMM23 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM23,(%R12,%RAX,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM9,%XMM2,%XMM21         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM21,(%R8,%RAX,4)             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM8,%XMM2,%XMM22         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM22,(%R10,%RAX,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM7,%XMM2,%XMM23         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM23,(%R11,%RAX,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x1,%RAX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R15,%RAX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 402686 <main+0x396>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV $0x4113b4,%EBX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV 0x80(%RSP),%R13                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\n",
        },
      },
      header = {
        "3% of peak computational performance is used (2.31 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 48.00 to 36.00 cycles (1.33x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "50% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 47% of SSE/AVX loads are used in vector version.\n - 0% of SSE/AVX stores are used in vector version.\n - 70% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 0% of SSE/AVX fused multiply-add instructions are used in vector version.\n - 58% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 34% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 48.00 to 23.49 cycles (2.04x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 6 FMA (fused multiply-add) operations.",
        },
      },
    },
  common = {
    header = {
      "",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Failed to get the number of paths\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
    },
  },
}
