.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -39 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 17 # instrumentation
ADC BX, 49 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
NEG DL 
MUL EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DL 
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD AX, -21501 
CBW  
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDX 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -39 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -64 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DIL 
AND RAX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
ADD SIL, 60 # instrumentation
CMOVNBE DX, DX 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 36 # instrumentation
SBB DL, 59 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RSI] 
DEC RBX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EBX 
NEG AX 
MOV RBX, -4840190653585435123 
ADC ECX, ESI 
ADD RAX, -1379717745 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOV EAX, EAX 
SAHF  
IMUL RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
