.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 111 
CMOVL EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDX] 
INC SI 
DEC EDI 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
CMOVBE EAX, ECX 
CMOVLE SI, DI 
MOV SI, -25992 
MOVSX AX, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], SIL 
MOVZX DX, AL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 107 # instrumentation
CMOVLE ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
CMOVL EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], -64 
ADD AL, 78 
ADD DL, BL 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 116 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
ADD SIL, -54 # instrumentation
CMOVS RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], CL 
BSWAP RSI 
SAHF  
CMP SIL, DL 
MUL ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
