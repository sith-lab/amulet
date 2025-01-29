.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
ADC AX, -23564 
SUB CL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RDX] 
ADC RDI, RBX 
CMOVNL RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
SUB SIL, 81 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -107 # instrumentation
SBB AX, -5652 
INC RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDI] 
SBB EAX, -706460872 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RAX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDI] 
ADD AX, -13806 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
CMP CL, -106 
ADD EAX, 293842098 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
