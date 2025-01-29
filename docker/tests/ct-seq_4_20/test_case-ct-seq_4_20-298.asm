.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 46 # instrumentation
MOVZX RCX, SI 
CMOVNZ DX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -1655186576 
DEC AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RCX] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDX], -3 
LEA DI, qword ptr [RSI + RDX + 46791] 
AND RDI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -62 
ADD RDI, 49 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ESI 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
