.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 2 # instrumentation
ADC ESI, ESI 
CMOVZ RBX, RSI 
ADC DX, DX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RSI] 
SBB EAX, -978694499 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -122 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 21 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDI] 
CMP ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RBX] 
CMP RAX, -160346760 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 78 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RAX] 
IMUL EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
