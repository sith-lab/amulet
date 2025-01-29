.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB DL, AL 
ADD CX, BX 
ADD SI, CX 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
MOV CL, 58 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RBX] 
CMOVNB RDX, RCX 
OR CL, 19 
MOV RBX, -2554329909235121838 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
MOV CL, -62 
SETBE DL 
MOVSX EBX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDX] 
XADD ESI, ECX 
CMOVBE DI, DI 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], SI 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR RDI, 104 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RAX] 
AND RBX, -36 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
CBW  
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP AL, 126 
TEST AX, -23607 
ADD AX, 48 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
ADD BL, CL 
AND CL, 27 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], 70 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], -65 
SETP SIL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RDX] 
IMUL ECX, EDI, -60 
AND SIL, -115 
NEG AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RSI] 
AND BL, -36 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
