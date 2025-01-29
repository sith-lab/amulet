.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], BX 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RSI] 
ADD AL, BL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ECX 
ADD BL, SIL 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
ADD AX, 4894 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], 42 
CMOVNB DI, BX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RAX] 
ADD DIL, -49 # instrumentation
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], BL 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
