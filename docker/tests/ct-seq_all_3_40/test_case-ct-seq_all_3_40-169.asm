.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
SBB AX, 27595 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RCX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RSI] 
ADC DX, 85 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], -95 
ADD ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
SETZ AL 
IMUL RDI 
XOR SIL, CL 
CBW  
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XCHG RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RCX] 
MOV ESI, 1732848829 
SETNZ SIL 
CMOVP DI, DI 
AND RCX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RCX], 71 
ADD BX, -35 
SBB DL, -114 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
SUB BL, CL 
XCHG SI, BX 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], AL 
NEG AL 
IMUL AX 
SETO AL 
AND RAX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], SIL 
SBB RBX, RCX 
MOV RAX, 697378702728231339 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
ADD EAX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 101 
CMOVP SI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
