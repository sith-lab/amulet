.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 31 
CMP EAX, 609433815 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DL 
XCHG RCX, RAX 
CMOVNLE RCX, RBX 
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD AX, -12867 
MOVZX EDX, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDX 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 76 # instrumentation
ADC AX, -12314 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
MOVZX EDX, CL 
IMUL EBX, EDX, -111 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
MUL DI 
ADD SIL, 77 # instrumentation
CMOVNZ EDX, EBX 
CMP SI, DI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DIL 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB BX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
JMP .bb_main.5 
.bb_main.5:
CLC  
MOVSX EDI, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RAX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ESI 
ADC DIL, -86 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
