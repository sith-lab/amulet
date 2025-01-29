.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RSI] 
SUB AL, 80 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
OR SI, 0b1000000000000000 # instrumentation
BSR SI, SI 
ADD SIL, -123 # instrumentation
SBB RSI, 10 
MOVZX RCX, SI 
MOVSX ESI, AL 
CMOVLE EAX, EDX 
JMP .bb_main.2 
.bb_main.2:
NEG RDI 
AND RCX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RCX], 82 
SBB DI, 11 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDI] 
XCHG DX, AX 
CMOVBE RCX, RAX 
SUB DL, -1 
AND RSI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RCX] 
CMOVB SI, DX 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DI 
LOOPE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, 96 # instrumentation
MOV CL, -58 
ADC CL, -92 
MOV CL, CL 
SUB EDX, -29 
LOOP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 72 
AND RAX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RAX] 
ADC DI, -58 
MOV EDX, -922708369 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
