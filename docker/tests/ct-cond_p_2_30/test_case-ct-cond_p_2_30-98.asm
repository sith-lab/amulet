.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDI] 
IMUL EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -120 
NEG ESI 
INC EAX 
AND RAX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RAX] 
XCHG RDX, RAX 
DEC EBX 
AND RAX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RAX] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RSI, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RSI] 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], CX 
ADC AX, 24 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDX 
CWD  
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDI] 
MOV EAX, 1767365705 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -73 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], -105 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 15 
CMOVS AX, DI 
CMP RAX, -1117342441 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
CMOVNP RBX, RSI 
CMOVP SI, CX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
