.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AL, 93 
MOVSX ESI, BL 
IMUL ECX, EAX, -104 
SUB AX, 23648 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -8 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], DIL 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], EDI 
MOV ECX, -1203574920 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], ECX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], DL 
DEC RSI 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
ADD SIL, 47 # instrumentation
SETNS AL 
INC DL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RSI] 
SETB CL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RSI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -46 # instrumentation
MOVSX AX, DL 
ADC RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -40 
CMP ESI, 32 
SETNS DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], -110 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
CMOVNLE EBX, ESI 
MOV EDI, EDI 
INC DI 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDI 
SETNO AL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RDI] 
MOV AX, 18772 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
