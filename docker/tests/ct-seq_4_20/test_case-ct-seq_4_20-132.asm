.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], DI 
MOVZX EAX, DI 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -95 
AND RAX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -74 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RAX] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], CX 
AND RDX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
