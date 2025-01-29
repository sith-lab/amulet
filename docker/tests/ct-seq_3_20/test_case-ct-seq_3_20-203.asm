.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RDI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG AX, AX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EDI 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
MOV DI, -16467 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 99 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EBX 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DI 
AND RSI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -81 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
