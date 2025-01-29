.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX] 
CMP EDI, -42 
DEC SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDI] 
MOVSX EAX, DX 
CMOVP AX, SI 
ADC RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RDX 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RDI] 
ADD EAX, -622662566 
ADC SIL, -14 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 112 
CDQ  
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RCX] 
ADD AL, -88 
SBB AL, 91 
ADC AL, -52 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOVSX EAX, AX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 1990170299 
AND RBX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RBX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RCX] 
DEC AL 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
CMP CL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
MOV EAX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
