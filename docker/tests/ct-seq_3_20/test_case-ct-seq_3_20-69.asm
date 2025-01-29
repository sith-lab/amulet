.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], BL 
SBB ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], AX 
XCHG AL, DIL 
JMP .bb_main.1 
.bb_main.1:
DEC RAX 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -30 
ADC EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 58 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RBX 
XCHG SI, AX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX], 4 
ADD CL, 72 
ADC AX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
