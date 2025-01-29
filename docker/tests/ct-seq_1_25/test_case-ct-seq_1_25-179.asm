.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -52 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RSI 
ADD DIL, -46 # instrumentation
CMOVB EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
ADD SIL, -51 # instrumentation
CMOVNBE DX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
MOVZX ECX, SI 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 63 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], AL 
CMOVNP DI, DX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RDI] 
IMUL CL 
IMUL CX, DI, -68 
MOVZX ESI, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 127 
OR AX, 0b1000000000000000 # instrumentation
BSF CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
