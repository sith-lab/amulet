.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 116 
AND RBX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], ESI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RCX] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 119 # instrumentation
ADC DL, CL 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
SBB AL, 112 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], 30 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 619390735 
ADD EBX, 32 
CMP CX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 44 
ADC RAX, -782923854 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
