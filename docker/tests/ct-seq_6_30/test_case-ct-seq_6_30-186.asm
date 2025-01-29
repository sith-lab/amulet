.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 123 # instrumentation
SBB EAX, -111 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDI] 
CMOVNLE ECX, EDI 
ADD RAX, -1712011983 
JMP .bb_main.1 
.bb_main.1:
CMP DIL, 74 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDI] 
NEG AX 
ADD ECX, EDX 
MOVZX RDI, DX 
MOVZX CX, AL 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], DX 
ADC BL, CL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], SIL 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -60 
CMOVBE EBX, EDX 
CMC  
JNLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, -40 # instrumentation
CMOVP RDI, RAX 
CMOVS EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
NEG BL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDI] 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD DIL, 85 # instrumentation
CMOVS BX, DX 
AND RSI, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
