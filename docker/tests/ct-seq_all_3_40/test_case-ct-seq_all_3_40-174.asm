.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
SUB ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RCX] 
ADC AL, 90 
CMOVNZ DI, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDX] 
IMUL EBX, EDI 
ADC DL, CL 
CMPXCHG CX, DI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 56 
IMUL RAX, RSI, 36 
CMOVNB DI, DX 
JMP .bb_main.1 
.bb_main.1:
IMUL ECX, EAX, 5 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], AL 
CMOVNO DX, SI 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
INC RBX 
CMP SI, 2 
MOV BX, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], EAX 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], -28041 
NOT AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], CX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 23 # instrumentation
NOT RBX 
SBB EAX, -2032336911 
MOV BX, 25430 
SBB RAX, 1124814296 
CMOVS ECX, EBX 
MOV RSI, 2232221154891688951 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RSI 
CMOVNL RCX, RSI 
ADC SIL, BL 
XOR SI, DI 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
