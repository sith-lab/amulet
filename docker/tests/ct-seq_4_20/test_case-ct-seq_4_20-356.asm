.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RDX] 
SUB ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 68 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
INC CX 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], 50 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RBX] 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 44 # instrumentation
CMOVNL RBX, RSI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 125 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RBX] 
MOV ECX, EAX 
NEG DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
