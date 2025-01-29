.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA SI, qword ptr [RSI + RAX] 
CMP BL, DL 
MOVSX DI, BL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -114 
MOVSX SI, BL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], BX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RAX] 
SBB DL, -10 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DIL 
XCHG RAX, RAX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
DEC AL 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDI] 
MOVZX RAX, BX 
SUB RAX, -1855460579 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RDX 
INC DX 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOV RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 125 
AND RBX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RBX] 
ADD RAX, -94 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDX] 
SBB RAX, 1082563247 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -117 
CMOVL RBX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
