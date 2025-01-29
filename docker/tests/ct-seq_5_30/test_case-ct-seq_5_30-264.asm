.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EAX 
CMP DIL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDX] 
ADD RAX, 375347983 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -97 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 9 
ADD DL, CL 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 33 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -1113300942 
JMP .bb_main.2 
.bb_main.2:
SUB EDX, -83 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], SIL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -50 
SUB AL, -67 
ADC AL, -96 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
MOV RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EDI 
CWD  
SAHF  
CMOVBE RBX, RDX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RAX] 
ADD EAX, -768704967 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
