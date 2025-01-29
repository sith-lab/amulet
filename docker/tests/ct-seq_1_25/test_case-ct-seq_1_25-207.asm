.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STC  
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -83 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, -49 # instrumentation
CMOVNS RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
CMP DIL, 61 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], BX 
IMUL RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -50 
CMOVNL DX, SI 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RSI] 
CLD  
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
XCHG EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 124 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RSI] 
XCHG DL, AL 
MOVSX RSI, DL 
ADC EAX, -3 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], CX 
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
