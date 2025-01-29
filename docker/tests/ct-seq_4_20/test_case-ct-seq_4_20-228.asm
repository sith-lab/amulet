.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
CMOVS CX, DX 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RBX] 
ADC EAX, 633269200 
CMOVNL RSI, RAX 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
SUB RAX, -1079352283 
XCHG BL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -121 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RBX] 
CMOVB RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], SI 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -44 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
