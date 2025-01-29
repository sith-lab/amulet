.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RCX] 
MOVZX EDX, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDX] 
ADC RSI, -31 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -71 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -54 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 13 
AND RCX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RCX] 
CMP AL, 63 
SUB RAX, -1288841547 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], -75 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DIL 
ADC AL, -95 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDX] 
ADD EDI, ESI 
MOV EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 71 
ADD EAX, 1266295885 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
