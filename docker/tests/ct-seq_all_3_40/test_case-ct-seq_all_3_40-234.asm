.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, 863457531 
SETNBE AL 
MOVZX EAX, DL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDI] 
SUB CL, 79 
ADC EAX, -735857841 
ADD AX, -2859 
OR AX, -23725 
SBB AL, 29 
SETZ AL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -46 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RBX 
SETS AL 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
OR RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], 2774 
CMOVNS SI, SI 
ADD BX, AX 
IMUL DL 
SUB CL, -106 
ADC EAX, 2081957028 
AND RDI, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RDI] 
CMOVZ RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], SIL 
IMUL CL 
ADD DIL, 76 # instrumentation
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], -121 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
SETNO SIL 
XCHG DL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], SIL 
AND RDX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDX], 61 
MUL AL 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
ADD SIL, -17 # instrumentation
SETS BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EAX 
BSWAP ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
