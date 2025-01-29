.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV AL, 45 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RAX] 
CMOVBE EDI, EDX 
CMOVP DX, CX 
CMOVNLE RCX, RCX 
INC AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
OR AL, 31 
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI], -108 
AND RDX, 0b1111111111111 # instrumentation
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDX 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -85 # instrumentation
SETNBE AL 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -51 
TEST EAX, -1235598240 
AND RCX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RCX] 
AND EAX, 1207355073 
SETNP DL 
SBB DL, 41 
AND RCX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RCX] 
CMOVNZ SI, CX 
SETZ BL 
SETP CL 
JMP .bb_main.2 
.bb_main.2:
MUL BL 
SETB BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], 27 
AND RAX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RAX] 
NEG DX 
MOVZX ESI, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -68 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], DIL 
TEST AL, DL 
TEST SIL, 51 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
