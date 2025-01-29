.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 107 # instrumentation
CMOVNS SI, SI 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
CMOVNL AX, AX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 81 # instrumentation
CMOVS RDX, RBX 
IMUL DI, DI, -67 
ADD DIL, -128 # instrumentation
MOVZX RDI, DIL 
CMOVNP SI, AX 
ADC RCX, -98 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -127 # instrumentation
CMOVNP RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -71 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 75 
MOVSX EDX, BL 
XCHG SI, AX 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 15 # instrumentation
CMOVP RDI, RSI 
CMOVBE RCX, RAX 
CMOVB BX, DI 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -34 # instrumentation
MOVZX EDI, BX 
ADC CL, -74 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], 15 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD AX, 16187 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
