.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 48 
CMOVNS RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RBX] 
CDQ  
ADC BX, 97 
AND RDI, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDI] 
CMOVO AX, AX 
MOVZX RAX, DL 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
CMOVNB AX, DX 
ADC RAX, -124392096 
SUB RSI, RCX 
CMOVL RDX, RCX 
JMP .bb_main.2 
.bb_main.2:
MOVZX ECX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDX] 
CMOVNLE RDI, RAX 
XCHG EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, AL 
MOV BL, 38 
ADD EAX, 81 
JMP .bb_main.4 
.bb_main.4:
CMP DL, CL 
CMP SIL, 65 
CMOVNBE RAX, RDI 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RSI 
BSWAP RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX], 108 
ADD SIL, 73 # instrumentation
CMOVL CX, SI 
MOVZX RBX, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
