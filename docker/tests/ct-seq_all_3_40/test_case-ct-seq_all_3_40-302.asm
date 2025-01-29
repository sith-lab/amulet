.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
INC RSI 
AND BL, 101 
AND RBX, 0b1111111111111 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RCX] 
CMP DL, -83 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -111 
SETNO BL 
OR CL, CL 
NOT BX 
MOVZX RCX, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -68 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL EDI 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -55 
BSWAP RDI 
AND RBX, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RBX] 
CMOVZ EDX, ESI 
SETNLE AL 
XOR ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
CMOVNLE ECX, EDX 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
INC RSI 
MOVSX RAX, DIL 
OR DL, -74 
XOR DIL, AL 
SUB ESI, 37 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 79 
BSWAP RDI 
XOR EDI, 32 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RAX] 
ADC AX, 14714 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
OR SI, 0b1000000000000000 # instrumentation
BSF CX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RBX] 
CMOVP BX, BX 
XCHG DL, AL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
