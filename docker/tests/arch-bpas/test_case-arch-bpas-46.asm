.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST ECX, EBX 
SETL BL 
DEC BL 
OR EDX, 1 # instrumentation
SBB SIL, 106 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB CX, SI 
CMOVNBE RDI, RSI 
NEG EDI 
ADC EAX, -1945653924 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
XCHG SIL, AL 
AND RBX, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
MOV CX, DI 
SUB RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], CX 
TEST AX, -22767 
CMOVNZ RAX, RAX 
JRCXZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 19 
AND RBX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RBX] 
SUB RSI, RSI 
SUB EDI, EBX 
LAHF  
JMP .bb_main.4 
.bb_main.4:
OR SIL, 111 
ADC AL, 61 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], RAX 
CMOVNS SI, DX 
ADC SI, 36 
CMOVNZ RDI, RCX 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDI] 
XOR DX, CX 
CMOVNB ESI, EAX 
IMUL SI 
CMOVB ECX, EDX 
AND EAX, -347029344 
ADD CX, -99 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
