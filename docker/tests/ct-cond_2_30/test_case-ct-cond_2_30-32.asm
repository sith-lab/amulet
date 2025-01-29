.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 64 # instrumentation
CMOVNB ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -23 
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, -115 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RAX] 
XCHG CX, AX 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RBX 
ADC BL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RSI] 
MOV DL, -66 
XCHG CX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDI] 
ADD DIL, -41 
ADC BL, -125 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 85 # instrumentation
MOVSX EDI, DX 
CMOVNZ AX, AX 
MUL CL 
SBB SIL, 79 
CMP AX, 4147 
MOVZX ESI, CL 
CMOVNB DI, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RAX] 
INC ESI 
ADD DI, -94 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
IMUL RAX, RBX 
LEA RBX, qword ptr [RCX + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
