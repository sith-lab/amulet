.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -125 # instrumentation
CMOVL RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], DI 
CMOVNP ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 25 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], CX 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RBX] 
ADD RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
MOV DX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], -78 
AND RAX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
