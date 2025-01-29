.intel_syntax noprefix
LEA R14, [R14 + 0] # instrumentation
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], -45 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], SI 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], BL 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND CL, -91 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND BL, 60 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDX] 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], -1864765860 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], RDI 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RSI 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], 82 
AND RCX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
LEA R14, [R14 - 0] # instrumentation
