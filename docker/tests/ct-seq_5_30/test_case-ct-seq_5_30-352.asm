.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDI] 
CMOVNZ EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], AX 
MOV DI, DI 
CMOVNZ RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
SBB AX, 23 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -12 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RBX] 
CMP DL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -40 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RBX] 
CMOVP ESI, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RDI] 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EBX 
CMOVL EDI, EAX 
CMOVNO EAX, EDI 
SUB AX, 14580 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDI] 
BSWAP RSI 
DEC RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RAX] 
CMOVNS CX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
