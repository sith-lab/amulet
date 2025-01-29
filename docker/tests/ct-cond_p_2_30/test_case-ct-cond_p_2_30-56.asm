.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 0 # instrumentation
CMOVNP RCX, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
SUB RDX, -41 
CMOVNBE SI, BX 
CMOVNS RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
CMP DX, DI 
CLC  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], AX 
AND RBX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RBX] 
CMOVNS EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DIL 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDX 
CMP SI, DX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EDX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 26 # instrumentation
SBB EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 107 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDI 
DEC AX 
CMP EDX, -40 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
MOVSX ECX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -19 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
