.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 86 
CMC  
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
MOVSX BX, CL 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], CL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
ADC RAX, 1270091144 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 54 # instrumentation
ADC EBX, -31 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -23 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
