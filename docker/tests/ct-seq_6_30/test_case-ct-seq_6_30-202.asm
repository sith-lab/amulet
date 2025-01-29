.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RAX, RSI 
IMUL EAX 
ADD DIL, -105 # instrumentation
CMOVS RDI, RSI 
JNZ .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD DIL, 21 # instrumentation
ADC BL, 70 
CWD  
IMUL RSI, RSI, -19 
ADD SIL, 4 # instrumentation
MOVSX RDI, AX 
CMOVNLE DI, BX 
AND RBX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -42 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EBX 
BSWAP EDI 
ADC DIL, -20 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
CMOVLE EDX, EDI 
CMOVNB CX, BX 
CMOVB ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RCX] 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RAX 
IMUL BX, DI 
MOV CL, 13 
MOVSX EAX, AX 
ADD SIL, 1 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -3 # instrumentation
CMC  
MOVZX RBX, DL 
MOV ECX, -168327965 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
