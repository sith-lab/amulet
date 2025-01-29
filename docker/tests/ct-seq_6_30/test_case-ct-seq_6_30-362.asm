.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -37 
MOVSX ECX, DL 
AND RDX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RDX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RSI 
NEG RDI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 1 # instrumentation
CMOVZ DI, CX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
MOV RDX, RSI 
CMOVNZ ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
CMOVNP CX, AX 
CMOVB EBX, EBX 
JBE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RDI 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
JMP .bb_main.3 
.bb_main.3:
ADD BX, DI 
ADC DI, DI 
IMUL CL 
MOV CL, 32 
ADC AL, -67 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -108 # instrumentation
SBB DX, SI 
CMOVNS BX, SI 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 57 
SUB SIL, BL 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EDX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
