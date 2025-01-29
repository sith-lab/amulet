.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -100 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
CMP RAX, 144093333 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], SI 
MOVZX ESI, DL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RDX 
MOVSX CX, SIL 
JMP .bb_main.1 
.bb_main.1:
MOV RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDI 
CMOVZ EDX, EDI 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -55 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDI] 
ADD DIL, 92 # instrumentation
CMOVBE DX, DX 
CMOVO RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EDX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -89 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
