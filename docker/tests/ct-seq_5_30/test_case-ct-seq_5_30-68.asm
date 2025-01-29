.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EBX 
CMOVNB AX, DX 
LEA AX, qword ptr [RDX + RDI] 
JMP .bb_main.1 
.bb_main.1:
XCHG BL, AL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
CMOVNP AX, CX 
MOVSX RCX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RBX] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RSI] 
ADD EAX, 56990616 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EDI 
SUB RCX, RAX 
CMOVNS RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
SUB ESI, -97 
AND RDI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
INC DIL 
SUB AL, DL 
IMUL AL 
ADD DIL, -120 # instrumentation
CMOVL BX, SI 
MOVZX ECX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 18 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -49 # instrumentation
CMOVZ EDX, ESI 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -25 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], SIL 
CMOVO DX, CX 
INC BX 
SBB CL, AL 
CMOVBE RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
