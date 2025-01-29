.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EDX, BL 
AND RAX, -1500651372 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDI] 
CMP RDI, -26 
ADC RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
CMP BX, AX 
ADC RAX, RBX 
CMOVS RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
XOR SI, CX 
AND RCX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RCX] 
MOV RDX, RBX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RDI] 
CMOVNO SI, SI 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
TEST EDX, 1139337055 
AND RSI, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RSI] 
CMOVNP EDI, EBX 
SUB DIL, -99 
SBB DIL, -56 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], BL 
SETNBE AL 
XOR ECX, EDI 
ADD BL, AL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -12 # instrumentation
SBB ESI, -17 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RBX] 
ADD ECX, 117 
CBW  
SETO DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DL 
NOT RBX 
ADD DX, -112 
CMOVNBE DI, AX 
SETNS AL 
AND RBX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
