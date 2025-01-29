.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RSI] 
SETNL SIL 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
ADD RAX, 439487100 
NOT CL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RAX] 
XADD RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EDX 
AND RSI, 0b1111111111111 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -30 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RSI] 
CMOVL EBX, ECX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST CX, -19601 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
TEST EAX, 1059205256 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RAX] 
ADD AX, -30652 
TEST BL, CL 
ADC SIL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RCX] 
INC EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -86 # instrumentation
CMOVNS DX, BX 
AND RCX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
XCHG BL, BL 
AND CL, 119 
CMOVO EAX, ECX 
CMOVNO DX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
SETB AL 
ADD RAX, 4886484 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], SIL 
AND AL, DL 
SETNB AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
