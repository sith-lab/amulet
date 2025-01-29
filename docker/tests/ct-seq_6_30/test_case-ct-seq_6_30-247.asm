.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
CMOVP SI, CX 
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -120 # instrumentation
CMOVNL AX, DX 
IMUL ECX, EDI 
ADD SIL, -82 # instrumentation
CMOVNP EDI, EBX 
MOVZX CX, DL 
MUL CL 
CMP ESI, ECX 
CMOVL EDX, EDI 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
LOOPE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
SAHF  
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
MOVZX EDI, BL 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], AX 
SUB RBX, RAX 
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 117 
AND RDX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDX] 
XCHG ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
