.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 112 # instrumentation
ADC AX, 17853 
SUB RBX, RDI 
CMOVNL RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RSI] 
CMOVO DI, CX 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CLD  # instrumentation
ADD SIL, 103 # instrumentation
SETL BL 
SUB DIL, 59 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
ADD SIL, -58 # instrumentation
SETNL BL 
IMUL EDI, EDI, -22 
CMOVNO RAX, RCX 
MOVSX RBX, SI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
ADD RCX, 19 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDX] 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG RCX, RAX 
ADC RBX, 120 
XOR RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RSI] 
SUB CL, BL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], BX 
CMOVNB ECX, EDI 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND BL, -55 
AND RSI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RSI] 
MUL DI 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], CL 
SETNZ BL 
JMP .bb_main.4 
.bb_main.4:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RBX] 
ADD SIL, -98 # instrumentation
SBB RBX, -111 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
XOR RAX, 2119148584 
AND RBX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RBX] 
NEG SI 
MOV DL, CL 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
CMOVNL EBX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
