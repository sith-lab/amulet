.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP DIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 52 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -6 # instrumentation
MOVSX DI, DL 
MOVZX EDX, SIL 
CMOVNL RAX, RSI 
ADD AX, -52 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
SUB BX, BX 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
MUL AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RCX] 
IMUL RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RCX] 
DEC BL 
XCHG CL, DL 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, 65 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
CMP DX, DX 
CMP RAX, 927652973 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -124 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RSI] 
CMOVL AX, SI 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 112 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
CMOVNBE RDI, RDX 
MOV DX, -22524 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
ADD SIL, 56 # instrumentation
SBB DL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
