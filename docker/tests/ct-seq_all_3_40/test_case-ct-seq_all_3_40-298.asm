.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RSI] 
XOR RCX, -63 
ADD DL, -18 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RAX] 
MOV DL, -95 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], CX 
OR CX, 27 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], EAX 
AND RBX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RCX], SI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP AL, 108 
CMP CX, 23 
AND RAX, -786975951 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], BX 
NEG AX 
CMP AL, 63 
SETNB DL 
CMOVBE SI, AX 
MOVSX EDX, AX 
AND EAX, 18 
MOVZX EAX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RBX 
CMP AX, -16326 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RDI 
XOR RDI, RSI 
AND BL, 34 
STD  
AND RAX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RAX] 
NEG EDX 
JMP .bb_main.2 
.bb_main.2:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
XOR AL, 48 
XOR RAX, -151548639 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -52 
SUB AL, 55 
NEG EAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -32116 
LEA RBX, qword ptr [RCX + RDI + 31547] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
