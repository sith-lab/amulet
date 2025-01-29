.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RBX, 68 
ADD AL, 50 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
CMOVBE EDI, EAX 
DEC AX 
ADC RDI, 57 
CMOVBE EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 7 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDX 
STC  
CMOVLE EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], BL 
INC DL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], SIL 
AND RDI, 0b1111111111111 # instrumentation
CMP CX, SI 
CMOVNP RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
ADC RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RDI 
STC  
XCHG ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 540731131 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
