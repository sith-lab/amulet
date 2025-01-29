.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 36 # instrumentation
CMOVNB EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], CX 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -3 
AND RSI, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 33 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDI] 
CMP AL, -79 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RSI] 
CMOVZ EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RSI] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RBX] 
ADC RDI, 126 
ADC BL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
