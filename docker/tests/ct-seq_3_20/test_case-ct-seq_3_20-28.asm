.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 126 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
CMOVNZ ECX, EDX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
INC CL 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], AL 
SBB EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 24 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ESI 
LEA RSI, qword ptr [RAX + RSI + 7949] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
