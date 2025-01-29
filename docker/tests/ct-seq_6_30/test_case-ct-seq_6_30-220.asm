.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 10 # instrumentation
LAHF  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -101 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 20 
CMOVNS RDI, RSI 
CMOVNS EBX, EDX 
XCHG SI, AX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RSI] 
ADD DIL, -72 # instrumentation
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
SBB EAX, -1437062053 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
CMOVP AX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
CWD  
ADD RAX, -1207927025 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], SIL 
LOOPNE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DI 
MOV RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDI] 
JP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RAX] 
INC RSI 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
JMP .bb_main.5 
.bb_main.5:
IMUL DI, AX, -96 
ADD SIL, 69 # instrumentation
CMOVNZ ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
