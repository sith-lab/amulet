.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RAX] 
ADC RAX, 112 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 6065 
ADD SIL, -4 
SBB EAX, 1232599987 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EDI 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVZX DI, AL 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
ADD SIL, 120 # instrumentation
CMOVNS RCX, RSI 
CMOVNS RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -26 
JRCXZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -3 
MUL DIL 
XCHG EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG SIL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], SI 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -29 
XCHG RBX, RAX 
DEC DL 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 121 
CMOVNO ECX, EDX 
CMOVNO EBX, EDI 
CMOVNB ECX, ECX 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -119 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
