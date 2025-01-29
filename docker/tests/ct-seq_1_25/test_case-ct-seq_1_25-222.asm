.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -77 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 91 
STD  
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RSI] 
MUL RDI 
NEG AX 
CMOVBE EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RBX] 
INC CX 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
CMOVNZ RDI, RDX 
CMOVBE RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
CMOVNB DX, CX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 91 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 123 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -42 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDX] 
CWD  
MUL ECX 
CMOVO ESI, EBX 
XCHG EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
