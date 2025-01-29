.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RAX] 
ADD RAX, 1262917447 
SETL CL 
MOV DIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RCX] 
DEC EDX 
CMP CL, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -70 
TEST AL, DL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST AL, -65 
OR CL, DL 
CMOVO RBX, RBX 
XOR EDI, -47 
AND SIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RDX 
CMOVNB EDI, ECX 
CMP DI, BX 
TEST AX, -29990 
TEST SIL, -44 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RBX] 
MOVSX RDI, BX 
MOVSX EAX, DI 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
SUB CX, -114 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RAX] 
TEST RAX, -1729045333 
CMOVLE AX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], DL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
INC DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
SETNLE DL 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
SETB AL 
CWDE  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
