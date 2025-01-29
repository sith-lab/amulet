.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RBX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], DI 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
ADC RAX, 1986616371 
ADD EAX, 1247835021 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RDX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -127 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 85 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RAX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 0 
ADC AX, -2783 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DIL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RAX] 
ADD RAX, 21 
CMOVLE RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
MOVZX EDI, CL 
LEA RSI, qword ptr [RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDX] 
IMUL RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
