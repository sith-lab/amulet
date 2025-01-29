.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RDX 
XCHG EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], SIL 
SBB AX, 11984 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], DX 
JMP .bb_main.2 
.bb_main.2:
MUL CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RAX] 
ADD RAX, -2012441693 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
CMOVP CX, SI 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RSI 
CMOVNS CX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RDI] 
MOV DL, 49 
MOVZX DX, DL 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 94 
XCHG CX, CX 
SUB BL, AL 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
SBB BL, 2 
ADD CL, DL 
AND RAX, 0b1111111111111 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
