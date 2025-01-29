.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], 10 
AND EAX, -1895663819 
CMOVZ AX, DX 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 54 
NOT SI 
AND RDX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], RCX 
SUB EDX, -31 
DEC AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RSI], RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
IMUL EBX, ECX, -92 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -122 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RSI] 
SETL DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
MOVSX EAX, CL 
CMOVNP AX, AX 
CLC  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
SETLE SIL 
AND ESI, EAX 
XCHG ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RCX 
NEG EBX 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB EBX, 109 
AND DIL, DL 
CMOVP SI, BX 
LEA ECX, qword ptr [RBX + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DI 
SUB SIL, -30 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], DL 
SETO BL 
ADC EAX, 92851277 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
SETNL BL 
SUB AX, -6017 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
