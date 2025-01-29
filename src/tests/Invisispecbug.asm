.intel_syntax noprefix
LEA R14, [R14 + 60] # instrumentation
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], CL 
AND RBX, 0b111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], 86 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], AX 
AND RBX, 0b111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RBX] 
AND RDX, 0b111111111111 # instrumentation
OR byte ptr [R14 + RDX], -60 
AND RSI, 0b111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RSI] 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EDI 
AND RDI, 0b111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], RSI 
AND RBX, 0b111111111111 # instrumentation
OR RSI, qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND DL, -74 # instrumentation
AND RAX, 0b111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
AND RDI, 0b111111111111 # instrumentation
OR qword ptr [R14 + RDI], 88 
AND RDI, 0b111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RDI] 
AND RSI, 0b111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], DIL 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], RBX 
AND RAX, 0b111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RAX] 
AND RDX, 0b111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
LEA R14, [R14 - 60] # instrumentation
