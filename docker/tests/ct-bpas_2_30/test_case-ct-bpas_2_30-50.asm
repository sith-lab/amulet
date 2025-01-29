.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
SBB RAX, -1626685395 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RBX] 
ADC AX, -3419 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RSI] 
ADD SI, CX 
STD  
CMOVNB EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RCX] 
CWD  
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RSI] 
XCHG RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
CMOVL ECX, EBX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -112 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
CMOVL BX, CX 
CMOVLE RSI, RBX 
MUL AL 
MOVSX EDI, BL 
AND RBX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RBX] 
MOV DL, AL 
ADC RAX, -57 
CMOVB RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
MUL SIL 
ADD DIL, -65 # instrumentation
CMOVZ ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDX] 
ADC AL, 91 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
