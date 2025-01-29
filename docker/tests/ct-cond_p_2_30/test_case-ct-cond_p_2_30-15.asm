.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 32 # instrumentation
INC RBX 
ADC AX, 21235 
ADC ECX, -103 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RCX] 
ADD EAX, 1532631979 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
CMP DI, DX 
IMUL BL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
ADC AX, -7970 
CMOVS RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RSI 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
ADD DIL, -68 # instrumentation
CMOVNO SI, DI 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
CMOVNB RDX, RAX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 80 # instrumentation
MOV BL, -28 
CMOVS DI, BX 
ADC EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -36 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 45 
IMUL DL 
XCHG EDX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
