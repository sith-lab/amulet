.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], BX 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RCX] 
SUB RBX, RCX 
CMP DI, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 97 
CMP DI, -36 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -33 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
CLC  
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
