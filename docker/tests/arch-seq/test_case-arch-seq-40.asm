.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG DI 
AND RDI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDI] 
CMP DIL, 95 
CMPXCHG BL, SIL 
ADC EAX, 1925886622 
XOR RAX, -1380555920 
DEC RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDI] 
SAHF  
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RDX] 
CMOVNS DI, AX 
SBB RAX, -1113529524 
IMUL EBX, EDX 
SUB RDX, 59 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], CL 
SETNP BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RAX] 
CMPXCHG DL, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RDI] 
ADD BL, DL 
SUB EBX, EDX 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 9 # instrumentation
CMOVNBE RAX, RSI 
CMOVNP AX, AX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
SETP DL 
LEA EBX, qword ptr [RCX + RBX] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR CL, 113 
CMOVO RAX, RSI 
MOVSX EDI, CL 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDX] 
SBB ECX, 8 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
XOR AL, 96 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDI] 
BSWAP EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
