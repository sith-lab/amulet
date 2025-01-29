.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 53 # instrumentation
SETO CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 95 
SETS BL 
XADD RBX, RSI 
LEA BX, qword ptr [RCX + RBX] 
SETNL SIL 
ADC BL, 119 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], 74 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RAX] 
SUB AL, 58 
AND AL, CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND ECX, EAX 
MOV EAX, 836881252 
SBB SIL, SIL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 60 # instrumentation
SBB RAX, 1052283881 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
TEST RSI, 1288551721 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
ADD SIL, -95 # instrumentation
CMOVL EDI, EDI 
JP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EBX 
XADD CL, DL 
CMOVNLE AX, SI 
AND RCX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], -7 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -70 # instrumentation
CMOVS RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RCX] 
LEA RAX, qword ptr [RAX] 
JMP .bb_main.5 
.bb_main.5:
CLD  # instrumentation
IMUL DX, AX, -80 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
CMP RAX, -1651781769 
CMOVNBE EBX, ECX 
SETB AL 
SETP BL 
NOP  
XADD ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 124 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
