.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 93 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EDI 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -78 
JMP .bb_main.1 
.bb_main.1:
ADD DI, 98 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -2518 
AND RCX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RCX] 
MOVSX EBX, DX 
IMUL CX, SI, -26 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -23 # instrumentation
CMOVLE RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
DEC BL 
AND RBX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
SUB CL, 69 
CMOVNL EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RCX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RSI 
STC  
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -80 # instrumentation
ADC BX, DI 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDI] 
CMOVB DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
