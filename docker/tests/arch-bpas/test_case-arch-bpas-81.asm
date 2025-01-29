.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -120 # instrumentation
SETNZ AL 
OR AL, 88 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DX 
JNL .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RDX] 
ADD SIL, 46 # instrumentation
CMOVL CX, DI 
SUB SIL, DIL 
XADD AX, CX 
AND RAX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RAX], -10 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], -1550017931 
XCHG RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RSI] 
OR EAX, EDX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -91 # instrumentation
SETNL CL 
AND RSI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RBX] 
XADD EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RSI] 
JS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, -62 # instrumentation
SETNL CL 
NEG DL 
XOR AX, SI 
OR SI, -77 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -56 
XCHG EAX, ESI 
NEG RSI 
JMP .bb_main.4 
.bb_main.4:
AND RAX, -1828013570 
SUB DX, -6 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
CLC  
ADD ECX, EDX 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RDI] 
ADD CX, 105 
TEST ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RBX] 
XOR SIL, -98 
TEST SI, 20496 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
SBB RDX, RDX 
OR CX, -23 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
