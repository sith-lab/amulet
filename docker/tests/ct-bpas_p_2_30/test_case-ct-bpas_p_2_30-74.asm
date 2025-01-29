.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
LEA EBX, qword ptr [RAX + RCX + 57634] 
SUB AL, CL 
AND RCX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
CMOVL DI, SI 
AND RBX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RBX] 
CMOVNS DX, SI 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -80 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
CLC  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], SIL 
ADC EAX, ECX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -78 
ADD EAX, -1667737577 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
SUB EAX, 77 
ADC DIL, -49 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDI] 
INC RSI 
ADD AX, 3185 
CMOVO EDI, EAX 
MOVSX ECX, CL 
IMUL RBX, RSI, -114 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
ADD SIL, -39 # instrumentation
CMOVS CX, BX 
MOV ESI, 1772836136 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
CMOVLE EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
