.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 58 # instrumentation
XCHG SIL, DL 
ADC SIL, -10 
CMP EAX, 1268463373 
SBB DI, 41 
NEG DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 125 
LEA ECX, qword ptr [RBX + RCX + 22566] 
SUB RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDI] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA EDX, qword ptr [RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -125 
AND RDX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
NEG DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 14 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RBX] 
ADC AX, 14642 
CMOVP ESI, ECX 
XCHG RBX, RBX 
SUB CX, 112 
CMOVNP RSI, RAX 
CMOVZ RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 1360478361 
CMOVNP AX, DI 
DEC RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
