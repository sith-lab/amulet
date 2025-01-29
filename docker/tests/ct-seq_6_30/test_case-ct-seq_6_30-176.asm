.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DX, 1 # instrumentation
CMOVO RDX, RCX 
CMP EDI, EAX 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], DX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RAX] 
NEG CX 
CMOVNLE BX, SI 
CMOVZ AX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RDI] 
ADC DL, BL 
JMP .bb_main.2 
.bb_main.2:
MOV CL, 89 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDI 
CMOVNB CX, DI 
CLD  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -114 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RSI] 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -1 # instrumentation
SBB ESI, ESI 
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
ADD DIL, 95 # instrumentation
MOVZX EDI, CL 
ADC DIL, SIL 
SBB AL, AL 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RCX], -69 
XCHG DX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], CL 
XCHG AL, BL 
NEG EAX 
MOVZX RCX, DL 
AND RDI, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
