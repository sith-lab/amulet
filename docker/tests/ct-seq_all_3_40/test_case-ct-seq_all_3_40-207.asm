.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD ESI, -68 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RBX] 
NEG AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RDI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDI], 96 
ADD DIL, 43 # instrumentation
SETO DL 
CMOVNP BX, BX 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EDI 
ADC AL, -75 
ADC AL, AL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], AL 
MOVZX EAX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EDI 
INC RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
MOV CX, 12578 
CMOVL EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EBX 
LEA RDX, qword ptr [RBX] 
CMOVNZ EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RDX] 
SUB DL, BL 
CMOVNB RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
OR BL, 46 
SETNB DL 
IMUL AL 
OR CX, DI 
ADC AX, 15195 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DL, 83 
MOV BL, -127 
NEG DI 
TEST RAX, 1544881873 
SBB DL, 28 
MOVZX RSI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RSI] 
SETP CL 
AND RBX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
