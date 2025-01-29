.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DIL 
SETP BL 
ADC EAX, -1760891755 
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
MOVZX EDX, CL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
CMOVNO RCX, RDX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -44 # instrumentation
CMOVL BX, DI 
ADD SI, 91 
AND RAX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RAX] 
MOV RSI, 7687001223929815737 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB CL, AL 
AND EAX, 883407506 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -72 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDI], DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
ADD RAX, RDI 
ADC RDI, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
CMP SIL, BL 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR DL, -106 
NOT ESI 
CMC  
MOVZX ESI, DL 
SUB DI, 99 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
XOR AX, -3281 
XOR AX, 18427 
JMP .bb_main.5 
.bb_main.5:
NOT AL 
XCHG BL, AL 
OR RAX, -83 
TEST ECX, -2144120418 
OR ECX, -97 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
SETNZ AL 
SETNZ BL 
SBB DIL, -126 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 40 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
