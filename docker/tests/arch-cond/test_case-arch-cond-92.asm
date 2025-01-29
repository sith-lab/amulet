.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RCX 
MUL BL 
MUL DX 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
SUB AX, -116 
CMP CL, DL 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -76 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], -93 
CMOVNLE RAX, RCX 
NEG SIL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
MOVZX RDX, DL 
MUL AL 
AND RDX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RDX] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST BX, -6902 
ADD DL, CL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], CL 
MOVSX ECX, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
CWDE  
SETNO AL 
XCHG RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], -19 
AND RAX, -282148559 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
SETZ BL 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
CMOVS ESI, EAX 
MOV DX, CX 
CMOVNS RBX, RDX 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EAX 
ADD BL, 75 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
CLD  
ADC RSI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
