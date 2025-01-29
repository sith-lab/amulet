.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RCX, RBX 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RAX 
SUB CL, 65 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDI], DI 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], EBX 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
CMP RDX, RCX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
ADC EAX, -720701065 
SBB AX, -29688 
NOT BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], DX 
AND DL, DL 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], -2054651065 
SETZ DL 
ADC CL, SIL 
CDQ  
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -77 # instrumentation
CMOVNS RAX, RCX 
CMP DL, CL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], EAX 
CMOVBE RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], AL 
SETNL DIL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDX] 
CMOVNO EDX, EDI 
MOV BX, -131 
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
TEST CX, AX 
SUB CL, 84 
IMUL AL 
ADD EDX, ESI 
AND RAX, 1582221334 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
