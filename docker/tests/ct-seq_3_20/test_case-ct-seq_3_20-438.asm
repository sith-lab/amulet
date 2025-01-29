.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX] 
ADD SIL, -41 # instrumentation
CMOVNZ ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RCX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVSX SI, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 1978285586 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX] 
MOV DI, 27604 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
CMP RCX, -29 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DI 
NEG DL 
NEG DIL 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
