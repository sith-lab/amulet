.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -36 
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
SBB EDX, -41 
CMOVNS EBX, EDI 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EBX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RCX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
SUB AL, 114 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 19 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
