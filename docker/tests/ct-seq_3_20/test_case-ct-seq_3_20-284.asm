.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX BX, AL 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
MOVSX RDX, SI 
ADD EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RSI] 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RBX] 
CLD  
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -77 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDI] 
SUB ESI, -108 
ADD EAX, 1345255072 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ECX 
CMP AL, -115 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
