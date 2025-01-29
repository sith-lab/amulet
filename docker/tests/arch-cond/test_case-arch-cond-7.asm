.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DIL 
CMOVNZ EBX, EBX 
XCHG CX, BX 
MOVZX RBX, CL 
XCHG CX, AX 
TEST BL, CL 
CMP CX, 111 
SETB AL 
CMOVP AX, DI 
OR ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], -64 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RCX] 
AND CL, CL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EAX 
CMP AL, 118 
AND DI, DX 
AND EBX, -106 
DEC RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 104 
CMOVNO ESI, ESI 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOV RCX, RDX 
XADD CX, AX 
OR RAX, 1012406064 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 4 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -77 
CMOVB RDX, RAX 
CMC  
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 105 # instrumentation
SBB SI, 29 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
DEC EDX 
XOR EDX, ESI 
XOR CL, 45 
SETNP AL 
OR AX, 2287 
CMP RBX, 61 
MOVSX RDX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
