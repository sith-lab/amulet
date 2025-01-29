.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -40 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RAX] 
IMUL EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 126 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RSI] 
MOVSX EDI, CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -77 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -84 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
