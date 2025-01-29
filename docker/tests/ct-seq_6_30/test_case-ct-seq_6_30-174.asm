.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EAX, DL 
SUB RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RBX 
NEG CL 
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD SIL, -119 # instrumentation
ADC ECX, 34 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -89 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -560678220 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -22 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ECX 
INC ECX 
JNL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -58 # instrumentation
CMOVBE BX, DI 
CMOVNB EAX, EAX 
ADD RAX, -620619604 
CMOVNP DX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], AX 
MOVSX RBX, BL 
JBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
STD  
MOV AX, AX 
MOVZX RAX, BL 
IMUL DI, DI, -55 
CMOVNB EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -117 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
SAHF  
CMOVNZ ESI, EDX 
SBB DL, DL 
SBB RBX, 75 
AND RBX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
