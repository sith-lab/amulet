.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -10 # instrumentation
CMOVLE RSI, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EDX 
AND RDX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -26 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], -61 
AND RBX, 0b1111111111111 # instrumentation
ADD SIL, 53 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], 24 
SBB ECX, ECX 
IMUL RSI, RAX, 101 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDI 
SBB DL, CL 
ADC EAX, -1054046143 
XCHG RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -24 
ADD EAX, -138156489 
XCHG EBX, EAX 
CMOVS ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
CMOVNB RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 2 
INC RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RBX] 
IMUL BX 
ADD SIL, 121 # instrumentation
CMOVNLE RCX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
