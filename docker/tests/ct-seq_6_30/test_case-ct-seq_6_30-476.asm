.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], BX 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
ADC AL, -45 
CMOVLE AX, AX 
JMP .bb_main.1 
.bb_main.1:
IMUL ECX, ECX, -29 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ECX 
AND RDI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RDI] 
CMOVNZ ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], ESI 
CMOVNP EDX, EDI 
MOVSX RSI, AX 
SBB AL, 88 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 52 # instrumentation
LAHF  
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 14 
SBB AX, -52 
SBB CL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
ADC BL, DL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RAX] 
MUL EDX 
ADD SIL, -114 # instrumentation
JL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
CMOVNP RCX, RSI 
MUL RBX 
IMUL CX, AX, 113 
AND RCX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
