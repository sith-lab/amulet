.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], 13768 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], EDI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RBX 
AND AL, -74 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
IMUL EAX, EDX 
XOR EBX, -107 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 89 # instrumentation
CMOVP EDI, ECX 
CMOVNP SI, SI 
ADC SIL, -33 
STD  
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ESI 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
XOR RDX, RDI 
TEST EAX, -1491164718 
CMOVNLE AX, DX 
AND RAX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RAX] 
LAHF  
DEC BL 
CMOVNLE BX, DX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 24 # instrumentation
CMOVBE EDX, EDX 
ADC AL, 126 
IMUL EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RBX] 
CMOVNZ RAX, RAX 
TEST RAX, 1212030508 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDX] 
CMP RAX, RDX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
TEST CL, BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RDI] 
SETNO CL 
OR DIL, SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 68 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
MOV RSI, 2201862610273008423 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -99 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
