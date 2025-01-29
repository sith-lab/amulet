.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
CBW  
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -2098658527 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
CMP AX, 32307 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RCX 
BSWAP EAX 
AND RDI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RSI] 
IMUL RCX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 51 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDX] 
ADD CL, -23 
AND RBX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDX], -78 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
