.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
CMOVP EAX, EBX 
ADC AX, 15466 
ADC RAX, -45909338 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -48 
JNO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, -42 # instrumentation
CMOVBE DI, CX 
CMP DL, CL 
CMOVNZ EBX, EDI 
XCHG AX, CX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
CMOVLE BX, AX 
ADC SI, BX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
CMOVB RCX, RCX 
IMUL BL 
CMOVNO RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -113 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RAX] 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -27 # instrumentation
CMOVL RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ECX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDX] 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
MUL DI 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ESI 
XCHG EDI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
