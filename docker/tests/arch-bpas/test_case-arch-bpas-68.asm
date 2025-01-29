.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RSI] 
CMOVS DI, CX 
TEST AL, -32 
MOV EAX, 1439364080 
AND RSI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RSI], -102 
ADD DIL, -89 # instrumentation
CMOVNLE ECX, ESI 
NEG DI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
SUB EAX, 2140883172 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDX] 
SETS BL 
MUL CL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 2115753686 
SUB RAX, -1437827820 
NEG DX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
SETP DL 
SETP BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDI] 
CMOVNS ESI, ESI 
TEST BX, 6208 
SETBE AL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
MOVZX BX, AL 
MOV DL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
CMOVB DX, SI 
ADD AL, AL 
ADC EAX, -362079120 
ADC BX, AX 
ADD DIL, -120 
CMP DI, -103 
SETNZ AL 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
ADD DIL, -102 
CMOVL DI, DI 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 72 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], -1755968182 
SUB SIL, -65 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
