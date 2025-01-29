.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX BX, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -1400228266 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -96 # instrumentation
CMOVL RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
CMOVNB EAX, ECX 
SBB EAX, 2081695166 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], ESI 
INC ECX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EDI 
CMOVP RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], BX 
ADC SIL, 0 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
SBB SI, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RSI] 
CMOVB EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
SBB AL, BL 
JMP .bb_main.4 
.bb_main.4:
SUB EAX, 116 
SUB DI, CX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 10 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
CMOVL EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
NEG SIL 
AND RDX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
