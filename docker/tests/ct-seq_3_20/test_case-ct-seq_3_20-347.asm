.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 14 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ECX 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EBX 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
MOVZX EBX, AL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -39 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RBX 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
