.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BX, 0b1000000000000000 # instrumentation
BSF SI, BX 
MOVZX RBX, SI 
SUB BL, 104 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
SBB AL, 66 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
CMP SIL, -75 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RAX] 
CLD  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -3 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RBX] 
SUB EAX, 1308908340 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
SBB AL, 7 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDI] 
CMOVP RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RBX] 
SUB BX, -108 
MOVZX ESI, BL 
ADC DIL, AL 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDX] 
CMOVNBE RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
ADC AX, -21864 
CMOVL EDI, EBX 
STD  
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
