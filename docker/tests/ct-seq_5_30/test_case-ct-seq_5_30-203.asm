.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA RDI, qword ptr [RDI + RCX + 52159] 
SUB ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 21 
NEG EDX 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 50 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], AX 
CMOVNO EDX, EDI 
CMOVS AX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -16 # instrumentation
CMOVNBE RAX, RAX 
CMOVNS EDX, ESI 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RAX] 
MUL ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
CMOVP RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -91 
CMP ECX, EBX 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ECX 
MOVZX RDX, DIL 
SBB ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -64 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 24 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 105 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
