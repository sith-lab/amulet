.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EAX, -281682997 
MOVZX EDX, AL 
SUB DIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], AL 
STC  
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
CMP DIL, -35 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DIL 
TEST EDI, -493496463 
NEG RAX 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RSI 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
CBW  
AND SIL, 102 
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
MOVZX ECX, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RBX] 
IMUL EBX, ESI, 106 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], 21 
XOR AX, -9445 
SETNO AL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB AX, -16243 
SETNL BL 
CMOVNP EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RCX] 
ADC AX, -30012 
IMUL RDI 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EAX 
SETLE AL 
MOVZX EBX, BL 
NOT DI 
CMOVNZ EDX, ECX 
IMUL EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
CDQ  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
