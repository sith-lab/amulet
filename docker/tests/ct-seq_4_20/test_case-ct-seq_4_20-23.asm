.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDI] 
CWD  
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -65 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RDX 
ADD DIL, -47 # instrumentation
CMOVNBE RAX, RAX 
SUB CL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RAX] 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
CMOVNO EBX, EAX 
ADC RCX, 6 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 30 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
SBB BL, -118 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
