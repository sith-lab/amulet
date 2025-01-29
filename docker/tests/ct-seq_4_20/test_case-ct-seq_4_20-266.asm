.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DX 
ADD RAX, 1877356439 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RAX 
MOV ECX, -1603045631 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDI] 
CMOVNBE RDX, RDX 
CMP SI, SI 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
IMUL BL 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 80 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RSI] 
INC CL 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
