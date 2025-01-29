.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RDX 
AND RAX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RAX] 
XADD AL, BL 
CMOVNBE RBX, RDX 
SUB DX, SI 
MUL BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RSI] 
SETNBE BL 
SETLE DL 
IMUL BX, BX 
IMUL RDI, RDI, 1 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
INC RBX 
JMP .bb_main.1 
.bb_main.1:
XADD EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], CL 
CMOVNBE EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], 16 
XOR ECX, 111 
MUL AL 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
OR EAX, 757221464 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
SETL BL 
CMOVNO RAX, RSI 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
DEC EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDX] 
TEST AX, -17866 
CMOVO CX, DI 
MOVSX SI, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DX 
SETNLE CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], CX 
AND RSI, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RSI] 
MUL DL 
SAHF  
AND ECX, -91 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
