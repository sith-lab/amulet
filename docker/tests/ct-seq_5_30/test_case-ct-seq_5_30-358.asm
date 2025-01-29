.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -128 # instrumentation
CMOVNO RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RAX] 
SBB EAX, 105 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
MOVSX EDX, SI 
ADC SIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -126 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
CMOVP EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RBX] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RSI, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EBX 
MOVSX BX, DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 15 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -34 
IMUL EBX, EAX 
ADD EAX, 509712567 
ADC EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
