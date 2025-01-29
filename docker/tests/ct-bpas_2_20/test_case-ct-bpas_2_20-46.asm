.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], DX 
CMOVLE SI, AX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD DIL, -37 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -72 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDX] 
CMP AX, 29509 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 67 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DIL 
AND RBX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RAX], 4 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -74 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], BX 
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX], -76 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
