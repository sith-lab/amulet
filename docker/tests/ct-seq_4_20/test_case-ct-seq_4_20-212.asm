.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 61 
CMP RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
INC RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI], 100 
ADC CL, BL 
MOVSX EBX, CX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -70 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 78 
MOVZX RAX, CX 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV CL, BL 
XCHG EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
