.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RAX], ESI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
CMPXCHG CX, CX 
XOR RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
OR DL, 22 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
ADD SIL, -122 # instrumentation
SETP SIL 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EBX 
AND RDI, 0b1111111111111 # instrumentation
OR EDI, dword ptr [R14 + RDI] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 114 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
TEST EAX, -1515253019 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
AND AX, DI 
ADD DL, CL 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 77 
DEC EAX 
SETNLE BL 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ECX 
AND CL, BL 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], 15053 
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
XOR CL, -111 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], BL 
DEC RSI 
MOVZX RCX, BL 
ADC CL, -51 
AND BL, AL 
MOV RBX, 3431053839511038541 
AND EAX, 751854702 
SBB EAX, -1194178578 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
MUL RAX 
ADD RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
