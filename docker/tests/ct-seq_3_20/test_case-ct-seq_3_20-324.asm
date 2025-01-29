.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DX 
AND RSI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], BX 
MOV RCX, -1238921209822366950 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], BX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 54 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], -69 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 58 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 18 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], ECX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 95 
CMOVNB EDX, EBX 
NEG AL 
ADD EBX, -20 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
