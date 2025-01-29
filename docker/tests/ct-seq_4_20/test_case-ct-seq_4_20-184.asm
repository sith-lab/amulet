.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 73 # instrumentation
CMOVS RBX, RDI 
MOVSX SI, DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], SI 
MOVSX DX, CL 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX] 
ADD DIL, 91 # instrumentation
CMOVNLE DI, SI 
IMUL ECX, ECX, 44 
ADD SIL, -80 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV RSI, -2376482947493311646 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RSI] 
IMUL EBX 
AND RDX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RAX], -21 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -57 
SUB EAX, -189264193 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 21 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -124 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
