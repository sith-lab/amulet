.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RSI 
IMUL CL 
SUB BL, DL 
ADC SIL, 110 
NOT SI 
CMOVNS BX, BX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RSI], 20 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
CMOVL RAX, RBX 
ADC AX, -20417 
SETNL CL 
IMUL ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RBX] 
SBB RBX, RDI 
SETO AL 
CMOVNLE DI, DI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -111 # instrumentation
MOVZX ESI, DX 
SBB AL, 98 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RBX] 
SUB SIL, SIL 
ADD RBX, -34 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], AL 
SETNS DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RAX 
AND RBX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RSI 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 24 
ADD AX, -24482 
CMOVP BX, CX 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RAX] 
ADD EBX, EDI 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
