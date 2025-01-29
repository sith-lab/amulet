.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD AX, 1422 
SUB RAX, 1583880156 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -24 
CMP AL, 67 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
MOVZX AX, BL 
SBB RSI, -112 
CMOVB RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RCX 
SBB DX, SI 
SBB EAX, -16810034 
MOVSX RDI, DI 
AND RSI, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 0 # instrumentation
CMOVNP DX, SI 
AND RBX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RBX] 
SBB EDX, -122 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDI] 
ADC SIL, -86 
ADC EAX, -774562488 
ADC BL, AL 
ADD BL, CL 
ADC RAX, RBX 
MOVZX EBX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
