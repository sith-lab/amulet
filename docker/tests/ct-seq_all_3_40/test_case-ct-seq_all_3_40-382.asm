.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RAX, 983766230 
AND DIL, AL 
CMOVNO EAX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RBX] 
ADC AL, 127 
AND RDX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDX] 
CMP DX, -61 
ADC CX, CX 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], 1547226163 
SBB AX, -17971 
CMOVNS RAX, RCX 
SBB EDX, ECX 
IMUL EAX 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RCX] 
MOV ESI, -1838286016 
OR AL, 90 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], 21 
CLD  
MOVZX EDI, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], CX 
MOVZX ECX, DL 
XOR BX, AX 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD AX, -11445 
XOR RAX, 37 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
XADD AL, CL 
CMOVLE RSI, RDI 
BSWAP RAX 
DEC EDX 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
ADD CL, -74 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -63 
CMOVS EBX, EDI 
SETNB DL 
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
