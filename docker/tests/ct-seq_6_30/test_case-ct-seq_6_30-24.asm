.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RAX] 
MOV SI, 13891 
CWD  
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -50 
CMOVNBE EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 13 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
SBB DX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDX] 
SBB EDI, EBX 
SBB DX, 77 
JP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
MOV AL, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
CMOVNO ESI, EDX 
CMOVZ EDX, EDI 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
DEC EDX 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB CL, SIL 
CMOVB DI, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], DX 
JMP .bb_main.5 
.bb_main.5:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
