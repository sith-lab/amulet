.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDX] 
INC RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RBX] 
SUB RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], BL 
SBB DIL, 76 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], ESI 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EBX 
MOV RBX, RDI 
JMP .bb_main.2 
.bb_main.2:
CMP RDI, -97 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 84 
XCHG RAX, RSI 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 18 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 101 # instrumentation
LAHF  
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
SUB RAX, -1419751810 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDI] 
CMOVL DX, SI 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
ADC DI, 25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
