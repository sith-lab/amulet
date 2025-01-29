.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -60 # instrumentation
SETNLE CL 
SBB DIL, -122 
XOR AX, 120 
AND RCX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RCX] 
SETZ DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], CX 
AND RBX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
MOV AL, 102 
SAHF  
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
BSWAP EDI 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
XOR AL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
SETNZ DIL 
SETNS CL 
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], EBX 
SETLE DL 
MOV RDX, RDI 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
TEST AL, 3 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RBX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
IMUL RSI, RSI, 115 
ADD DIL, -5 # instrumentation
SETL AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
LEA BX, qword ptr [RCX + RSI + 54064] 
ADC EAX, -1324089205 
IMUL BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RCX] 
CMP EBX, ECX 
CWDE  
CMOVBE RDI, RSI 
SETNO CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
