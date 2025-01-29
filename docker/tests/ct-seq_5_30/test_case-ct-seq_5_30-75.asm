.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, 1462358376 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMOVS RAX, RCX 
JBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOVZX RDX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ESI 
SUB AX, -26302 
INC EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
STC  
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDX 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 18 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 34 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CMP ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RBX] 
SBB CL, CL 
CMC  
JMP .bb_main.3 
.bb_main.3:
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
IMUL RSI, RBX 
DEC RAX 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], CL 
IMUL DIL 
XCHG AX, BX 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
INC CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
