.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
MOVZX ECX, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDX] 
SBB AX, DX 
IMUL EAX, EDI, 81 
AND RBX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
XADD DX, DX 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], BL 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], EDI 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], BL 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -118 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RCX] 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
MOVZX CX, SIL 
MOV EDI, EBX 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
IMUL CX, CX, -124 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EDI 
SETNLE DL 
AND RBX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RBX] 
SETBE BL 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], AL 
CMP AL, -57 
CMP BL, BL 
AND RBX, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RBX] 
AND AL, 68 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], -80 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], 52 
CMOVNBE RDX, RDX 
DEC ECX 
XCHG CL, AL 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ECX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDX] 
SUB DIL, 81 
AND RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDI], -118 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -81 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
