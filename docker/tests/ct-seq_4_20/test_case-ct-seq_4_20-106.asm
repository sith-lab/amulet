.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 38 # instrumentation
CMOVZ EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -61 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
INC BL 
MOV RBX, -2188330583143470428 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 19 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RAX] 
ADD SIL, -57 # instrumentation
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
LEA RBX, qword ptr [RBX + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDX] 
MOVZX EDX, SIL 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -59 
MUL ESI 
AND RCX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RCX] 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
MUL BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
