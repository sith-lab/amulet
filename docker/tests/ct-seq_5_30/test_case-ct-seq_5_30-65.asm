.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
SBB SIL, -66 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DIL 
JMP .bb_main.1 
.bb_main.1:
CMP DI, 69 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 86 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 69 
CBW  
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 51 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RBX] 
ADC ESI, ESI 
ADD EAX, -684432805 
CMP DL, 94 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 52868847 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -29223 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 14 # instrumentation
INC RAX 
XCHG EDX, EAX 
MOVSX EAX, SIL 
INC SIL 
CMOVLE RAX, RDI 
CMOVBE DI, BX 
INC ECX 
OR AX, 0b1000000000000000 # instrumentation
BSF AX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
