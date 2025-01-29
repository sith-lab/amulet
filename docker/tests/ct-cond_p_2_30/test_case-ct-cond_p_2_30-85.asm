.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RBX, AL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -54 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 63 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RBX] 
CMC  
CMOVL EAX, EBX 
MOV ECX, ECX 
CMOVNO EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -117 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DX 
XCHG EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RCX] 
CMOVNZ ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RCX 
CMOVZ RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
XCHG DX, AX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -544736756 
ADC AL, 31 
CMOVNS AX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
