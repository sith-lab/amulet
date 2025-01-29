.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, 1196241099 
NOT RAX 
STD  
TEST CL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 4 
CDQ  
CMOVP DI, CX 
CMP CL, AL 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
TEST EAX, -1855766704 
CMOVNP RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
MOVSX EDX, BL 
CMP SI, 42 
AND RAX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RAX], -48 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -115 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], -111 
SBB ECX, EDX 
CMOVNS CX, BX 
ADC RCX, 103 
CMOVZ AX, AX 
IMUL RAX, RBX 
ADD SIL, -88 # instrumentation
CMOVNLE RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RAX], ECX 
AND RDI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RDX] 
XADD BL, BL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
CMOVBE RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RDX 
MOV DX, BX 
ADD CX, -103 
ADD EAX, -801316173 
OR EBX, EBX 
OR AL, BL 
TEST EBX, EDX 
SETO DL 
MOVZX SI, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
