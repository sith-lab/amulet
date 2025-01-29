.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
CMOVNB CX, CX 
TEST DL, SIL 
CMOVS RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DI 
STD  
CMOVNLE ECX, ECX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RSI 
MUL RBX 
SETNB CL 
AND RAX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RAX] 
AND ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], -127 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
INC DI 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], -5 
ADD RAX, 464165202 
AND RSI, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RSI] 
CMOVNZ AX, DI 
CMOVS SI, CX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], 77 
CLC  
NOT AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 68 
CMP AL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], BX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RDI 
CMOVLE RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDX] 
MUL CX 
SBB CL, BL 
AND RAX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], -3 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], 1040891876 
MOVSX EDI, DL 
CMOVZ RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
