.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
ADC AL, -89 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RAX] 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 112 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], ECX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 58 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -7 
AND RDI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], CL 
CLD  
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], SIL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RAX] 
ADD SIL, -64 # instrumentation
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
