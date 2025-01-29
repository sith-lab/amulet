.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -57 # instrumentation
CMOVNZ RSI, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -124 
SBB ESI, ECX 
MOV AL, AL 
SUB DL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], AX 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 98 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX], -2 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], ESI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RBX] 
CMOVBE RCX, RDI 
CMOVNBE BX, DI 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1675646791 
AND RDX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
MOVSX RDX, SIL 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -37 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], CX 
ADD DIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 93 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -121 # instrumentation
SBB RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DI 
CLD  
JMP .bb_main.5 
.bb_main.5:
MOV CL, CL 
IMUL AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
