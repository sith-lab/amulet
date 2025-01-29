.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RAX] 
INC DL 
LAHF  
CMOVO DX, CX 
IMUL DI, SI, 59 
ADD SIL, -61 # instrumentation
CMOVL DX, SI 
AND RBX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RBX] 
CMOVS DI, DX 
CMP RDX, -93 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
ADD DIL, AL 
INC ESI 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
ADC EAX, EBX 
MOVZX EDI, AL 
MOVSX DI, DL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDX] 
XCHG BL, CL 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
DEC EDX 
CMOVL CX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RSI] 
CMOVZ DI, SI 
IMUL ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -100 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
