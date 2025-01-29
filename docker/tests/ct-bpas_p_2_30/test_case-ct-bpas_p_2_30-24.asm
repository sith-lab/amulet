.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RSI] 
CMOVB RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
CMOVNL DI, DI 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
IMUL RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
CMP AL, -100 
SBB AL, -64 
MOV ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -39 
MOV RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 676917328 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP CL, AL 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -68 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI], 126 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -113 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -5 
CMOVNS RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RBX] 
CMP SIL, 118 
MOV AX, BX 
MOVZX AX, BL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EAX 
CWD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
