.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], DI 
CMOVNS DI, AX 
ADD RAX, 979162714 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDX] 
ADD RAX, 1678328587 
AND RSI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RSI] 
ADD CX, -104 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
CMP DL, -104 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 110 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD BL, -14 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RBX] 
INC CL 
SBB RAX, -80 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -38 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
