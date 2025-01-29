.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BL, DL 
CMP RDX, -31 
CMOVNBE RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
XCHG EDX, EAX 
MUL RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -101 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RBX 
CMP AL, 14 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 69 
IMUL CL 
ADD SIL, -113 # instrumentation
CMOVNP RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], AX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 8 
CMOVNB EDI, EDX 
SBB RBX, 39 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RSI] 
CMOVL EAX, EDI 
CMP AL, 79 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 48 
ADD AL, 54 
CMOVNLE SI, SI 
ADD RAX, 920526872 
SBB RDX, RDX 
CMOVNB RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
