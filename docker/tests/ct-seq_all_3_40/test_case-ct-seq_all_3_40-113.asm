.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWD  
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDI] 
SUB SIL, SIL 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -1497303779 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], CL 
ADD RAX, 1477463698 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 32 
AND RBX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RBX] 
CMOVNBE RDX, RDX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RBX] 
SETLE CL 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 126 
ADD BL, -102 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -64 
MUL EDI 
SBB SI, 60 
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RAX 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], 87 
SUB SI, 17 
CMOVNB AX, BX 
OR CX, 56 
ADC BL, BL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RBX] 
CMOVNBE EAX, ESI 
CMOVS RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], -105 
AND RDI, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RDI] 
ADC EAX, 21 
MOVZX EDI, BX 
SBB EDI, -100 
XOR RDX, 122 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], EBX 
XCHG RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RCX] 
MOVZX EBX, DIL 
ADD EDX, -122 
OR SIL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
