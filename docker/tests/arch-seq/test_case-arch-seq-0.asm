.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 121 # instrumentation
ADC RSI, RSI 
SETO AL 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RAX, 0b1111111111111 # instrumentation
OR RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RDX] 
SBB DL, CL 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
OR DIL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RSI] 
CMOVNO RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], AX 
MOVSX ESI, DL 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, 111 # instrumentation
LEA BX, qword ptr [RDX + RDI] 
CWD  
CMOVL ESI, EDX 
ADC RAX, -332359313 
CMOVNB RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 7 
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
SUB AL, CL 
MOV RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RSI] 
TEST AX, -7779 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
JP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RDI] 
CMOVBE EBX, EDX 
SBB DIL, 11 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
MOV AL, AL 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CLD  # instrumentation
CMP CL, DL 
CMOVNS EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
MOVZX RBX, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RCX] 
STC  
NEG EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
