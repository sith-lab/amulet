.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -85 # instrumentation
SBB AX, 31175 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DIL 
INC DIL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
ADD RDI, RAX 
ADC ESI, -38 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 60 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], BX 
IMUL EDI 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EAX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
