.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RAX, -1222591557 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RAX], -49 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 27 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
MOV BX, CX 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -63 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], SIL 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], CX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DL, BL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
AND RDX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDX] 
CMOVNO RSI, RSI 
CMOVNP ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
SUB RAX, -503188189 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
