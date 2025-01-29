.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -124 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RCX] 
MUL DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], 78 
CMOVNO EDX, ESI 
ADD SIL, -128 
MOVZX ECX, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RAX] 
ADD EDX, EAX 
ADC RDX, RAX 
IMUL RDX, RDX, 126 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
STC  
CMP RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
ADC DL, SIL 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
CWD  
DEC EAX 
ADC BX, 25 
CMP RBX, RBX 
CDQ  
CMP EAX, -157024551 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
