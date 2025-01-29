.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDX] 
CBW  
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -111 
CMC  
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 55 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RBX] 
CMOVO EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], ESI 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], AX 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 70 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EAX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
