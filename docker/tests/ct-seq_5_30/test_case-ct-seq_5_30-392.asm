.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA BX, qword ptr [RBX + RCX + 41002] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDI] 
MOVSX AX, DL 
IMUL DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RBX 
CMP DIL, 105 
LOOP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], ECX 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], SIL 
ADC RBX, 61 
CMOVNL EAX, ECX 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP AX, -27850 
AND RCX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RAX] 
ADD ESI, -19 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], CX 
MOVSX EBX, AL 
AND RDX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDI] 
NEG RBX 
CMP EAX, 1597175193 
CMP AL, 68 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 79 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 124 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
