.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
MOV BL, -119 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 26 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -54 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOV AL, -28 
CMP RAX, 887073686 
MOVZX EDI, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
CMOVL ESI, ECX 
SBB DIL, 114 
JMP .bb_main.2 
.bb_main.2:
NEG RSI 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
ADC RAX, -414102215 
STD  
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RSI] 
ADD AX, 30366 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 19 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX], 50 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -20 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], AX 
CMOVZ ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 65 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -921056280 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
