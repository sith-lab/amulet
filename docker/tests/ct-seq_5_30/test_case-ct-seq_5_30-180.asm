.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -100 # instrumentation
CMOVZ EBX, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RAX] 
SBB RAX, 2144135346 
CMP AL, -36 
MOVSX RCX, CX 
JMP .bb_main.1 
.bb_main.1:
XCHG EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], CX 
MUL AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 89 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CMP RAX, -58 
CMP ESI, -70 
ADD SIL, 37 
SUB RAX, -99424370 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], DX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -111 
CWDE  
SUB DI, 79 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ECX 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
NEG RDI 
AND RAX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -68 
SUB SI, AX 
STD  
NEG BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
MOVSX DX, DIL 
ADD CX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], DI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RSI] 
IMUL RDI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
