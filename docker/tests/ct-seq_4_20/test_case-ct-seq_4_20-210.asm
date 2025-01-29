.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
SUB AL, 126 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
ADC CL, CL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], BL 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
MUL AL 
IMUL ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], BL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
