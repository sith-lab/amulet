.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
CMP AL, -64 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
CMOVNLE RDI, RBX 
CMOVZ BX, BX 
AND RCX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 105 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -95 # instrumentation
CMOVNB EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
LEA ESI, qword ptr [RBX] 
JNS .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD DIL, -31 # instrumentation
SBB EBX, -68 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RBX] 
MOVZX DI, AL 
SUB RAX, -390445380 
ADD AL, 89 
ADC DI, 91 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
MOVSX ESI, BL 
SUB DI, DX 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
ADD DX, -93 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDX] 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOV EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
