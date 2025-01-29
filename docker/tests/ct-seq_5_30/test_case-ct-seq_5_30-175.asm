.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, 1207387191 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -6 
ADD SIL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
LEA DX, qword ptr [RDI + RDX + 11966] 
MOV EDX, -2143849854 
CMOVZ EDI, EDI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -2 # instrumentation
CMOVNLE EDI, ECX 
ADD ESI, 19 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
NEG RCX 
SUB ESI, EAX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RBX] 
ADC CL, AL 
JMP .bb_main.3 
.bb_main.3:
SAHF  
ADD RAX, 76649055 
AND RDI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDI] 
IMUL RCX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDI 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
SUB RSI, -10 
CMOVS BX, BX 
CMP DX, DI 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], -53 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
