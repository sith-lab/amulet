.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, 27 # instrumentation
CMOVNP EDI, EBX 
CMP RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DX 
MOVZX EDI, CL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -30 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -68 
MOVZX CX, AL 
MOV EDI, 336722891 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], ESI 
CMOVNS EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -16 
MOVZX ESI, DL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -104 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
CMOVO RBX, RDX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RSI] 
CMP RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
ADC CL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EAX 
SBB RDI, 44 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ECX 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX], 56 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], 57 
ADD AX, -14112 
IMUL EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
