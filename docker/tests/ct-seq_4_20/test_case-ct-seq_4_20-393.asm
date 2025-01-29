.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -44 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 4 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
INC DI 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 76 
AND RDX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDX], 35 
IMUL ECX 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -115 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 8 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
MOV DI, -30876 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
