.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
ADD DIL, 118 # instrumentation
SBB EDX, -34 
IMUL DL 
CMP SIL, 33 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 42 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 102 
SUB BX, CX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 41 
CMOVNZ RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -118 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -110 # instrumentation
CMOVZ EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], BX 
INC CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -57 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RAX 
SUB EAX, 761411975 
CMOVNBE RDI, RDX 
CMOVZ EAX, EBX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RCX] 
ADD DIL, -79 # instrumentation
ADC AL, BL 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
ADC RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -36 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 38 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -74 # instrumentation
SBB RDI, RDX 
CMOVBE RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
