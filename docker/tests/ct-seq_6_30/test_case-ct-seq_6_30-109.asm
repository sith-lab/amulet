.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RBX] 
SUB AX, 433 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NEG EBX 
SUB DL, AL 
CMP ESI, -29 
AND RCX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RCX] 
CMOVNBE BX, CX 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDI] 
ADD SIL, 21 # instrumentation
CMOVNZ RSI, RDX 
IMUL RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], 3 
SUB SIL, -8 
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RAX] 
ADD DIL, -14 # instrumentation
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
SBB RCX, 3 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 47 
MOVSX EDX, CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RAX] 
ADD EDX, 14 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI], -114 
SBB ECX, EDX 
MOV ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
