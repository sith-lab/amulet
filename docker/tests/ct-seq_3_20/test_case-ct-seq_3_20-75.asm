.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -19 # instrumentation
CMOVL ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 41 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 40 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RAX] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -76 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], AX 
ADD AX, -26732 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RDX 
MOVSX EAX, DI 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -48 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], -19 
AND RAX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RAX] 
IMUL EDI 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RBX 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
