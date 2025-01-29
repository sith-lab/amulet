.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
JNO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 89 
CMOVNO RAX, RCX 
ADD AL, -118 
JMP .bb_main.2 
.bb_main.2:
ADD CL, CL 
NEG DI 
ADC RAX, -337465492 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
CWD  
SBB CL, AL 
ADD RBX, RBX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -32 # instrumentation
SBB AL, AL 
CMOVZ DI, CX 
AND RDI, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], CX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX], 127 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 45 # instrumentation
ADC RAX, -216246409 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RDI] 
ADD DX, CX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DIL 
JNZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -15 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDI] 
MUL ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
