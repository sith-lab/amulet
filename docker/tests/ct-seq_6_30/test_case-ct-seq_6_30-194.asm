.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], AX 
CMOVNLE ECX, EDX 
CMOVBE DI, DX 
AND RBX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RAX] 
BSWAP EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ESI 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
SUB RAX, 1052241168 
ADD DIL, 24 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -65 # instrumentation
LEA EBX, qword ptr [RSI + RAX] 
SBB EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDI] 
CMOVP DX, DI 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 15 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -50 # instrumentation
CMOVNS RBX, RCX 
CMOVNB EAX, EBX 
SUB BX, DI 
CMOVNO CX, BX 
ADD RAX, 17679427 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
