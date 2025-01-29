.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -77 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], DX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RDI] 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVSX EDX, BL 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RCX] 
SUB RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDX] 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
SBB CX, -58 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RBX 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
