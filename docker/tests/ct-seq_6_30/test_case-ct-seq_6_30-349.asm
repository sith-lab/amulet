.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EDI 
CMOVS SI, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RAX] 
IMUL DI, DI, -53 
SBB EAX, EBX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NEG RAX 
CMP AX, 14863 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], CX 
AND RBX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RBX] 
ADD AX, -31 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DIL 
ADD AX, 1335 
SBB RAX, 1217738318 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -63 # instrumentation
ADC CL, BL 
SUB DL, DIL 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
INC CL 
XCHG RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP BX, -49 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 60 # instrumentation
ADC AX, -25981 
AND RDX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
AND RDX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], -46 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
