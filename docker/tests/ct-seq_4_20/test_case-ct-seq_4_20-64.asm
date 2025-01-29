.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EDX 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ECX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RAX 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RAX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EBX 
AND RCX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RSI], -110 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
CMP RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RCX] 
LEA EAX, qword ptr [RSI + RDI + 55788] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], BX 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -5 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
LEA EDX, qword ptr [RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
