.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC BL 
CMOVNZ ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDX] 
AND AL, 64 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
CMOVB BX, SI 
CMPXCHG EAX, ESI 
SBB AL, -103 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], BX 
INC AL 
IMUL EBX, EDX, -78 
OR CL, DL 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], AL 
MOV ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
SETP BL 
CMC  
CMP RAX, 77 
SETP DL 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
MOV RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], SIL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RBX] 
MOV ESI, -206509107 
NOP  
AND BX, -25 
MOVZX CX, AL 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 66 
SETZ CL 
AND RDX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDX] 
SUB DIL, 57 
AND RAX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RAX] 
ADC DI, 60 
AND RDI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RDI] 
LEA DI, qword ptr [RAX + RBX + 56861] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
