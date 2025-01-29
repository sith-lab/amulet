.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DX 
ADC SIL, -82 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX], -88 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
ADD CL, -1 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
SBB AL, 92 
CMP EDX, EAX 
MOV RDX, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RSI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 59 # instrumentation
ADC AL, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DI 
CLC  
MOV RSI, -1017310725703566464 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
SUB DI, SI 
CMOVNZ BX, DI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -4371 
AND RAX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
SUB ESI, ESI 
MOVZX SI, BL 
SBB AX, 15 
DEC RAX 
CMOVNO AX, AX 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
MUL RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
