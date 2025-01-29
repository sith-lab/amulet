.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -65 # instrumentation
ADC RAX, -1963661765 
AND RDI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDI] 
SUB EAX, EDI 
MOV SIL, -90 
AND RCX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RCX] 
SETO BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], ECX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], CL 
MOVZX RDI, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], BX 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
XCHG RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], CL 
NEG ECX 
CMOVP BX, DI 
DEC DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RAX] 
XADD DI, DI 
ADC BL, DL 
AND RBX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RBX] 
CMOVZ RAX, RCX 
XOR EAX, 2228404 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
MOVSX ECX, CX 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
XOR EDX, EAX 
CLD  
AND RBX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RBX] 
XOR RDI, -78 
XCHG DIL, DL 
MOVZX EDI, AL 
SUB RDX, RSI 
SETZ DIL 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
