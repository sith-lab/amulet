.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 2 
IMUL RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RDX 
CMOVL RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RBX] 
STC  
CMOVLE RAX, RBX 
ADC CL, -119 
DEC RAX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ESI 
SBB RAX, -2023977550 
ADD AL, 113 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -31 
DEC CL 
IMUL DL 
CDQ  
INC EBX 
AND RAX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RAX] 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 75 # instrumentation
SBB EAX, 573734705 
ADC DI, -6 
CMOVO ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
MOVSX CX, CL 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 83 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 58 # instrumentation
ADC AL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
