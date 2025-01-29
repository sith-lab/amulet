.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -107 # instrumentation
MOVSX SI, CL 
MOV DX, DX 
CMOVNO RSI, RAX 
DEC RAX 
STC  
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ESI 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDI 
IMUL AX, DI, 111 
AND RCX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RCX], -120 
XCHG RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
ADD SIL, -14 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 13 # instrumentation
ADC RDI, 51 
CMOVO ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RAX] 
CMOVB SI, AX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -119 
AND RCX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -112 
ADC ECX, -30 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RAX] 
STD  
CMP RAX, 1145204872 
CMOVNZ AX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
