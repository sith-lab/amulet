.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RDX] 
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDX 
CMOVNB CX, BX 
CMP RSI, 97 
AND RDX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDX] 
INC DL 
XCHG DI, DX 
JMP .bb_main.2 
.bb_main.2:
CMP RAX, -654309503 
AND RSI, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RSI] 
MOV DX, DI 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP EAX, 936737569 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
SUB CX, BX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ECX 
SUB DIL, 82 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 115 # instrumentation
CMOVLE DI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -23 
OR AX, 0b1000000000000000 # instrumentation
BSR AX, AX 
IMUL RSI, RSI 
JMP .bb_main.5 
.bb_main.5:
ADD AX, 26846 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -13394 
CMP BL, CL 
AND RSI, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
MOV EDX, EDX 
CMOVNP DI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
