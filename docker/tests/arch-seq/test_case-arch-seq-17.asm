.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RCX] 
SBB DX, DI 
CMOVNO EDI, EAX 
CMP BX, AX 
LEA ESI, qword ptr [RAX + RDI + 32376] 
AND RCX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RCX] 
XCHG AX, AX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NEG DL 
AND RSI, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RSI] 
CMOVNB BX, BX 
AND RDI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDI], -19 
OR AX, 12124 
MUL CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], CL 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], DI 
AND RSI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD DIL, -8 # instrumentation
SETB DL 
ADD EAX, 1448499970 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], AL 
MOVZX RDI, AL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RAX 
SUB AL, -108 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RBX 
SUB RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RCX] 
SETO CL 
CMOVNL RAX, RDI 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RAX], RAX 
CMC  
XOR SIL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], -37 
MOVSX EDX, DIL 
ADD SIL, -92 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RSI] 
NOP  
MOVSX RAX, BX 
CMOVS DI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
