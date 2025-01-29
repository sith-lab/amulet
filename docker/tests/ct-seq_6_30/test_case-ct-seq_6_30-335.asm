.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EBX 
CMOVS RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RCX] 
ADD AL, 110 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RAX 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -98 # instrumentation
CMOVB ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -101 
ADD AL, -97 
AND RAX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RAX] 
MOV RBX, RCX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RSI 
LOOPE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DL, BL 
CMP AL, 113 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
XCHG DL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDI] 
JNL .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -124 
AND RSI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RAX] 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -60 # instrumentation
CMOVL RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], AL 
SUB RAX, 982395841 
MOVSX DI, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
