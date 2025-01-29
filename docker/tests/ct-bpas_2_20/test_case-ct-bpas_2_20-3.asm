.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DI 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], ECX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 70 
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RBX] 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RCX, 121 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], DI 
ADD RDI, -46 
ADC RDX, 54 
DEC ESI 
MOV DX, CX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 411215004 
MOVZX EBX, BX 
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 105 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
