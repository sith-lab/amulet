.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -95 # instrumentation
MOVSX BX, DIL 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
CMOVNZ DI, CX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -109 
CMOVO AX, AX 
IMUL DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
CMOVNZ SI, BX 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP DL, CL 
DEC DIL 
ADD RAX, -1503216875 
MOVSX RBX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 58 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDI 
JRCXZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
MOV SIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDI 
SBB BL, 98 
SBB RCX, -26 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
XCHG ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDX 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], DX 
CMOVS BX, AX 
JMP .bb_main.5 
.bb_main.5:
NEG DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -86 
AND RSI, 0b1111111111111 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
