.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], CX 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EDI 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RAX 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
ADD SIL, -115 # instrumentation
CMOVBE AX, CX 
MOVZX RDI, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDX 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDX 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDI] 
DEC EAX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DIL 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
