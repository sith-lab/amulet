.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RBX] 
IMUL DI, CX, 127 
ADC EBX, EDI 
ADD AL, 78 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 2 
CMOVLE RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -4 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -105 
MOVZX AX, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
SBB DIL, -47 
AND RDI, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RDI] 
ADD AL, -86 
IMUL EAX, EAX, 61 
MOV BL, 3 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
ADC RAX, 2105398700 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
CBW  
AND RCX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RCX] 
BSWAP RDX 
MOV DX, 30635 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
