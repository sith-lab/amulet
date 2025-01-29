.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -91 
OR BL, -33 
CMOVNL RDX, RCX 
AND DIL, SIL 
SUB ESI, 45 
CMP DL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EDI 
AND EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -18 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
IMUL EDI 
SUB RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RBX 
INC RBX 
LEA RDI, qword ptr [RAX + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RDX] 
SUB EAX, -1353746109 
SETNP AL 
AND RSI, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], -73 
CMP BX, BX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RAX] 
MOVZX ESI, DL 
AND CX, 123 
MOVSX ECX, CX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RAX] 
MOVSX EDX, DL 
CMOVNO RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
XCHG DIL, BL 
TEST EAX, -1378878475 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], -101 
CMOVNL EBX, EAX 
SETNZ CL 
MOV AX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
