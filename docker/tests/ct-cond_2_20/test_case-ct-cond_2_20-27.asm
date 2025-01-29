.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLC  
IMUL AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 57 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], SI 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
CLC  
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], AX 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -5 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
