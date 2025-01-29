.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
IMUL AX, AX 
ADD SIL, -48 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EBX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX RBX, AL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
CMOVS EAX, ECX 
ADC RAX, -1027054288 
ADD CX, -51 
CMOVNP CX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
