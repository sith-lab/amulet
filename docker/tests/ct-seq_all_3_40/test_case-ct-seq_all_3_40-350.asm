.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL EAX 
TEST EDX, EDI 
CBW  
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], 97 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], DL 
ADC AL, -57 
STD  
AND RAX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RCX] 
TEST RDI, 1436099307 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
ADC SI, CX 
MOVSX EDX, CX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], AL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
XOR RAX, 69683620 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 19 
CMOVP BX, CX 
XOR AL, 18 
SBB RBX, -116 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RCX] 
CMP BL, CL 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -91 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR AX, 13108 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
MOVSX ESI, CL 
SUB DL, -39 
CMOVL RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
XADD EDX, ESI 
CMOVNZ CX, SI 
AND RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], SI 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
SETNS SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
