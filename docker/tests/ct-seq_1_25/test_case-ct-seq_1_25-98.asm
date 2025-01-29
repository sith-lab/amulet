.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], DI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
XCHG SI, SI 
CMOVZ DI, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
NEG BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ECX 
CMP RBX, -9 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
ADD DIL, 123 # instrumentation
CMOVNO RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
OR EDX, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
CMP RAX, -1740590301 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 123 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], ESI 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 25 
SBB AX, -6976 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
