.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EDI, -52 
AND RSI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RSI] 
ADC AX, 29198 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RAX] 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], AL 
XCHG BX, AX 
CMOVNZ EBX, ECX 
CMOVNZ DX, CX 
CMOVZ BX, DI 
SETS SIL 
OR RDX, RAX 
IMUL EBX, ECX, 5 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
ADC AL, CL 
NEG SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], 127 
CMOVNLE ESI, ESI 
IMUL ECX, EBX, -59 
ADD DIL, 112 # instrumentation
SETNZ BL 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -27 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
BSWAP EDI 
CWDE  
SBB RDX, 114 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
CMP SI, DX 
SBB RDI, -14 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], BL 
SBB EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDX] 
STD  
SUB RBX, 126 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RDI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDI] 
OR DX, 0b1000000000000000 # instrumentation
BSF CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
