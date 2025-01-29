.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -34 # instrumentation
CMOVNP ESI, EDX 
CMOVL EDX, EDX 
AND RDX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDX] 
IMUL EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RDX 
CMOVNP DX, CX 
TEST SIL, 13 
AND RSI, 35 
ADD EAX, -2005801650 
CMOVB EDI, ECX 
XOR RSI, -9 
SETNZ AL 
MOV DL, DL 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], BX 
CMOVNS RSI, RBX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV CX, 4614 
MOV DX, DX 
CMP AX, -25481 
CLC  
AND RCX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RSI] 
CMP RBX, RSI 
SAHF  
AND SIL, 32 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RBX] 
MOVZX DI, DIL 
AND RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], 29 
SUB DX, 81 
INC RDI 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -11 # instrumentation
CMOVS RBX, RDI 
ADD RAX, RCX 
OR RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RCX] 
MOVZX EAX, AX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 50 
SETNZ AL 
XOR BX, 109 
CMOVB RCX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
