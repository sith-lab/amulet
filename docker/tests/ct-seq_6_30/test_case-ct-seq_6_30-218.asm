.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
ADD DIL, -88 # instrumentation
ADC DIL, BL 
INC RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -89 
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
MOVZX EDI, AL 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 54 
IMUL ECX, EDX 
MOV ECX, 1444781539 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
IMUL DL 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RBX] 
DEC CL 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
CMOVO BX, DI 
XCHG AX, AX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RBX] 
MOV RDI, RDX 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 25 # instrumentation
CMOVNZ DI, SI 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
