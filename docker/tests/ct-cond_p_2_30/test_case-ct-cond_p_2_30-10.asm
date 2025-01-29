.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RAX 
CWD  
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RBX] 
CMP DL, SIL 
NEG ECX 
ADC DIL, 76 
ADD AL, -55 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
SUB BL, CL 
CMOVNBE RDI, RCX 
MOVZX AX, CL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 7 # instrumentation
CMOVNP DX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RCX] 
ADC EAX, -1546433482 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDX] 
SBB AX, 6037 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 289655406 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RCX] 
XCHG CX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], BL 
MUL CX 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
OR AX, 0b1000000000000000 # instrumentation
BSR AX, AX 
MOVSX RCX, BX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RAX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
