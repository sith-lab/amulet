.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -103 # instrumentation
CMOVO EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RSI] 
CMOVL ECX, EBX 
CMOVZ RAX, RSI 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -107 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDI 
ADC DI, DX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], 12 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDI] 
CMP DL, 112 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], SI 
JMP .bb_main.3 
.bb_main.3:
ADD BX, DX 
MOVZX EDX, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -75 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -117 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
DEC RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -67 
MOV SIL, 104 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
