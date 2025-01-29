.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RBX] 
STC  
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], -24 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -61 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RBX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EAX 
CMP AX, 26282 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ECX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], BL 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD AL, -69 
NEG SI 
CMOVL EAX, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], CX 
JMP .bb_main.4 
.bb_main.4:
ADD AL, 26 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 19 
ADD RAX, 467303298 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], ESI 
CMOVNB RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RBX] 
ADC EBX, ECX 
CMOVZ ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 62 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], SIL 
IMUL RDX, RDX 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
