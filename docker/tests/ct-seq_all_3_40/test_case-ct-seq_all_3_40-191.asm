.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 47 # instrumentation
CBW  
SETB BL 
XOR AX, 86 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 17 
XADD ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
AND AX, 5181 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -62 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], -125 
CMOVNZ RDI, RDX 
DEC RDX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
IMUL EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EDX 
AND EAX, 1477363421 
OR CX, BX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDX] 
SBB EAX, -1838677363 
SETNP DL 
MOV AX, 23582 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR RAX, -99 
NOT AL 
CMOVNZ AX, DI 
ADD RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RCX] 
CMP AL, 60 
ADD RDX, RSI 
CMOVZ EBX, ECX 
ADC ESI, 83 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], CL 
ADD EAX, -735212012 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], CX 
TEST RCX, 1130660910 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RCX] 
MOV RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
