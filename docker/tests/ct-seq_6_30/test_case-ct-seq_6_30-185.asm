.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 91 # instrumentation
SBB EDI, 0 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
MOVZX ECX, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -38 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RCX 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CDQ  
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
SAHF  
JMP .bb_main.3 
.bb_main.3:
MOVSX RCX, CX 
MOV CX, 384 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 62 
SUB AL, 98 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RSI] 
ADC DIL, -30 
JNO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
MUL EBX 
AND RAX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RAX] 
IMUL SI 
ADC EDI, EBX 
CMOVP EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], 78 
STC  
MUL BX 
JMP .bb_main.5 
.bb_main.5:
IMUL EBX, EBX, 85 
CMOVNB AX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -1021272297 
SBB BL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
