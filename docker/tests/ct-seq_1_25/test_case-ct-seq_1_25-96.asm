.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -10 
AND RDI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDI] 
MOV DI, -7727 
XCHG BL, SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
LEA RSI, qword ptr [RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 25 
AND RAX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RAX] 
CMP AX, 16045 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDX 
CMOVNB RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
ADD AX, 85 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDX 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
ADC EDI, 43 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
IMUL CX 
MOVZX RDX, AX 
CBW  
SUB ECX, -105 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
