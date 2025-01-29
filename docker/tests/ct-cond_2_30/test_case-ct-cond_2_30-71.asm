.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EDI, SI 
IMUL EAX 
ADD SIL, 83 # instrumentation
CMOVNB RAX, RDI 
CMOVNBE EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 37 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RBX] 
CMOVNP ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 100 
SUB DL, AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 87 
DEC EAX 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
CMOVNP EBX, EAX 
SUB RAX, -30 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], SI 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
OR AX, 0b1000000000000000 # instrumentation
BSR BX, AX 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
CMOVNLE CX, CX 
CMOVL SI, DX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], BX 
MOVSX ECX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
