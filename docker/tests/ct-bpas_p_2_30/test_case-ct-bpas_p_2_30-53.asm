.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
XCHG BL, DL 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI], -33 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
SBB AL, 110 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
SBB AL, -68 
AND RBX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RBX] 
CMOVNO RBX, RBX 
NEG DI 
CMOVZ BX, CX 
ADC SIL, -119 
AND RBX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RBX] 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 13 
MUL ECX 
CMP DL, AL 
INC SI 
MOVSX RAX, AL 
MOVZX ECX, DX 
MOV DX, 9035 
SBB AL, 46 
MOVZX SI, AL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 12 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
CMOVNL BX, DX 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
MOV RSI, -5129385469693266980 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
XCHG EAX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
