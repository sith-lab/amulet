.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDX] 
CMOVLE ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDX] 
SUB DL, 13 
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
ADD DIL, -63 # instrumentation
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDI 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RBX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
IMUL RDX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDI] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -104 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 25 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
