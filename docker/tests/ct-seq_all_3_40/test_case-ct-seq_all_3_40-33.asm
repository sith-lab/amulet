.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 43 # instrumentation
SETZ BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], BX 
INC CL 
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
AND RDI, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 4 
CMOVZ ECX, ECX 
SETBE BL 
IMUL BL 
NOT DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -29 
SETNBE BL 
BSWAP RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RDX] 
AND EAX, 2138100162 
XOR DIL, 80 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 3 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
NEG DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RCX] 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
ADD AL, -13 
OR BX, 0b1000000000000000 # instrumentation
BSR SI, BX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
ADD SIL, -53 # instrumentation
ADC AL, 100 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RAX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RAX] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CBW  
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
NEG EBX 
AND RSI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RSI] 
ADD EDX, EDX 
AND EDX, -91 
SBB RBX, -123 
CMOVNO RBX, RDX 
XOR AX, 2621 
BSWAP RBX 
SBB BL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
