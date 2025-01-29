.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -87 # instrumentation
CMOVS SI, SI 
CMOVO RBX, RSI 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 104 
CMP AL, -118 
SUB DIL, -49 
CMP AX, 6430 
ADC SIL, 52 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 63 
CMOVS RBX, RCX 
CMOVO BX, BX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], SIL 
DEC ECX 
CWD  
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -36 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
IMUL EDX 
ADD SIL, -2 # instrumentation
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 93 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RDI 
MUL RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
CMP ESI, EBX 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 57 
ADC AL, 100 
CMOVNS EDI, EDI 
CMP RAX, 2016847041 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
