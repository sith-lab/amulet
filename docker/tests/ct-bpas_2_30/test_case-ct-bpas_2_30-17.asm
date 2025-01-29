.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, 75 # instrumentation
CMOVL BX, AX 
SBB RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
CMP DX, SI 
MOV AL, 111 
ADD DL, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
ADD BL, 127 
AND RCX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
MUL ESI 
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
CMP ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -48 
CMOVNLE EDX, EDX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -87 # instrumentation
CMOVNO DX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], 123 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -114 
ADD BX, 89 
MOV EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RAX] 
MOVSX ESI, AX 
NEG AX 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
CMOVZ AX, DI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -2099 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
