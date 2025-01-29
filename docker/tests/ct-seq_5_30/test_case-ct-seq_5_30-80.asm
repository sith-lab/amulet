.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -29 # instrumentation
BSWAP RDX 
SBB AL, -96 
CMOVB RBX, RBX 
MOV RSI, 1245575765902157650 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDI] 
MOV RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DIL 
SBB AL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RAX] 
SBB AL, 77 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
SBB EDI, EAX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV DL, AL 
MOV BL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RBX 
CMP AL, 56 
MOVZX RCX, BX 
INC BL 
MOVSX ECX, BL 
JMP .bb_main.3 
.bb_main.3:
MOVZX BX, AL 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
CLD  
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
INC AX 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD CL, CL 
NEG AL 
AND RAX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RAX] 
CDQ  
MUL AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
