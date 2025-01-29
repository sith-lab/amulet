.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
MOVZX DI, DIL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -77 # instrumentation
CMC  
CMOVS RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 103 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
CMOVNP DI, CX 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 123 
AND RDI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -26 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
