.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL EBX, ESI, -114 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 28 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 64 
CMOVL DX, DX 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RCX] 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RDX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RCX] 
MOV ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 31 
CMOVNS RDI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
