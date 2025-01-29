.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RBX] 
MOVSX ECX, BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
CDQ  
SBB SIL, 0 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -73 
MOV RDX, 1947897907014112508 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
MOVSX AX, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
INC CL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDX] 
ADC RCX, -127 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
ADD RBX, 111 
STC  
MOV AL, AL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RAX] 
ADD SIL, 20 # instrumentation
LAHF  
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -51 
ADC RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDI 
ADD RBX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RCX] 
CMOVL EDI, EBX 
CMP DL, -23 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
