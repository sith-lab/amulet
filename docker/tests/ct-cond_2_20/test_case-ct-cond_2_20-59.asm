.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWD  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], DI 
SUB DL, -78 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -59 
AND RAX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -114 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -34 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -65 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
