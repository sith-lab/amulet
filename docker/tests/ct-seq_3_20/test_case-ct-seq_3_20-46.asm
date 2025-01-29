.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -67 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 102 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RSI] 
MOVSX EDI, DX 
CMOVNLE BX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -89 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ECX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
MOVZX DX, SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 94 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
