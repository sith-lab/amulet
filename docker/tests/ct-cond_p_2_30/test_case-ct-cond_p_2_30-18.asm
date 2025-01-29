.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
CMOVNBE ECX, ESI 
XCHG BX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ECX 
MOV CL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -120 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -22 
AND RCX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -34 
ADC AL, -123 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ECX 
AND RSI, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RSI] 
IMUL EBX 
CLD  
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -23 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CWD  
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -109908247 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
SUB EDX, 12 
SBB ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
IMUL BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RAX] 
ADC SIL, 28 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
