.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL AL 
TEST BX, -20863 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDI] 
CMP EDI, EDX 
XCHG DL, DL 
BSWAP RBX 
MOVSX EDI, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RBX] 
CMOVNS DX, DI 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], DX 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], DX 
XADD RDI, RAX 
SBB DI, -53 
IMUL AL 
CMOVNO EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RCX] 
ADD DIL, 85 # instrumentation
SETB DL 
CMP SI, -49 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX], -40 
ADC AL, 25 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RDI 
ADD EAX, 216602551 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], -125 
XADD EDI, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDX] 
OR EAX, -58 
CMOVNLE RCX, RDX 
SBB CX, DI 
SUB EAX, 308455083 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RSI] 
XOR AL, 105 
SETNB BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
