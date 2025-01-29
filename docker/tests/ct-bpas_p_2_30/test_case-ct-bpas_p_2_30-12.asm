.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RDI] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDI 
IMUL BL 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 94 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], BX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -62 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
MOV AL, -20 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
CMOVP EBX, EDI 
MOV BL, -95 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
CMOVB RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], ESI 
XCHG DIL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -75 
CMOVNL RAX, RDX 
CMOVB RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
