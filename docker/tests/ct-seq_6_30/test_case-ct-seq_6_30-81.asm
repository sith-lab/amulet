.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ECX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RBX 
JS .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], -9 
LEA EAX, qword ptr [RCX + RDX] 
CMP EBX, 45 
INC AL 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
CDQ  
XCHG RDI, RAX 
JLE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
MOV EDI, EDI 
ADD ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDX] 
ADD BX, DI 
AND RSI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RSI] 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 36 
AND RDI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
ADC RBX, 1 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
CMOVNB EDX, ESI 
INC RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
DEC EAX 
JMP .bb_main.5 
.bb_main.5:
ADD CL, -54 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], CX 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 49 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -57 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
