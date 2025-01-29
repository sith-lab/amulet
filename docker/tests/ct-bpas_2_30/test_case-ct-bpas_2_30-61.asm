.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDI] 
ADD RAX, RDX 
SUB AX, -24539 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
CLC  
ADD RAX, 54 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -30 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], CX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 33 
SBB BL, DL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP CL, DL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DIL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 93 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
CMOVZ RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
CMP EAX, -381480189 
AND RAX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
CMOVNB RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDI 
ADD SIL, 65 # instrumentation
SBB ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RCX] 
CMOVZ EBX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
