.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RCX, RDI 
ADD AX, 22215 
ADC RAX, 54 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 35 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MUL EAX 
CLD  
MOVZX RDX, DL 
SUB BX, DI 
SUB EAX, -895692523 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -55 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RSI 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -7 # instrumentation
CMOVNO EBX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 67 
ADC DIL, DIL 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
ADD BL, -7 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
CMOVNB RDX, RDI 
ADC ESI, -12 
SUB CL, -20 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDX] 
SUB EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 89 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
