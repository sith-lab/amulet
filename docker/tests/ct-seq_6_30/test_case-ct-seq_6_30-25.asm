.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], 40 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
INC EBX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -113 
CMOVNZ EDX, EBX 
CMOVLE SI, BX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 24 # instrumentation
CMOVLE EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -4 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 34 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -63 # instrumentation
CMOVNL EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 32 
ADD AL, -36 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX] 
MUL RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RAX] 
JZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
MUL RBX 
LEA EDX, qword ptr [RSI + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], ESI 
INC DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDI] 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
XCHG SI, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RSI] 
ADD DIL, -41 # instrumentation
CMOVBE EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
