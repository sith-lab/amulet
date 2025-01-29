.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD DIL, 12 # instrumentation
CMOVB BX, word ptr [R14 + RDI] 
LAHF  
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -49 
MOVSX EDX, DX 
XCHG BX, AX 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
MOVSX BX, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ECX 
IMUL RAX 
CWD  
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX], -120 
MOV SI, 18859 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 4 
ADD EAX, 1647903879 
JMP .bb_main.3 
.bb_main.3:
CMP DIL, 74 
CMOVB RDI, RCX 
CMOVLE DX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 31 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -39 # instrumentation
ADC RAX, -103433372 
CLC  
CMOVL DI, BX 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RDX 
CMP RBX, RCX 
MOVZX SI, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 46 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
