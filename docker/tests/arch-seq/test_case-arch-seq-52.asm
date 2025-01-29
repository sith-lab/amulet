.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -10 
AND RBX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -55 
DEC DI 
MOVZX EBX, DL 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], CX 
CMOVNB DI, AX 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 1973510658 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
CMP DI, -41 
XOR RAX, 47 
IMUL DI 
TEST ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
ADC CX, BX 
SUB AX, 89 
ADC RDI, 25 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RBX] 
SBB DL, AL 
JMP .bb_main.3 
.bb_main.3:
CMP AX, 9238 
CMP RAX, 996424245 
SBB BL, 83 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
XADD BL, AL 
OR AL, 69 
CMOVNLE CX, AX 
ADC ESI, EAX 
NOT CL 
TEST RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDX] 
CMP RAX, -443243689 
ADC AX, -16 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], DL 
SETNBE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
