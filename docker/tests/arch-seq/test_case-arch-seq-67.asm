.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -61 # instrumentation
SBB EDX, 86 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDX 
ADD EAX, 76965039 
CMOVL DI, BX 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND AL, 82 
SETP DL 
SBB BX, -67 
MOVZX SI, AL 
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR DL, 115 
CMOVB EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RAX] 
ADD SIL, -68 # instrumentation
MOV BX, CX 
SBB BL, 21 
MOV RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
ADD DIL, -105 # instrumentation
SETLE AL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDX] 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR DIL, -110 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], 85 
CMP CL, DL 
ADC BL, AL 
SBB EAX, -568584023 
ADC AL, -128 
XOR AL, 75 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], -12 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], -57051866 
CMOVB RSI, RDI 
JMP .bb_main.4 
.bb_main.4:
CMPXCHG EDX, EDI 
MOVSX SI, DL 
ADC RAX, 104207109 
AND RDX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDX] 
SETNL AL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 8 
SETLE BL 
ADC RDX, -116 
CMPXCHG DL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
