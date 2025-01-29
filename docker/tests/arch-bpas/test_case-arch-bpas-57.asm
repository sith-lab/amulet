.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, 80 # instrumentation
SETLE AL 
SETNLE AL 
TEST DIL, 119 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
SUB AL, -27 
MOV RDX, -5051158752365745446 
IMUL EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RSI 
TEST RDI, -292563049 
SETO DL 
MOV AL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], SI 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
MOV BX, 8785 
MOVZX RDX, SIL 
OR CL, SIL 
SETNLE BL 
AND RBX, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RBX] 
AND AX, -31524 
XOR EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -80 
CMP EAX, -708998947 
SETO BL 
CMOVNB ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -119 # instrumentation
CMOVO RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDX 
CMOVL EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EBX 
IMUL SI, DX, -18 
MUL EAX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RSI 
ADD DIL, -43 # instrumentation
SBB EDI, EAX 
IMUL EAX 
SBB DIL, 26 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
