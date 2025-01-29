.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EDI 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDX 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RAX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -20 # instrumentation
CMOVNZ RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
NEG AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX], -42 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
SBB EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 70 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
