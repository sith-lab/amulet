.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
CMOVS ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 32 
INC AL 
SBB SI, CX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RAX 
MOVSX RBX, AX 
CMOVL EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RAX] 
ADD DIL, -103 # instrumentation
SBB RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RDI 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 39 # instrumentation
CMOVNO ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RCX] 
XCHG ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
ADC SI, -67 
SBB AX, 2443 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], BX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
MOV ECX, -1408980157 
IMUL DL 
ADD AL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
