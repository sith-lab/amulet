.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR CX, -17 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 1 
SETNBE AL 
CMOVO RSI, RSI 
CMP DI, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -19 
LEA RDX, qword ptr [RCX + RDI + 45995] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDX] 
NEG CX 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 85 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 44 # instrumentation
ADC RCX, 30 
CMOVNZ DI, SI 
ADC EAX, 86 
AND RDI, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RDI] 
SETLE SIL 
CMOVL BX, SI 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
MOVSX EAX, CL 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], EDX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
IMUL ECX, EDI 
XADD DX, SI 
AND RBX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RBX] 
MOVZX ESI, DL 
CMOVP ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RAX] 
CMOVNS AX, DI 
SETNBE CL 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND AX, 1464 
AND RDX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
MOVSX EAX, AX 
MOV BX, -10402 
SETNZ CL 
CMPXCHG CL, DIL 
AND RDX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
