.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RSI] 
CMOVB RDX, RBX 
ADC SI, 20 
XCHG RAX, RAX 
MOVSX EBX, CL 
NEG ECX 
OR AX, -7494 
TEST SIL, -120 
TEST BL, CL 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RDX] 
MUL RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], 65 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], DIL 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
IMUL SI, SI 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
ADD SIL, -113 # instrumentation
MOVZX DI, BL 
ADC BL, 73 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RSI 
SETNLE CL 
CMOVL RAX, RDX 
ADC SIL, -20 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], 106 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
XOR RDX, -100 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], 68 
CMOVL EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RSI] 
ADC DI, -69 
STC  
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD AX, -104 
CMOVO RCX, RBX 
SUB SI, -90 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], ESI 
MOVZX SI, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
