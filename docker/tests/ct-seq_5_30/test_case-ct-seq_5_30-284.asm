.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV AL, 63 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDI] 
XCHG DL, BL 
MOV RDI, 288383904043597912 
SAHF  
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
CMP AX, 15502 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 33 # instrumentation
ADC SIL, 24 
MOVZX EDI, CL 
CMOVO EDI, ESI 
SBB EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
OR DL, 1 # instrumentation
INC EAX 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 318414784 
XCHG BX, DI 
CMP RAX, 1720535173 
SUB ECX, EDX 
CMOVNS SI, DX 
MOVZX SI, CL 
AND RCX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -111 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RSI 
CMOVNL RAX, RBX 
CMOVNL RDI, RBX 
CMOVL RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
