.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ECX, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], -100 
MOV ESI, -135166550 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDX 
SBB DIL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CBW  
JMP .bb_main.2 
.bb_main.2:
SUB DI, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RAX] 
CMP RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EDI 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ESI 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP BL, 79 
MOVZX RBX, SI 
AND RBX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RBX] 
CMP CL, AL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RSI 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 96 # instrumentation
CMOVL RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CMP EDI, ECX 
MOVZX RBX, DX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RAX 
MOVZX BX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
