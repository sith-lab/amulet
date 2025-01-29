.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], AX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RSI 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDX] 
INC DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RSI] 
XCHG RAX, RAX 
CMOVNZ DI, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOVZX ESI, DL 
CMP EAX, -867740694 
AND RCX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 44 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -10 
MOV EDX, -1032867836 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
