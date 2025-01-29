.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RDX] 
INC CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EDI 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], CX 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
LEA BX, qword ptr [RBX + RSI + 59785] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RAX] 
CMP EBX, -21 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], SIL 
AND RSI, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RSI] 
CMOVNBE BX, BX 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
