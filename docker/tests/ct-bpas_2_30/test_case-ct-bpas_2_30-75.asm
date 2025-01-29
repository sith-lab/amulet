.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -22088 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
INC RDX 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
SBB RAX, -412069203 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RAX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX ECX, SIL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], SI 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
ADC CL, SIL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDI], 127 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 36 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
CMOVO RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDX] 
CMOVL SI, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -68 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 103 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
