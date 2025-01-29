.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 227658697 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 12 
AND RDX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX], -77 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], CX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDX] 
MOVZX EDI, DL 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -61 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 37 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
