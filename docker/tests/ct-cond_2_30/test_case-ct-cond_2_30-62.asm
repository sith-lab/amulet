.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
ADD DIL, 64 # instrumentation
ADC RAX, -1926495863 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 21 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], BX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI], 30 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -56 
SUB EAX, -1041523178 
ADC EBX, -62 
CMP AL, 53 
IMUL AL 
XCHG BX, AX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX RDI, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 120 
SBB RDI, 54 
CMOVNLE EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RBX] 
MOVSX RCX, DIL 
SUB BL, -42 
CMOVBE RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DX 
CMOVNB EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
ADD DIL, -91 # instrumentation
CMOVS RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RAX] 
ADD BL, 99 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
