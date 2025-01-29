.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RAX] 
SUB RAX, -1120978409 
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
CMOVNO AX, BX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RSI] 
SBB CL, AL 
CMOVB RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RAX] 
MOV DX, -1511 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
