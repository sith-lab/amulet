.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RBX] 
CMOVNL RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 109 
AND RBX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RBX] 
ADD ECX, 110 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RBX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
IMUL CL 
MOV BL, 20 
CMP ESI, 12 
MUL DI 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL RDX 
CMP RCX, -19 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDI] 
MOV DI, AX 
CMOVNP ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 24 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
CWD  
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EAX 
CMP AX, -19550 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -52 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
