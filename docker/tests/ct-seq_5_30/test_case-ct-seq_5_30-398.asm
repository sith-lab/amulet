.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWD  
AND RBX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -39 # instrumentation
CMOVL EAX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDI] 
CMOVL SI, DX 
MUL RCX 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EDX 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -112 # instrumentation
ADC DL, -22 
IMUL RDX, RAX, 17 
CMOVO RSI, RSI 
ADC AX, 8369 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -93 
JMP .bb_main.3 
.bb_main.3:
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RBX 
AND RCX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RCX], 33 
LEA EDX, qword ptr [RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 51 
ADC SIL, 54 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDX] 
CMOVNZ EAX, EBX 
CMP DX, 94 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
SBB RDI, -19 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RBX] 
OR CX, 0b1000000000000000 # instrumentation
BSR DI, CX 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
