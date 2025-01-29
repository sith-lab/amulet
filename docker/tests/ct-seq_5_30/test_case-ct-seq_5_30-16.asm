.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ECX 
DEC EAX 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], -118 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EDX 
NEG BL 
ADC AX, 31336 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB CX, -87 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
XCHG RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDI] 
CBW  
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 19 
MOVZX CX, AL 
CMOVNP RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 44 # instrumentation
MOVSX ESI, CX 
LEA ESI, qword ptr [RCX + RDI + 27637] 
CMOVZ DI, DX 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], 51 
XCHG RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RAX 
IMUL DX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
