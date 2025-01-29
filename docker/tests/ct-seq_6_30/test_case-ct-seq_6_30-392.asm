.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP CL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
BSWAP RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -48 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RAX] 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -99 
ADD SI, DX 
SUB RSI, -63 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -121 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
ADC AX, -5174 
SUB EDI, 72 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RDX 
ADD SI, -110 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 73 # instrumentation
CMOVO EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 4 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -74 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -25 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
ADD RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -6 # instrumentation
CMOVZ RSI, RBX 
BSWAP RSI 
MOV AL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
