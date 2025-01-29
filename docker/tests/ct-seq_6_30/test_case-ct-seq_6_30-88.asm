.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 117 # instrumentation
CMOVP RDX, RDX 
CMOVNL EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 110 
AND RBX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RCX] 
MOVSX EAX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDI] 
CMP RAX, 1642687656 
MOVSX DI, AL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 5363 
LOOPNE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOV CL, 19 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DIL 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RBX] 
CWDE  
JNZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
DEC CL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
SUB RAX, 854071048 
CMOVS DX, DI 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RBX] 
SBB AX, -13733 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RAX 
CMOVNO DX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDI] 
CMOVL RSI, RSI 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RSI] 
CMOVP RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
