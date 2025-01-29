.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
CMP AX, -22290 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
CMOVLE EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -44 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], SIL 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDI 
CDQ  
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -89 
XCHG BX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
