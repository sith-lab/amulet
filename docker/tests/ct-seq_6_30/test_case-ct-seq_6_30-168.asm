.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
MOVSX RDX, CL 
CMC  
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -102 
CMOVNZ ESI, EAX 
JMP .bb_main.1 
.bb_main.1:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDI 
ADD SIL, 34 # instrumentation
CWDE  
SBB DIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], SIL 
ADC EAX, -1425302237 
CDQ  
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EDI 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 85 # instrumentation
CMOVNZ CX, DI 
CMOVNB EDI, EAX 
DEC CL 
CWD  
ADD EDX, EDI 
MOV CL, 102 
LEA SI, qword ptr [RDX + RSI + 16347] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDI] 
MOV DI, 27573 
DEC CX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -3 # instrumentation
CMOVNO BX, CX 
IMUL DL 
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -105 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
