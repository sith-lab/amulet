.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AL, 97 
SUB SIL, 66 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DX 
ADC EBX, -55 
ADD RDX, RDI 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RBX] 
BSWAP RDI 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
XCHG DI, SI 
MOVSX RAX, SIL 
JO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 48 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], AL 
SBB EDI, 10 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
ADD SIL, 82 # instrumentation
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 61 # instrumentation
CMOVNZ RCX, RSI 
CMOVNS RSI, RSI 
SBB RDX, 55 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -26 
MOVZX ECX, SI 
CMOVNB EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RCX] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD DIL, 90 # instrumentation
SBB RCX, RCX 
ADC BL, AL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RCX] 
ADD ESI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
