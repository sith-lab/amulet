.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
CMOVL RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], SIL 
CMOVZ DI, CX 
NEG CL 
LEA CX, qword ptr [RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RAX] 
ADD RDX, 7 
SETLE AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], 82 
AND RAX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], -103 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 75 # instrumentation
CMOVBE CX, CX 
CMOVS RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 9 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RAX] 
XOR AX, 5108 
CMOVNBE AX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], 17 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RCX] 
ADC RDI, -27 
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI], -25 
ADD DIL, -66 # instrumentation
CMOVNLE EBX, EAX 
NOT DL 
CMOVO RDX, RSI 
CMOVO CX, BX 
CWD  
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -59 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
