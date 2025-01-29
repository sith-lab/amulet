.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], ECX 
CMOVLE EAX, ECX 
CMOVO EBX, EDI 
SBB EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RAX] 
SUB RAX, 1841330168 
XCHG RDI, RCX 
SBB RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 35 
IMUL EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EBX 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 8 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
ADD DIL, -85 # instrumentation
CMOVNP ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
