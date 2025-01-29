.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 106 # instrumentation
ADC EAX, -1670009851 
XCHG RDX, RAX 
CMP DI, -31 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -13387 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB EAX, -1410043668 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RCX] 
CMP DX, -58 
CMOVNB BX, CX 
MUL EDX 
ADC CL, CL 
AND RAX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], AX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], CX 
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -97 
MOV EDI, -784587378 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 38 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -55 # instrumentation
SBB RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ESI 
CMOVB DI, DI 
CMOVNS RDX, RAX 
JMP .bb_main.4 
.bb_main.4:
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
