.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RDI, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 32 # instrumentation
CLC  
CMOVL ECX, EDI 
MOV BL, CL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 31 
CMOVO EDX, ECX 
JNZ .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, -7 # instrumentation
CWDE  
ADC DL, CL 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
SBB BX, 9 
CMOVNS RSI, RAX 
JNZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EAX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RSI 
CMOVO ECX, ESI 
ADD SIL, 47 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 36 # instrumentation
SBB RAX, -242814813 
ADC DIL, -75 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
CMP RSI, 95 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EDI 
CMP DIL, SIL 
MOVZX DX, BL 
MOVSX BX, BL 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RSI] 
CMP AL, -40 
MOV CL, -102 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
