.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], -23 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RBX] 
CMOVLE RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -55 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 19 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EDX 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
CMOVNO SI, AX 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
NEG CL 
MUL SI 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 112 # instrumentation
ADC AL, -103 
MOVZX AX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
