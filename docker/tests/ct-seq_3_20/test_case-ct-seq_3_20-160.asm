.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RSI] 
ADD SIL, SIL 
MOV ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 2032260162 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RSI] 
ADD SIL, -6 # instrumentation
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -21 
NEG CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
AND RSI, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
