.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, 139 
MOVZX RAX, BL 
XOR DIL, -71 
CMOVNO RAX, RSI 
ADC ESI, -15 
DEC DX 
AND CL, DIL 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], 11 
AND RAX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RAX] 
SUB DX, AX 
CMOVNLE AX, BX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 49 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], AX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], BX 
SBB RBX, -117 
OR SIL, 67 
XOR DL, 34 
OR CX, 0b1000000000000000 # instrumentation
BSR DI, CX 
XCHG RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
SBB EAX, -113603138 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], DIL 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NEG AL 
CMOVNLE EDX, EBX 
LEA CX, qword ptr [RAX + RSI] 
ADC DL, BL 
TEST AL, -69 
CMOVZ SI, DX 
CMP RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], AX 
SBB SI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
