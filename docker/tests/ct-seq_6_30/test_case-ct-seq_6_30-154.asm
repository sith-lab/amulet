.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -49 # instrumentation
ADC BL, -79 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -87 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 38 # instrumentation
ADC EAX, -1251694542 
CMOVP EAX, EDI 
CMOVNBE EBX, EBX 
CMOVO EAX, EDX 
JMP .bb_main.2 
.bb_main.2:
LEA RAX, qword ptr [RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RBX] 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -30 # instrumentation
ADC AL, AL 
IMUL BL 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDX] 
ADC EDX, 115 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RAX] 
SBB EBX, 45 
NEG BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -93 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
SUB EAX, 151782428 
CMOVNL RSI, RBX 
CMOVNBE DI, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDX], 11 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
CMOVNL EDX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
