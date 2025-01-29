.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -122 # instrumentation
MOVSX EBX, DIL 
CMOVNP RCX, RBX 
CWD  
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 31 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], SIL 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -98 
SBB DI, -74 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 66 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
ADC EAX, 2129846908 
CMOVS RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
ADD RAX, -822672630 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
ADD DIL, 58 # instrumentation
SBB RCX, 2 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -38 
CMOVS DX, SI 
ADD EBX, 103 
ADC ESI, -66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
