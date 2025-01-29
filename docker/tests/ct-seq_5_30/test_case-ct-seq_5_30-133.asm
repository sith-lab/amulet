.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -128 # instrumentation
MOVSX EDX, DIL 
CMOVNP CX, SI 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RSI 
CMOVO EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], AX 
JMP .bb_main.1 
.bb_main.1:
XCHG RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -79 
XCHG ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RBX] 
ADD BL, CL 
SBB EAX, -913306020 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EAX 
XCHG AX, AX 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RBX] 
CMOVNZ EDX, EDI 
ADD RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
CMP EDI, -120 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
NEG EDI 
MOVZX DX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
