.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RBX] 
INC DL 
AND RAX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RDX] 
ADC RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RDI] 
SUB AL, -51 
INC CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
IMUL RAX, RCX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RDI 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB DI, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -3 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
CMOVS EDI, EAX 
CMOVNB RDX, RDI 
MOV SIL, 115 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 1131085552 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
CMOVNP AX, CX 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 85 
CMOVNL EAX, EDI 
SBB AL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RBX] 
CMOVNBE RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
