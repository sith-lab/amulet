.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 103 # instrumentation
ADC AX, 118 
INC EDX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DIL 
MOVSX RCX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RSI] 
CMP RAX, 1174114003 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -10 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
NEG EBX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 36 # instrumentation
SBB RDX, RAX 
ADC DL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DI 
MOV CL, -102 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
SUB AL, -115 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], BL 
CMP AX, -10849 
AND RBX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RBX] 
CMP AX, -9625 
CMOVNZ RDI, RDI 
SBB EAX, -1380441402 
IMUL DL 
IMUL RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
