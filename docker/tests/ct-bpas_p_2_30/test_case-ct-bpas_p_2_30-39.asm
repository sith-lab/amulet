.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -19 # instrumentation
CMOVP DX, SI 
XCHG RBX, RAX 
CMOVLE RCX, RCX 
ADD SI, 75 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RSI 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD SIL, 16 # instrumentation
CMOVBE RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
CMP DL, 35 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 57 # instrumentation
ADC CL, SIL 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 121 
AND RCX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, -78 # instrumentation
CMOVB RAX, qword ptr [R14 + RBX] 
CMOVS DI, AX 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
SBB DX, BX 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
OR CX, 0b1000000000000000 # instrumentation
BSR CX, CX 
CMP AX, -4 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -2 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
ADD SIL, -59 # instrumentation
MOVSX RAX, BL 
CMOVP BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
