.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 0 # instrumentation
CMOVB BX, SI 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 116 
XCHG ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -26 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV EAX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RBX] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
CMP ESI, -88 
CMOVO EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDI] 
CLD  
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RCX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 29 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
