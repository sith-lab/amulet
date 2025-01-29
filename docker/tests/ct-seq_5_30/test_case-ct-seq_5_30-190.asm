.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -127 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], SI 
CMP RSI, RDX 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 2920 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -31 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOV AX, -5466 
NEG EDI 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -30 # instrumentation
CLC  
CMOVNS RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDI] 
MOV DI, 17481 
MUL DL 
ADD SIL, 63 # instrumentation
CMOVNP CX, CX 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
NEG AL 
JMP .bb_main.3 
.bb_main.3:
INC DIL 
AND RCX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 3 
CMOVL EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MUL AL 
ADD RAX, 1924356215 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 66 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
