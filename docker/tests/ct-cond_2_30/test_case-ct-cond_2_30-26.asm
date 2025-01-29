.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RBX] 
IMUL EAX, EBX, -107 
ADD RAX, 2076422282 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -81 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX] 
CMOVNO DX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RAX] 
CMOVNZ EBX, EAX 
ADD DL, DIL 
ADC DL, AL 
MOVZX ECX, AX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
DEC AL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 73 
MUL SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RSI] 
CMOVNZ ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
MOV EAX, -29493909 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], 100 
CMP RAX, -1358204606 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -2 
CMOVP EAX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RAX] 
SUB EAX, -1077168791 
SUB AL, 73 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 39 
SUB CL, DL 
XCHG EDI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
