.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 88 
ADC AX, 7375 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RBX 
ADD SIL, -34 # instrumentation
CMOVL RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
IMUL EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
XCHG EAX, EAX 
XOR RDX, -107 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -12774 
OR CX, 103 
ADD DL, 97 
AND RSI, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
SUB EAX, 925523322 
XOR SIL, -88 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 51 
CMOVB CX, SI 
MUL DL 
MOV EDX, 78339714 
MOVZX CX, AL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -89 # instrumentation
CMOVS RAX, RBX 
IMUL EDI, EAX, 114 
NOT RDI 
XOR RSI, RDI 
SETNO CL 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], CL 
LOOPE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -58 # instrumentation
CMC  
CWD  
AND RSI, 9 
CMP EAX, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RAX] 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CLD  # instrumentation
MOVZX ECX, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
