.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -59 # instrumentation
MOV RAX, -3918897262236876913 
CMC  
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RSI] 
ADD DIL, -86 # instrumentation
SETNS CL 
CMOVB EAX, ECX 
XOR RAX, -1950367163 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RSI] 
AND SI, 15 
XOR EAX, -1552276677 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RBX 
NEG BL 
MOV BL, 2 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RAX] 
SETNB BL 
SBB RAX, -1167535296 
AND RDX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], 1895539258 
OR CX, 66 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], -18 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RAX] 
CMOVNLE RBX, RDI 
BSWAP RDI 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 41 # instrumentation
CMOVBE EDI, EDX 
CLC  
MOVZX ESI, DIL 
SUB EDI, -32 
CMOVNZ EDX, EDX 
XADD BL, BL 
INC CL 
AND CL, DL 
DEC CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 8 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
MUL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
