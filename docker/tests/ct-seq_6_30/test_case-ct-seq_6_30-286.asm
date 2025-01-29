.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RDX, -8224649615718934859 
SUB AX, -3809 
MOV CX, BX 
IMUL DI, SI, -79 
ADD DIL, 103 # instrumentation
CMOVL SI, AX 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
ADD SIL, 123 # instrumentation
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 70 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -69 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
CMOVNBE EBX, EDI 
SBB DL, 53 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDX 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 75 
IMUL ECX, EAX, 116 
ADD SIL, -1 # instrumentation
CMOVLE EAX, EAX 
ADC EAX, -1310326781 
MOVZX EDI, AL 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
ADD EAX, -2101683503 
MOV DL, 111 
SUB RAX, -411513045 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RBX] 
CMP AL, 20 
MOV RDI, 3253186295089952434 
OR SI, 0b1000000000000000 # instrumentation
BSF DX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
