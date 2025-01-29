.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RCX, DI 
AND RDX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RBX], 65 
SUB CL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 21 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDX] 
SUB CL, 96 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RSI] 
XCHG RDX, RAX 
ADD AX, 19410 
ADC DI, 45 
AND RDI, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RDI] 
ADC SI, -51 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RBX] 
MOVSX EDI, BL 
XCHG DL, AL 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -55 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 125 
DEC BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
