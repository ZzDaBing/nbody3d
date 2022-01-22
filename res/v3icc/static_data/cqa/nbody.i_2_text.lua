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
          txt = "The binary loop is composed of 111 FP arithmetical operations:\n - 105: addition or subtraction (6 inside FMA instructions)\n - 6: multiply (all inside FMA instructions)\nThe binary loop is loading 157 bytes (39 single precision FP elements).\nThe binary loop is storing 25 bytes (6 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.61 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 86\nloop length        : 484\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 11\nused zmm registers : 13\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 31.00 cycles\ninstruction queue    : 43.00 cycles\ndecoding             : 43.00 cycles\nmicro-operation queue: 43.00 cycles\nfront end            : 43.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5    | P6\n-------------------------------------------------------------\nuops   | 24.50 | 24.50 | 10.50 | 10.50 | 11.00 | 11.00 | 7.00\ncycles | 24.50 | 24.50 | 10.50 | 10.50 | 11.00 | 11.00 | 7.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 43.00\nDispatch  : 24.50\nOverall L1: 43.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 21%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 60%\nload    : 36%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 80%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 86%\nINT+FP\nall     : 50%\nload    : 30%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 70%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 61%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 19%\nload   : 12%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 20%\nFP\nall     : 36%\nload    : 19%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 41%\nfma     : 6%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 51%\nINT+FP\nall     : 32%\nload    : 18%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 37%\nfma     : 6%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 38%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 43.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.65 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.58 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 43.00 to 31.00 cycles (1.39x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 40316a\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nVMOVSS 0xe4bc(%RIP),%XMM2              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %AL,0x40(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVPXORD %ZMM20,%ZMM20,%ZMM20            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVSS (%R11,%RDI,4),%XMM9             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSS (%R14,%RDI,4),%XMM8             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVAPS %ZMM20,%ZMM0                   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM0,%ZMM3                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM3,%ZMM1                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVSS (%R13,%RDI,4),%XMM7             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVXORPS 0xe441(%RIP),%XMM9,%XMM4        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVXORPS 0xe439(%RIP),%XMM8,%XMM5        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVXORPS 0xe431(%RIP),%XMM7,%XMM6        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nCMP $0x960,%R15                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 40340d <main+0x111d>                | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0xa8(%RSP),%RDX                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %RDX,%RDX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 402faf <main+0xcbf>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMPQ $0,0xa0(%RSP)                     | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 403405 <main+0x1115>               | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMP %RCX,%R15                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,%RDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCMOVB %R15,%RDX                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nMOV %R15,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB %RDX,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $0xf,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNEG %R9                                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R15,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%RDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 402fb7 <main+0xcc7>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVMOVAPS %ZMM18,%ZMM29                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM17,%ZMM27                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPBROADCASTQ %RDX,%ZMM26               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3       | 1\nVBROADCASTSS %XMM4,%ZMM25              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nXOR %EAX,%EAX\nVBROADCASTSS %XMM5,%ZMM24              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVBROADCASTSS %XMM6,%ZMM28              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPS 0xe2b0(%RIP),%ZMM30            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCMP %RDX,%R15                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 40316a <main+0xe7a>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVEXTRACTF64X4 $0x1,%ZMM0,%YMM4         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM0,%YMM4,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM3,%YMM0         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM3,%YMM0,%YMM3               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM6,%YMM5              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $-0x56,%YMM6,%YMM10            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM6,%YMM11             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM6,%YMM5,%YMM12              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM11,%YMM10,%YMM13            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM3,%YMM0              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM13,%YMM12,%YMM14            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM1,%YMM13        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM1,%YMM13,%YMM13             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x56,%YMM3,%YMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM3,%YMM5              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM3,%YMM0,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM13,%YMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $-0x56,%YMM13,%YMM0            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM13,%YMM3             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM5,%YMM4,%YMM10              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM13,%YMM1,%YMM4              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM3,%YMM0,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM10,%YMM6,%YMM11             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM5,%YMM4,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPSRLQ $0x20,%XMM14,%XMM15             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPSRLQ $0x20,%XMM11,%XMM12             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPSRLQ $0x20,%XMM6,%XMM10              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDSS %XMM14,%XMM15,%XMM21            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM11,%XMM12,%XMM22            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM6,%XMM10,%XMM23             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SS (%R10,%RDI,4),%XMM2,%XMM21 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM21,(%R10,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS (%RBX,%RDI,4),%XMM2,%XMM22 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM22,(%RBX,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS (%R12,%RDI,4),%XMM2,%XMM23 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM23,(%R12,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM9,%XMM2,%XMM21         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM21,(%R11,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM8,%XMM2,%XMM22         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM22,(%R14,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM7,%XMM2,%XMM23         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM23,(%R13,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x1,%RDI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R15,%RDI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 402e12 <main+0xb22>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nNOPW (%RAX,%RAX,1)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0x40(%RSP),%AL                     | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\n",
        },
      },
      header = {
        "4% of peak computational performance is used (2.58 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 43.00 to 34.00 cycles (1.26x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "50% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 30% of SSE/AVX loads are used in vector version.\n - 0% of SSE/AVX stores are used in vector version.\n - 70% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 0% of SSE/AVX fused multiply-add instructions are used in vector version.\n - 61% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 32% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 43.00 to 19.19 cycles (2.24x speedup).",
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
          txt = "The binary loop is composed of 111 FP arithmetical operations:\n - 105: addition or subtraction (6 inside FMA instructions)\n - 6: multiply (all inside FMA instructions)\nThe binary loop is loading 157 bytes (39 single precision FP elements).\nThe binary loop is storing 25 bytes (6 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.61 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 86\nloop length        : 484\nused x86 registers : 13\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 11\nused zmm registers : 13\nnb stack references: 3\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 31.00 cycles\ninstruction queue    : 43.00 cycles\ndecoding             : 43.00 cycles\nmicro-operation queue: 43.00 cycles\nfront end            : 43.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5    | P6\n-------------------------------------------------------------\nuops   | 24.50 | 24.50 | 10.50 | 10.50 | 11.00 | 11.00 | 7.00\ncycles | 24.50 | 24.50 | 10.50 | 10.50 | 11.00 | 11.00 | 7.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 43.00\nDispatch  : 24.50\nOverall L1: 43.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 21%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 25%\nFP\nall     : 60%\nload    : 36%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 80%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 86%\nINT+FP\nall     : 50%\nload    : 30%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 70%\nfma     : 0%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 61%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 19%\nload   : 12%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 12%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 20%\nFP\nall     : 36%\nload    : 19%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 41%\nfma     : 6%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 51%\nINT+FP\nall     : 32%\nload    : 18%\nstore   : 6%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 37%\nfma     : 6%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 38%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 43.00 cycles. At this rate:\n - 2% of peak load performance is reached (3.65 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.58 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 43.00 to 31.00 cycles (1.39x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 40316a\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nVMOVSS 0xe4bc(%RIP),%XMM2              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nMOV %AL,0x40(%RSP)                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 0       | 1\nVPXORD %ZMM20,%ZMM20,%ZMM20            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVSS (%R11,%RDI,4),%XMM9             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVSS (%R14,%RDI,4),%XMM8             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVMOVAPS %ZMM20,%ZMM0                   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM0,%ZMM3                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM3,%ZMM1                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVSS (%R13,%RDI,4),%XMM7             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nVXORPS 0xe441(%RIP),%XMM9,%XMM4        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVXORPS 0xe439(%RIP),%XMM8,%XMM5        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nVXORPS 0xe431(%RIP),%XMM7,%XMM6        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 2       | 0.50\nCMP $0x960,%R15                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 40340d <main+0x111d>                | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nMOV 0xa8(%RSP),%RDX                    | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\nTEST %RDX,%RDX                         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 402faf <main+0xcbf>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMPQ $0,0xa0(%RSP)                     | 1     | 0    | 0    | 1    | 0    | 0.50 | 0.50 | 0  | 1       | 1\nJNE 403405 <main+0x1115>               | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nCMP %RCX,%R15                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nMOV %RCX,%RDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nCMOVB %R15,%RDX                        | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 2       | 1\nMOV %R15,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nSUB %RDX,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nAND $0xf,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nNEG %R9                                | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nADD %R15,%R9                           | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP $0x1,%RDX                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 402fb7 <main+0xcc7>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVMOVAPS %ZMM18,%ZMM29                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVMOVAPS %ZMM17,%ZMM27                  | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPBROADCASTQ %RDX,%ZMM26               | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3       | 1\nVBROADCASTSS %XMM4,%ZMM25              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nXOR %EAX,%EAX\nVBROADCASTSS %XMM5,%ZMM24              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVBROADCASTSS %XMM6,%ZMM28              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVMOVUPS 0xe2b0(%RIP),%ZMM30            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 5       | 0.50\nCMP %RDX,%R15                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJE 40316a <main+0xe7a>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nVEXTRACTF64X4 $0x1,%ZMM0,%YMM4         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM0,%YMM4,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM3,%YMM0         | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM3,%YMM0,%YMM3               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM6,%YMM5              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $-0x56,%YMM6,%YMM10            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM6,%YMM11             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM6,%YMM5,%YMM12              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM11,%YMM10,%YMM13            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM3,%YMM0              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM13,%YMM12,%YMM14            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVEXTRACTF64X4 $0x1,%ZMM1,%YMM13        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 3-6     | 1\nVADDPS %YMM1,%YMM13,%YMM13             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x56,%YMM3,%YMM4             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM3,%YMM5              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM3,%YMM0,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPERMPD $-0x1,%YMM13,%YMM1             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $-0x56,%YMM13,%YMM0            | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPERMPD $0x55,%YMM13,%YMM3             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDPS %YMM5,%YMM4,%YMM10              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM13,%YMM1,%YMM4              | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM3,%YMM0,%YMM5               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM10,%YMM6,%YMM11             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDPS %YMM5,%YMM4,%YMM6               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVPSRLQ $0x20,%XMM14,%XMM15             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPSRLQ $0x20,%XMM11,%XMM12             | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVPSRLQ $0x20,%XMM6,%XMM10              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0  | 2       | 1\nVADDSS %XMM14,%XMM15,%XMM21            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM11,%XMM12,%XMM22            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVADDSS %XMM6,%XMM10,%XMM23             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD213SS (%R10,%RDI,4),%XMM2,%XMM21 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM21,(%R10,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS (%RBX,%RDI,4),%XMM2,%XMM22 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM22,(%RBX,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS (%R12,%RDI,4),%XMM2,%XMM23 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM23,(%R12,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM9,%XMM2,%XMM21         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM21,(%R11,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM8,%XMM2,%XMM22         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM22,(%R14,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nVFMADD213SS %XMM7,%XMM2,%XMM23         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVMOVSS %XMM23,(%R13,%RDI,4)            | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 2       | 1\nADD $0x1,%RDI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nCMP %R15,%RDI                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nJB 402e12 <main+0xb22>                 | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\nNOPW (%RAX,%RAX,1)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 0       | 0.50\nMOV 0x40(%RSP),%AL                     | 1     | 0    | 0    | 1    | 0    | 0    | 0    | 0  | 4       | 1\n",
        },
      },
      header = {
        "4% of peak computational performance is used (2.58 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 43.00 to 34.00 cycles (1.26x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "50% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 30% of SSE/AVX loads are used in vector version.\n - 0% of SSE/AVX stores are used in vector version.\n - 70% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 0% of SSE/AVX fused multiply-add instructions are used in vector version.\n - 61% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 32% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 43.00 to 19.19 cycles (2.24x speedup).",
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
