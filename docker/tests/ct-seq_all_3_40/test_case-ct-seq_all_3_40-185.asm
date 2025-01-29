.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB SIL, 115 
TEST RAX, -2082310102 
MOVZX EAX, AX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
CMOVNZ RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDX] 
ADD RDX, -35 
IMUL RAX 
AND RCX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], 48 
XOR DL, -117 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], 100 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -120 # instrumentation
SETNLE BL 
NOT BL 
CMP EAX, 38 
SETNLE DL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], SI 
CMOVS SI, DI 
IMUL AX 
AND RAX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RAX] 
ADC AL, -2 
AND RSI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], BL 
CMOVNB EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
NEG AL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RDX] 
CMOVB EDX, EBX 
MOVZX AX, CL 
XADD SI, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], -58 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
STD  
SBB DIL, -23 
AND DX, 84 
ADD DL, DL 
MOV DX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
