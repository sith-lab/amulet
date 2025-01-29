.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RDI] 
CMOVS ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
CMOVNZ SI, DX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 0 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -81 # instrumentation
XCHG DL, BL 
SBB EDX, EDI 
SUB CL, -9 
AND RCX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 50 # instrumentation
STC  
CMOVP ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -25 
MOV EBX, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -71 
AND RAX, 0b1111111111111 # instrumentation
ADD SIL, 40 # instrumentation
CMOVBE EBX, EAX 
LAHF  
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -3 # instrumentation
MOVZX ESI, AL 
CMOVNS AX, SI 
CMOVBE SI, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDX] 
IMUL EBX, EDI, -38 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX], -81 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
