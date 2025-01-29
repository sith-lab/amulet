.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RSI], 21 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 33 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 104 
AND RDI, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDI] 
MOVSX ESI, CX 
CWDE  
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
CMOVP CX, DX 
AND RBX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 35 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EAX 
MOV AL, 16 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMOVNBE ESI, ESI 
BSWAP RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
