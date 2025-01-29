.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 98 
MOVZX RBX, AL 
INC BL 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RCX] 
MOV ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RBX] 
SUB BL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EAX 
IMUL RAX, RDX, -87 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], CX 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
