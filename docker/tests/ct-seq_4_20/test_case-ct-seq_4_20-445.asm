.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -109 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 16 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDI 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -15 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI], 100 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 59 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RAX] 
ADD SIL, 103 # instrumentation
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -48 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
