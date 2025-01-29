.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EDX, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDI 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -24 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDX] 
ADD EBX, EDX 
CLD  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -34 
SBB RSI, 53 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 55 # instrumentation
CMOVB RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
STD  
LOOPNE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 32 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 57 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
ADD SIL, -55 # instrumentation
ADC RAX, -91 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], DX 
CMOVP BX, DX 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 6 # instrumentation
CMOVO RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 4096 
IMUL EBX, EBX 
ADD DIL, 81 # instrumentation
CMOVNBE DX, SI 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RSI] 
ADC RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RSI] 
CMOVNZ RCX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
