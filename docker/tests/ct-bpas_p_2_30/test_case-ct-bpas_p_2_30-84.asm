.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
DEC CX 
AND RDX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDX] 
SBB BL, DL 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], SI 
SUB RDI, 92 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -112 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -1589144999 
AND RCX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RCX] 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
IMUL RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RBX] 
CLD  
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ESI 
CMP BL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], SIL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
CMOVO RDI, RDX 
CMOVB AX, CX 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
