.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -97 # instrumentation
CMOVNB RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -66 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -48 
AND RAX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -120 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
IMUL RDX, RSI, -110 
AND RDI, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RDI] 
IMUL RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
IMUL CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 85 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDI] 
SBB SIL, 104 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 46 
AND RCX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
