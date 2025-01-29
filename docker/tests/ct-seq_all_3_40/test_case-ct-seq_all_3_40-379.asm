.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
CMP RAX, 212395407 
IMUL RDI, RBX, -107 
AND RSI, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RSI] 
CMOVB RBX, RDI 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
NEG BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
ADD CL, DL 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], -1231148047 
CMP RAX, -1716625517 
NEG EBX 
CMOVNB RCX, RDI 
CMP DX, -26 
SBB SIL, -48 
MOV RSI, RSI 
SETP AL 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RCX 
SETZ CL 
SBB EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
SETLE BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -121 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CBW  
TEST DIL, DL 
CMPXCHG RAX, RDI 
XADD EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], CX 
SETS AL 
STD  
CMP DL, DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -55 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDX 
CMP DL, DL 
AND RSI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RSI] 
XCHG DL, CL 
CLD  
DEC RCX 
CMOVLE RAX, RCX 
OR AL, 102 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
