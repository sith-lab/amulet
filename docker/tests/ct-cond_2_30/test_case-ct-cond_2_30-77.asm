.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDI] 
XCHG CL, CL 
SBB EAX, -126 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -124 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 23 
ADD EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
CMP EAX, 1545831240 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDI 
MUL CL 
SBB BL, BL 
CMOVNO RSI, RSI 
SBB EDX, EDX 
MOVSX RSI, SIL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RDI] 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
ADD SIL, -97 # instrumentation
CMOVB RSI, RCX 
CMOVO RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
MUL EAX 
NEG AX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
ADD EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
