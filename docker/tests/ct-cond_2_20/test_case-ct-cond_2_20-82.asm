.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
XCHG CL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RSI 
CMOVNS EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -105 
AND RSI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 76 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DIL 
CMOVS EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 40 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 106 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RDX] 
CMOVP SI, CX 
SBB EAX, 1099834184 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
