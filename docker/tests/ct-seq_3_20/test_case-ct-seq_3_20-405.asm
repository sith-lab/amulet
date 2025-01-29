.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RAX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
ADD SIL, -64 # instrumentation
CMOVBE RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 29 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
CWD  
IMUL EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
