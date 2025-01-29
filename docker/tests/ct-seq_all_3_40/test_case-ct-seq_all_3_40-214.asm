.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RAX] 
TEST BL, DL 
MOV AL, -79 
CMOVNZ RDX, RBX 
SUB RAX, 1971671441 
OR BX, SI 
MOVZX SI, DL 
CMP DX, 43 
MOVZX EBX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 104 
SETO CL 
CMP AX, 24194 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
NEG AX 
MOV EAX, EAX 
SETNS AL 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RBX 
MOVZX EDX, CL 
MUL AL 
ADD SIL, 32 # instrumentation
CMOVNS RBX, RBX 
ADD AX, 19897 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RBX 
MOV ECX, EDI 
CMOVP EAX, EDI 
AND DIL, -44 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB RDX, 123 
SETNS DL 
AND RSI, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RSI] 
MOVSX EBX, CL 
CMOVNLE RSI, RSI 
STC  
XADD BX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], AX 
TEST BL, DL 
AND BL, BL 
INC EBX 
IMUL EBX 
ADC AX, 30461 
XCHG DI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
