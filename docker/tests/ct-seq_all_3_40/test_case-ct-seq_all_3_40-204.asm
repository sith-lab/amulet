.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AX, 12400 
XADD CX, CX 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
NEG AL 
XOR AL, -17 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, -50 # instrumentation
CMOVNS RDX, RCX 
MOVSX AX, CL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], EDI 
SETNLE AL 
SETS DL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 58 # instrumentation
SETNB CL 
SBB SI, CX 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
CMPXCHG RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -24 
AND RDX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDX] 
ADD SIL, 88 # instrumentation
CMOVP RBX, RSI 
MOV BL, -79 
AND RCX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RCX] 
MOVSX RBX, DL 
CMOVNL AX, AX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DIL 
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RCX] 
CMOVZ BX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RSI] 
CMOVNLE RSI, RCX 
CMOVBE AX, AX 
DEC BL 
SETZ CL 
DEC DL 
CMP AX, 120 
XADD AL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
