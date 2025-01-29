.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDI] 
SBB AL, -74 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -19 
AND RAX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 1 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EDX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], BX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -32476440 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
