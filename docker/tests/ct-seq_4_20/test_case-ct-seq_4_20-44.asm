.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -96 # instrumentation
SBB RDI, -87 
ADD AX, -98 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RDX 
CMOVNLE EBX, ESI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 46 # instrumentation
ADC EAX, 1527281214 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -48 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
MUL BL 
CMOVO RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RAX] 
CMOVNL RDX, RDI 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDX] 
SBB EDI, -24 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RBX] 
SUB RSI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
