.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 55 # instrumentation
CMOVNLE RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
LOOP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ESI 
INC SIL 
MOVZX SI, DL 
MOVZX EAX, SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 109 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RCX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP DX, -46 
LEA RSI, qword ptr [RCX + RDX + 17076] 
CMOVB CX, DI 
MOV EDI, -182570563 
AND RSI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP CL, CL 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -99 
CMOVNS CX, BX 
CMOVNLE RAX, RDI 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 24 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
CMP DL, AL 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -25 
CMOVNS EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
