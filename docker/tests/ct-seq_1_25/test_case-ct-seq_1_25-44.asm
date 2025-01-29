.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
MOVSX AX, DL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -47 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDI] 
IMUL RDX, RDI 
SUB CL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DI 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RSI] 
MOVSX EDI, SIL 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EAX 
CWDE  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
