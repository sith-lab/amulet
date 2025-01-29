.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC AL 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 19 
JNP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
XCHG EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
ADD ECX, 87 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], DX 
AND RAX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
CMOVB ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RCX] 
SBB CX, -48 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 127 # instrumentation
INC RAX 
CMC  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DIL 
AND RBX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RBX] 
CMOVNBE BX, SI 
JZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DI, 10 
MOV SIL, DIL 
CMP CL, 35 
ADD RDX, RCX 
SUB BL, CL 
INC RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDX] 
IMUL EAX, EBX, -85 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
