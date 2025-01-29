.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL SIL 
ADD SIL, 11 # instrumentation
CMOVL EDI, EDI 
LAHF  
TEST EAX, 528483145 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDX 
XADD RDI, RSI 
JNB .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD SIL, 43 # instrumentation
SBB SI, 0 
AND RSI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RSI] 
CMOVNB BX, BX 
SETLE BL 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
TEST AX, -26735 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RSI] 
ADD SIL, SIL 
JMP .bb_main.2 
.bb_main.2:
OR AX, 22567 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 104 
IMUL DL 
CBW  
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RAX] 
CMOVNZ RSI, RSI 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], -100 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], -101 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], AX 
CMOVNP ESI, ESI 
OR EAX, 1059894610 
SETLE DL 
SBB EDI, EDI 
XOR RAX, -21 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EDX 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR CL, SIL 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
XOR AL, -116 
SETS BL 
AND RDX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], 84 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DIL 
CBW  
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], DL 
CMOVNB EAX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
