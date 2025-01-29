.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RSI 
AND RSI, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 111 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RDX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDI] 
SUB DL, CL 
CMOVS RSI, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
CMP RDX, RBX 
CMP SIL, 56 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
