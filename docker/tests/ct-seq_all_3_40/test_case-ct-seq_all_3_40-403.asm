.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -73 # instrumentation
CMOVNO RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
INC DL 
SETNO CL 
SETNLE BL 
XADD DL, AL 
SBB RAX, RBX 
SETNZ CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
OR CL, CL 
NEG AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDX] 
CMP CL, 26 
IMUL RBX, RAX 
ADD DIL, 62 # instrumentation
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
INC AL 
AND AX, -61 
CMP RSI, 73 
IMUL SI, AX, -47 
ADD DIL, -59 # instrumentation
CMOVNL DI, DX 
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDX] 
CMP RAX, 631952359 
AND CL, DL 
CDQ  
CMOVL RBX, RSI 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDX] 
OR EDI, -22 
CMOVNL DI, DI 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 97 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
OR RAX, -595233682 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX], -16 
SUB RBX, 53 
AND RCX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
