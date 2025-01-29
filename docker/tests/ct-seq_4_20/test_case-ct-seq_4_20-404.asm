.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 17 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 63 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV ESI, -2061691346 
MUL RSI 
MUL BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
CMOVNLE RSI, RCX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDX] 
SUB AL, 54 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDI] 
SUB ESI, -38 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
MUL DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RAX] 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
ADC SIL, 123 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
