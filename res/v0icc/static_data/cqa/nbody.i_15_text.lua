_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Try to simplify your code and/or replace indirect accesses with unit-stride ones.",
          details = " - VGATHERDPS: 12 occurrences\n - VSCATTERDPS: 6 occurrences\n",
          title = "Gather/scatter instructions",
          txt = "Detected gather/scatter instructions (typically caused by indirect accesses).",
        },
        {
          title = "Type of elements and instruction set",
          txt = "6 AVX-512 instructions are processing arithmetic or math operations on single precision FP elements in vector mode (sixteen at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 192 FP arithmetical operations:\n - 96: addition or subtraction (all inside FMA instructions)\n - 96: multiply (all inside FMA instructions)\nThe binary loop is loading 768 bytes (192 single precision FP elements).\nThe binary loop is storing 384 bytes (96 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.17 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 61\nloop length        : 350\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 13\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 22.00 cycles\ninstruction queue    : 30.50 cycles\ndecoding             : 30.50 cycles\nmicro-operation queue: 37.00 cycles\nfront end            : 37.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6\n---------------------------------------------------------\nuops   | 18.00 | 18.00 | 9.00 | 9.00 | 3.50 | 3.50 | 6.00\ncycles | 18.00 | 18.00 | 9.00 | 9.00 | 3.50 | 3.50 | 6.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 37.00\nDispatch  : 18.00\nData deps.: 1.00\nOverall L1: 37.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 100%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 100%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 37.00 cycles. At this rate:\n - 16% of peak load performance is reached (20.76 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 16% of peak store performance is reached (10.38 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 37.00 to 30.50 cycles (1.21x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 403292\n\nInstruction                                | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------------\nLEA (%RDX,%RDX,2),%RCX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPXORD %ZMM22,%ZMM22,%ZMM22                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM21,%ZMM21,%ZMM21                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K1,%K1,%K1                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K2,%K2,%K2                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA 0x30(%RDX,%RDX,2),%R9                  | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nVPXORD %ZMM20,%ZMM20,%ZMM20                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM24,%ZMM24,%ZMM24                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K0,%K0,%K3                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K0,%K0,%K4                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA (%R15,%RCX,8),%R8                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15,%R9,8),%R10                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPXORD %ZMM25,%ZMM25,%ZMM25                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM26,%ZMM26,%ZMM26                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K0,%K0,%K5                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K6,%K6,%K6                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x8(%R8,%ZMM19,8),%ZMM24{%K4}   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nVGATHERDPS 0xc(%R8,%ZMM19,8),%ZMM20{%K3}   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K0,%K0,%K7                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM29,%ZMM29,%ZMM29                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K3,%K3,%K3                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM28,%ZMM28,%ZMM28                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K4,%K4,%K4                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM27,%ZMM27,%ZMM27                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM30,%ZMM30,%ZMM30                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nADD $0x20,%RDX                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPXORD %ZMM31,%ZMM31,%ZMM31                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x10(%R8,%ZMM19,8),%ZMM21{%K2}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K2,%K2,%K2                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x14(%R8,%ZMM19,8),%ZMM22{%K1}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K1,%K1,%K1                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD231PS %ZMM0,%ZMM22,%ZMM24            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGATHERDPS 0x4(%R8,%ZMM19,8),%ZMM25{%K5}   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K5,%K5,%K5                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS (%R8,%ZMM19,8),%ZMM26{%K6}      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nVSCATTERDPS %ZMM24,0x8(%R8,%ZMM19,8){%K7}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nVFMADD231PS %ZMM0,%ZMM20,%ZMM26            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM0,%ZMM21,%ZMM25            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSCATTERDPS %ZMM25,0x4(%R8,%ZMM19,8){%K1}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nKXNORW %K0,%K0,%K6                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVSCATTERDPS %ZMM26,(%R8,%ZMM19,8){%K2}     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nKXNORW %K0,%K0,%K1                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM20,%ZMM20,%ZMM20                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K0,%K0,%K2                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x14(%R10,%ZMM19,8),%ZMM29{%K3} | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K0,%K0,%K3                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x10(%R10,%ZMM19,8),%ZMM28{%K4} | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K0,%K0,%K4                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0xc(%R10,%ZMM19,8),%ZMM27{%K5}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K0,%K0,%K5                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x8(%R10,%ZMM19,8),%ZMM30{%K6}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nVFMADD231PS %ZMM0,%ZMM29,%ZMM30            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGATHERDPS 0x4(%R10,%ZMM19,8),%ZMM31{%K1}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nVGATHERDPS (%R10,%ZMM19,8),%ZMM20{%K2}     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nVSCATTERDPS %ZMM30,0x8(%R10,%ZMM19,8){%K3} | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nVFMADD231PS %ZMM0,%ZMM27,%ZMM20            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM0,%ZMM28,%ZMM31            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSCATTERDPS %ZMM31,0x4(%R10,%ZMM19,8){%K4} | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nCMP %R11,%RDX                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVSCATTERDPS %ZMM20,(%R10,%ZMM19,8){%K5}    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nJB 403292 <main+0xfa2>                     | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "8% of peak computational performance is used (5.19 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 37.00 to 26.00 cycles (1.42x speedup).",
        },
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is fully vectorized, using full register length.\n",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 96 FMA (fused multiply-add) operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Try to simplify your code and/or replace indirect accesses with unit-stride ones.",
          details = " - VGATHERDPS: 12 occurrences\n - VSCATTERDPS: 6 occurrences\n",
          title = "Gather/scatter instructions",
          txt = "Detected gather/scatter instructions (typically caused by indirect accesses).",
        },
        {
          title = "Type of elements and instruction set",
          txt = "6 AVX-512 instructions are processing arithmetic or math operations on single precision FP elements in vector mode (sixteen at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 192 FP arithmetical operations:\n - 96: addition or subtraction (all inside FMA instructions)\n - 96: multiply (all inside FMA instructions)\nThe binary loop is loading 768 bytes (192 single precision FP elements).\nThe binary loop is storing 384 bytes (96 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.17 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 61\nloop length        : 350\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 13\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\ninstruction fetch    : 22.00 cycles\ninstruction queue    : 30.50 cycles\ndecoding             : 30.50 cycles\nmicro-operation queue: 37.00 cycles\nfront end            : 37.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6\n---------------------------------------------------------\nuops   | 18.00 | 18.00 | 9.00 | 9.00 | 3.50 | 3.50 | 6.00\ncycles | 18.00 | 18.00 | 9.00 | 9.00 | 3.50 | 3.50 | 6.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 37.00\nDispatch  : 18.00\nData deps.: 1.00\nOverall L1: 37.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 100%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 100%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 100%\nFP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : 100%\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 37.00 cycles. At this rate:\n - 16% of peak load performance is reached (20.76 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 16% of peak store performance is reached (10.38 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 37.00 to 30.50 cycles (1.21x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 403292\n\nInstruction                                | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------------\nLEA (%RDX,%RDX,2),%RCX                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPXORD %ZMM22,%ZMM22,%ZMM22                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM21,%ZMM21,%ZMM21                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K1,%K1,%K1                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K2,%K2,%K2                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA 0x30(%RDX,%RDX,2),%R9                  | 1     | 0    | 0    | 0    | 0    | 1    | 0    | 0  | 1       | 1\nVPXORD %ZMM20,%ZMM20,%ZMM20                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM24,%ZMM24,%ZMM24                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K0,%K0,%K3                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K0,%K0,%K4                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA (%R15,%RCX,8),%R8                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nLEA (%R15,%R9,8),%R10                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPXORD %ZMM25,%ZMM25,%ZMM25                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM26,%ZMM26,%ZMM26                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K0,%K0,%K5                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K6,%K6,%K6                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x8(%R8,%ZMM19,8),%ZMM24{%K4}   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nVGATHERDPS 0xc(%R8,%ZMM19,8),%ZMM20{%K3}   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K0,%K0,%K7                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM29,%ZMM29,%ZMM29                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K3,%K3,%K3                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM28,%ZMM28,%ZMM28                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K4,%K4,%K4                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM27,%ZMM27,%ZMM27                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM30,%ZMM30,%ZMM30                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nADD $0x20,%RDX                             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVPXORD %ZMM31,%ZMM31,%ZMM31                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x10(%R8,%ZMM19,8),%ZMM21{%K2}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K2,%K2,%K2                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x14(%R8,%ZMM19,8),%ZMM22{%K1}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K1,%K1,%K1                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVFMADD231PS %ZMM0,%ZMM22,%ZMM24            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGATHERDPS 0x4(%R8,%ZMM19,8),%ZMM25{%K5}   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K5,%K5,%K5                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS (%R8,%ZMM19,8),%ZMM26{%K6}      | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nVSCATTERDPS %ZMM24,0x8(%R8,%ZMM19,8){%K7}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nVFMADD231PS %ZMM0,%ZMM20,%ZMM26            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM0,%ZMM21,%ZMM25            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSCATTERDPS %ZMM25,0x4(%R8,%ZMM19,8){%K1}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nKXNORW %K0,%K0,%K6                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVSCATTERDPS %ZMM26,(%R8,%ZMM19,8){%K2}     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nKXNORW %K0,%K0,%K1                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVPXORD %ZMM20,%ZMM20,%ZMM20                | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nKXNORW %K0,%K0,%K2                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x14(%R10,%ZMM19,8),%ZMM29{%K3} | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K0,%K0,%K3                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x10(%R10,%ZMM19,8),%ZMM28{%K4} | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K0,%K0,%K4                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0xc(%R10,%ZMM19,8),%ZMM27{%K5}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nKXNORW %K0,%K0,%K5                         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nVGATHERDPS 0x8(%R10,%ZMM19,8),%ZMM30{%K6}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nVFMADD231PS %ZMM0,%ZMM29,%ZMM30            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVGATHERDPS 0x4(%R10,%ZMM19,8),%ZMM31{%K1}  | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nVGATHERDPS (%R10,%ZMM19,8),%ZMM20{%K2}     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0  | 19      | 10\nVSCATTERDPS %ZMM30,0x8(%R10,%ZMM19,8){%K3} | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nVFMADD231PS %ZMM0,%ZMM27,%ZMM20            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVFMADD231PS %ZMM0,%ZMM28,%ZMM31            | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0  | 6       | 0.50\nVSCATTERDPS %ZMM31,0x4(%R10,%ZMM19,8){%K4} | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nCMP %R11,%RDX                              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0.50 | 0  | 1       | 0.50\nVSCATTERDPS %ZMM20,(%R10,%ZMM19,8){%K5}    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 1  | 25      | 15\nJB 403292 <main+0xfa2>                     | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "8% of peak computational performance is used (5.19 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 37.00 to 26.00 cycles (1.42x speedup).",
        },
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is fully vectorized, using full register length.\n",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          title = "FMA",
          txt = "Detected 96 FMA (fused multiply-add) operations.",
        },
      },
    },
  common = {
    header = {
      "",
    },
    nb_paths = 1,
  },
}
