.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP DI, -128 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
ADC AL, AL 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 99 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RAX] 
IMUL RAX 
AND RBX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RAX] 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
ADD SIL, -54 # instrumentation
CWDE  
CMOVNB RAX, RDX 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDI 
CMOVNO ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
