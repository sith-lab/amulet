.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
XOR RAX, -84 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -85 
NOP  
CMOVNLE EAX, EDI 
CMOVLE SI, CX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DIL 
AND DIL, AL 
IMUL EBX 
NEG BX 
XOR EDI, ECX 
ADD EDX, 67 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -96 # instrumentation
XCHG RCX, RAX 
SBB BL, AL 
INC RDX 
IMUL DI, DX 
ADD DIL, 62 # instrumentation
SETNS DL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RAX], SI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
CMOVB AX, BX 
IMUL AX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RCX] 
SUB DL, DL 
ADD RDX, RCX 
SETNO DL 
SBB RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EAX 
TEST CL, -5 
CMPXCHG DL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RAX] 
OR RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
INC BL 
XOR EAX, -100 
MUL RAX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDI 
SETLE DIL 
AND RCX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
