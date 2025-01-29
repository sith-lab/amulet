.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -64 # instrumentation
SBB EAX, -875609925 
CMOVP DX, DI 
CMP EAX, -1644999144 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RSI] 
CMOVB BX, DX 
AND RDI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RDI] 
SETNLE CL 
AND RDI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDI] 
CMOVNP EDI, ESI 
MOVSX DI, CL 
MOVZX RAX, DI 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RAX] 
TEST RCX, RDX 
SUB EAX, 74 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], BL 
XOR DL, 30 
SETNL AL 
MOVSX ESI, AL 
CMOVB EBX, EDX 
ADC DL, AL 
AND RAX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RBX 
SETO SIL 
CLC  
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 99 # instrumentation
CMOVNS RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDI] 
XCHG CX, AX 
SETNLE CL 
INC RAX 
IMUL RDX, RDX, 109 
IMUL AL 
CMOVNO RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
OR BL, AL 
INC SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
