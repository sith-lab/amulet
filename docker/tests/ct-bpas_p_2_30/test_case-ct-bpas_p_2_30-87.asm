.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
CMOVNS RSI, RBX 
CMOVO CX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDI] 
CMOVS CX, BX 
CMOVP ECX, EBX 
SBB RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
ADD RDX, RAX 
IMUL EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RAX] 
SUB AL, -128 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RAX, RCX 
IMUL RBX, RSI 
IMUL CX, DI, -107 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], CX 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDI 
CMOVP EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 14 
CMOVNB RDI, RBX 
ADD AL, AL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
