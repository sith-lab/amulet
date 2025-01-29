.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDI] 
CLC  
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 110 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
ADD DIL, 109 # instrumentation
ADC EAX, EBX 
MOVSX EAX, DL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 95 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ECX 
ADC AL, 72 
CMOVNO SI, AX 
INC DIL 
MOVSX AX, CL 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 69 # instrumentation
CMOVBE RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RSI] 
LEA AX, qword ptr [RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 22 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
ADD RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RSI] 
LEA EDX, qword ptr [RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RSI] 
SUB CL, AL 
SUB AX, 15462 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -95 # instrumentation
CMOVLE AX, DX 
CMOVNB ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
