.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, -1101275278 
CBW  
NOT RDX 
CMPXCHG RAX, RDI 
SUB CL, DL 
SETNL DIL 
MOVSX RDX, SI 
SUB BL, CL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 66 # instrumentation
SETP AL 
CMOVNS SI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EAX 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
CMOVNO RAX, RAX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NOT EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], EDX 
AND AL, 41 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], EAX 
MOVZX RDI, DX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], AL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
SETNP SIL 
ADD SI, 77 
ADC RAX, -61 
CMOVP RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -17 
SBB RAX, -42 
SETNBE BL 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB RDX, RSI 
SBB RDI, -41 
CMOVL DI, SI 
SBB RSI, RAX 
CMPXCHG BX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RBX] 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CLC  
DEC RDI 
AND RCX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RAX] 
MOV EAX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
