.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -5 # instrumentation
SBB ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
SETBE CL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
SETNO CL 
ADC SIL, BL 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDI] 
XADD AL, CL 
SETL CL 
DEC BL 
SUB DL, CL 
MOV AL, 94 
SBB RBX, -15 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], -118 
CMPXCHG RBX, RSI 
CMOVS EAX, EBX 
MOV RDI, 1265249327161794050 
AND RSI, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RSI] 
AND AX, 16385 
AND RSI, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RSI] 
XOR AL, 31 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 117 # instrumentation
SBB EDI, EAX 
TEST DL, AL 
SETNS BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -62 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
CMOVB EDX, EBX 
SETNS DL 
CMOVNL DX, BX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], CL 
XCHG ECX, EBX 
CMOVP EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDI] 
MOV DL, 61 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
XADD RDI, RCX 
CMOVB RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DX 
AND AL, 51 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
