.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR BX, -102 
SBB BL, DL 
MOVSX EAX, AL 
LEA EBX, qword ptr [RSI + RCX] 
ADC AX, -27472 
CMOVNLE ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], BL 
JMP .bb_main.1 
.bb_main.1:
XOR RBX, 55 
CMOVNO EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RSI] 
SBB BL, SIL 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
NEG DIL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
JS .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RDI] 
CMOVNS RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], DX 
NOT RBX 
JRCXZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, 118 # instrumentation
SETNLE CL 
TEST DX, CX 
OR AL, CL 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], RAX 
MOVZX EDX, AL 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RAX] 
CMOVS ESI, EDI 
CMPXCHG SIL, DL 
AND RBX, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RBX] 
AND SIL, CL 
XCHG DX, AX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], BX 
CMPXCHG EAX, ECX 
DEC RCX 
CMOVLE RSI, RAX 
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RDI 
CMP CL, -23 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
