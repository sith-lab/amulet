.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
SUB AL, -90 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
ADD DIL, 90 # instrumentation
SBB SIL, 74 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
CMOVZ DI, CX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
INC EBX 
CMOVNBE DX, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
MOVSX RSI, DL 
ADC AL, 60 
ADD RAX, 1857237103 
AND RSI, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RSI] 
MOV RDX, 5032957716924215161 
CMOVNO EDX, EBX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -119 # instrumentation
MOVZX RAX, CL 
ADC ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDI] 
OR AX, 0b1000000000000000 # instrumentation
BSR AX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EDX 
SUB EDI, -31 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 100 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], AX 
IMUL EDX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
