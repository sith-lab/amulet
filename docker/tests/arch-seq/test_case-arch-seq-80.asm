.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RDX] 
STC  
ADD RAX, -1911339706 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 0 
CWDE  
MOV EBX, -10276981 
AND RSI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XADD AL, BL 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RBX] 
NEG RBX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -121 # instrumentation
CMOVNO DX, AX 
AND ESI, -96 
CMOVL EDI, EAX 
XADD DX, BX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RDX] 
SETNS BL 
ADD EDI, EDX 
TEST AL, 71 
CMOVNP RAX, RAX 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EDX 
XCHG DI, AX 
CBW  
SETZ DL 
CMP RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RSI 
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP ECX, 48 
ADD DL, 35 
CMOVNB CX, DX 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDI] 
CMP DI, -99 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 47 
SETNO DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
