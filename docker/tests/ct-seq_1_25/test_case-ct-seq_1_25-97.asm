.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 66 # instrumentation
CDQ  
CMOVB EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -85 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RAX] 
CMOVNS CX, CX 
MOVZX BX, AL 
CMP SIL, 120 
CMOVL RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -66 
AND RDX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RAX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RSI] 
INC DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RSI] 
MOV CX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -62 
AND RBX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RBX] 
CMOVBE EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
