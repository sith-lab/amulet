.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
MOV RSI, -5184828356005590369 
CMOVBE EAX, EBX 
MOV SIL, -27 
CMOVNB EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], 1536597193 
CMOVNBE RCX, RAX 
IMUL EDI 
ADD DIL, 97 # instrumentation
CMOVNP AX, DX 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -20 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -52 
AND RBX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
CWD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
