.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 110 # instrumentation
MOVZX ESI, BL 
NOT RDI 
CMOVZ AX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -79 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], SIL 
XOR BL, CL 
DEC ECX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 99 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 52 # instrumentation
SETS DL 
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], SIL 
XCHG CL, CL 
ADD CL, CL 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
SETL CL 
ADD AL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RSI 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], BL 
CMOVB DI, SI 
CMOVNBE DX, DX 
OR BL, SIL 
CMP CL, AL 
BSWAP RDI 
NOP  
TEST SIL, 30 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -10 # instrumentation
ADC BL, CL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 30 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 103 
LEA ECX, qword ptr [RDX + RCX + 45123] 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], -128 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], CL 
ADC AL, SIL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDI] 
ADC AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
