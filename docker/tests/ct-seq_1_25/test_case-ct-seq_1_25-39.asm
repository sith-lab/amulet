.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC SIL 
BSWAP RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RAX 
CMOVNZ RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], BX 
CBW  
AND RSI, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DI 
AND RBX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 53 
AND RDX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDX] 
CMC  
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RSI] 
MOVSX BX, DIL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
XCHG AX, AX 
CMOVP EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
MOVZX AX, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
