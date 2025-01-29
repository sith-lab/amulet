.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX DI, BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 73 
ADD BL, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 120 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
MUL DL 
SUB RCX, -26 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
CMP AL, -71 
AND RCX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RCX] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -35 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 278231021 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
