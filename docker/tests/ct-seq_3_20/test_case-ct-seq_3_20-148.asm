.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
ADD DL, -86 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RAX 
SUB BL, DL 
CMOVNZ RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 58 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOV AL, -23 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDI] 
ADD ESI, 25 
DEC CX 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], BX 
MOVZX CX, BL 
ADC DIL, BL 
CMOVBE EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
