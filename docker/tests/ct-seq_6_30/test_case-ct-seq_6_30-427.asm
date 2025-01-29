.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -17 # instrumentation
CMOVO DI, DX 
CMOVBE RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RSI] 
ADD EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DIL 
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, 98 # instrumentation
CMOVS EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
MOV RBX, RBX 
SUB EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 50 # instrumentation
CMOVP EBX, ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 99 
CMOVL DI, BX 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RDI 
CMOVP RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -115 
CMOVNZ DX, DX 
MOVZX RBX, BL 
ADC DI, BX 
SBB DIL, 51 
JMP .bb_main.3 
.bb_main.3:
ADD EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 36 
SUB RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
