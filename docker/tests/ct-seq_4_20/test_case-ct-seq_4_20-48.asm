.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 108 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 54 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
SBB EAX, 1925242911 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -87 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RCX 
LOOP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -67 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL BX, DX 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DX 
LEA RCX, qword ptr [RDX + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 61 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDX] 
DEC SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
