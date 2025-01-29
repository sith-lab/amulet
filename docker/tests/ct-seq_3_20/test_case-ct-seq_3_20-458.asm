.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -92 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -31 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 13 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EBX 
CMP EAX, 888638240 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RCX] 
CMOVL RDI, RDX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
MOV EDX, ESI 
ADC SIL, DIL 
ADC BL, 77 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
