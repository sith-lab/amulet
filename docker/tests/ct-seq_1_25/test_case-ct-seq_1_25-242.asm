.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -25 # instrumentation
MOV RAX, -6753219715346488629 
CMOVO DI, CX 
CMOVS EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DX 
ADD AL, DIL 
MOV CX, -30758 
DEC AL 
XCHG EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RSI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -64 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -95 
CMOVNS EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 50 
MOVZX EBX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
