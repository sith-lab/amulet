.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
SUB DI, CX 
CDQ  
MOV RAX, 7798078045514495644 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EDI 
ADD BL, 84 
XCHG DL, BL 
SUB DL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], AL 
SBB RAX, -283054834 
AND EDX, -100 
ADC AL, 123 
CWDE  
SUB AL, BL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -56 # instrumentation
SETNB BL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
MOV RSI, -1972113120191687273 
AND RDI, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RDI] 
SAHF  
ADD DIL, 36 
XCHG SI, SI 
SETNB BL 
NOT CL 
SBB EAX, 1051108286 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -18584 
XADD ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RAX] 
SETNS AL 
ADC RBX, 31 
IMUL EAX 
CMP EBX, 15 
OR EAX, 2010032438 
IMUL BL 
MOV CL, DL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
MUL CX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
