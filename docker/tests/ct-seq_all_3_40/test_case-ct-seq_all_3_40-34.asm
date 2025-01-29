.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -55 # instrumentation
CMOVNLE CX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], -40 
IMUL EAX, ECX, 73 
XCHG RAX, RBX 
SBB BX, DI 
CWD  
MUL CL 
ADD SIL, 71 # instrumentation
CMOVLE RBX, RSI 
ADD ECX, ESI 
CMOVNBE EDX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], AL 
JZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVZX ECX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
ADC AX, -10833 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
INC AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EDI 
SUB DL, 14 
AND RBX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
BSWAP RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], BL 
SBB EDX, -14 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -33 
CMPXCHG DL, BL 
CMOVS EBX, ECX 
OR DL, 84 
SUB RDX, -37 
IMUL CX 
ADC EDX, ESI 
TEST AL, -112 
CWD  
MOVZX ESI, AL 
CMOVNP AX, BX 
ADC AL, 30 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], AX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDX 
ADD DIL, -90 # instrumentation
SBB EDX, -74 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
