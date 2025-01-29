.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 69 # instrumentation
MOVSX EDX, SIL 
DEC BL 
CMOVNB RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EAX 
XCHG AX, AX 
CMOVL SI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RDX] 
INC AX 
CMOVZ CX, CX 
AND RDX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
ADD DIL, -84 # instrumentation
CMOVNZ RDI, RBX 
CMOVNLE DX, SI 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA DI, qword ptr [RDI + RCX + 61796] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
CMP RAX, 285334031 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EBX 
ADC EAX, 1623407069 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RCX] 
ADD RDX, RDI 
MUL RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
