.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], BL 
MOVZX CX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDI] 
OR DX, 0b1000000000000000 # instrumentation
BSR DI, DX 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RDX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -37 # instrumentation
CMOVNL CX, CX 
IMUL RDX, RDX, -13 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
XCHG AX, CX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
CMOVNBE ESI, EDX 
MOV CX, -29506 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 84 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EDX 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
SUB BL, DL 
CWD  
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RAX] 
CDQ  
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 73 # instrumentation
SBB DL, CL 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
