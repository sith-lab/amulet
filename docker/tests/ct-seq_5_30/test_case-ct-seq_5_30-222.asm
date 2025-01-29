.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EBX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 86 
CMOVBE CX, SI 
CWD  
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RSI] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD DIL, 88 # instrumentation
MOV DL, AL 
CMOVNLE AX, SI 
JRCXZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
CMOVS ESI, EBX 
ADD EAX, 1747222081 
CMP DL, 4 
CMOVNLE AX, SI 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RAX] 
IMUL DX, SI 
JMP .bb_main.3 
.bb_main.3:
SUB BL, DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -45 
CMP RDI, -91 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDX 
MUL EAX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -81 
CMOVL CX, BX 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
