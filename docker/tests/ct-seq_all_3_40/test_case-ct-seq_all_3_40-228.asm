.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR CX, -106 
SBB EAX, -1916477208 
CMP AL, 8 
SETO CL 
SUB RAX, 58 
CMOVB EBX, EDI 
TEST AL, -18 
CMOVBE DX, SI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
OR EAX, -2119889674 
SETNO DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
CMOVNB SI, DX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], 64 
NOT CL 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
CMOVNO DX, AX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RSI] 
MUL EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], BL 
SETNLE AL 
BSWAP RSI 
NEG DX 
CWD  
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
SBB AL, -14 
NOT DL 
XCHG RDI, RAX 
MOV BL, 68 
MOVSX ESI, DL 
AND RCX, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RCX] 
MOVZX RSI, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
