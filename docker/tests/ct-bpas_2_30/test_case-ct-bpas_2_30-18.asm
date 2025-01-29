.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RAX] 
IMUL ECX 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], CX 
AND RBX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -26 
ADC EAX, -418181941 
SUB SIL, BL 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
CMOVNB DX, DX 
DEC DL 
AND RDX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RDX, 50 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 22 
ADC RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
MUL EBX 
IMUL DI 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
