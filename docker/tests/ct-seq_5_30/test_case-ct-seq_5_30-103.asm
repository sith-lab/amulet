.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RCX] 
MOV DL, -126 
IMUL RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EAX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
MOVZX ESI, SIL 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
CMP RAX, -110 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], DI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RSI 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], BX 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
SBB AL, -89 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
CLD  
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RAX] 
SUB CL, -88 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DL 
CMOVO DI, CX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -98 # instrumentation
CMOVB CX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], SI 
ADD SI, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
