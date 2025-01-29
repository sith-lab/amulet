.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD BL, -78 
OR DX, 0b1000000000000000 # instrumentation
BSF SI, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RCX] 
CMOVBE DX, SI 
INC RSI 
NEG BL 
CMOVNL EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 56 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RAX], -118 
MOVZX RSI, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EDI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ECX 
ADD DIL, 61 # instrumentation
CMOVNBE ECX, EBX 
CMOVNBE EDI, EAX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV RSI, 3325736444871230838 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RCX] 
MUL AL 
MOVZX ECX, SI 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -106 
MOVSX RDX, DIL 
STD  
IMUL ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 37 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -117 
INC RCX 
IMUL EBX, EDX 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EBX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
