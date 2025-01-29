.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 54 # instrumentation
MOVSX EAX, CL 
CMOVL SI, BX 
LOOPE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 54 
CMOVB CX, SI 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
CMOVS RDI, RAX 
CMOVNB ECX, EAX 
CMOVP DI, SI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
CMOVNZ RSI, RSI 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 122 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ESI 
SUB DL, CL 
CMP CL, BL 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDI] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RCX] 
ADD AX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
ADD DIL, 35 # instrumentation
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], SIL 
MOVZX RAX, DX 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DX 
MUL SIL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
