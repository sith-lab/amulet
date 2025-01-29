.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
CMP BL, 5 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
CMOVBE RDI, RCX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DIL 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ESI 
AND RAX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
ADC AX, 31222 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
