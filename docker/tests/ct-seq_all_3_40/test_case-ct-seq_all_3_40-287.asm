.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDI] 
NEG CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND DL, AL 
ADC AL, -97 
OR DX, 1 # instrumentation
CMOVLE ESI, EAX 
SETLE AL 
SETNO DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], -46 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], AL 
CMOVNB AX, CX 
CMP ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 122 
AND RAX, 1447734885 
CMOVNZ ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDI] 
ADC DX, AX 
XCHG CX, AX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
CMPXCHG DX, DI 
DEC BL 
CMOVB RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDX] 
MOV CL, -115 
CMP EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -97 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RDI] 
CMP CL, 77 
CMOVBE SI, AX 
NOT BL 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RCX 
ADD AL, CL 
AND RCX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RBX] 
SETL BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
