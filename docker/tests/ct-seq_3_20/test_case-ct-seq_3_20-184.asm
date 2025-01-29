.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 122 
NEG ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 3 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RBX] 
CMOVP DI, DI 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RBX] 
IMUL AL 
ADD SIL, 97 # instrumentation
LEA EBX, qword ptr [RDI] 
MOVZX RDX, AL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
INC BL 
CMP SI, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 99 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
