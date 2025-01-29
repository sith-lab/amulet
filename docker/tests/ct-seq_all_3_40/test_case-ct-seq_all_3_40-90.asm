.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], DX 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RDX 
XOR DIL, 82 
SETNZ DL 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 119 
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, -90 # instrumentation
SETP byte ptr [R14 + RDX] 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], BL 
ADC RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDX] 
CMOVO CX, DI 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RDI] 
ADC AX, -6256 
CMOVNO EBX, ECX 
MOVZX EDX, AX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 88 # instrumentation
SETNO CL 
XOR EAX, 1463192247 
AND RCX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RCX] 
CMOVNP EDX, ECX 
ADC DL, AL 
SETNBE BL 
DEC AL 
ADD DIL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], CX 
NOT ESI 
AND RDX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RDX] 
SETS DL 
IMUL AL 
ADD DIL, 77 # instrumentation
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 56 # instrumentation
ADC SIL, -110 
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
ADD BL, BL 
AND RAX, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RAX] 
TEST EBX, 407120915 
IMUL BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX], -39 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], 73 
OR SIL, -87 
AND AX, 57 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
