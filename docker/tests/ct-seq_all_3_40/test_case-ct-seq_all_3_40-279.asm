.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -17 # instrumentation
ADC SIL, 79 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
MOVZX BX, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -61 
XOR AL, AL 
DEC RDI 
CMOVB BX, DX 
XOR AL, -42 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -68 
SETLE DIL 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
CMOVS EDI, EDI 
AND RDX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], 101 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RSI] 
CLD  
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -1 # instrumentation
ADC BL, -20 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
INC CL 
CMOVNLE RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RSI] 
CMP EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDI 
INC AX 
SUB DL, CL 
SUB EAX, 529168796 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
MOV BL, -21 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RCX] 
DEC CL 
OR AL, 92 
ADD AL, -33 
AND RCX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RCX] 
SUB DIL, -73 
AND RCX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
