.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
CMP RAX, -1200061650 
AND RCX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RCX] 
MOV DX, AX 
ADD DL, BL 
AND RSI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RSI] 
ADC RCX, RAX 
ADD EDX, 74 
ADD AL, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 91 # instrumentation
LAHF  
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
XCHG EDX, EDX 
IMUL ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RSI] 
MOV BL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RAX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RAX], -57 
ADD EAX, 768395169 
LEA SI, qword ptr [RDI + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RSI] 
XCHG EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
