.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 49 
SUB SIL, BL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
STC  
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RCX] 
CMOVO DI, SI 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDX 
DEC EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RBX] 
ADC SIL, -124 
SUB DIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDX 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RAX] 
ADC DIL, DL 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
CMOVO EDI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
