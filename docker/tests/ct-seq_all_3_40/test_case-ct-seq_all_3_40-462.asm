.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 51 # instrumentation
CMOVNP ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RSI] 
MOVZX BX, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], SI 
OR EBX, 23 
SUB SIL, 24 
AND RCX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDX] 
IMUL ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
OR DL, CL 
AND RBX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
IMUL CL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 101 
SETNS BL 
SBB EDX, -62 
OR RAX, -25 
ADC ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RBX] 
TEST RDX, -740827176 
CLC  
CMOVNP BX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
ADC BL, BL 
XADD AL, BL 
CMOVNZ DI, AX 
CMPXCHG AL, CL 
AND RDI, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RDI] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL ESI 
ADD SIL, -51 # instrumentation
CMOVLE RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RCX] 
MOV RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
SBB ECX, 42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
