.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ESI 
MOVZX RBX, DIL 
AND RAX, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RAX] 
ADD AX, -25 
MOVZX AX, DIL 
SETNBE CL 
XOR EBX, 76 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], BX 
CMP EAX, 442043518 
CMOVNS DI, CX 
CMPXCHG DL, CL 
AND RSI, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 42 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], DL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR ESI, ECX 
OR SIL, 81 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], 23 
MOVZX ESI, SI 
SETP AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RCX] 
AND SIL, SIL 
TEST EDI, -977677935 
SETBE AL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RAX 
SUB AL, 7 
INC BL 
MOV DL, -41 
CMPXCHG AL, CL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
ADC ECX, ESI 
IMUL DL 
INC EDI 
OR AX, -521 
MOV RCX, 666267554656026962 
MUL DL 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], 57 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 46 
CMOVO RBX, RCX 
INC DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
