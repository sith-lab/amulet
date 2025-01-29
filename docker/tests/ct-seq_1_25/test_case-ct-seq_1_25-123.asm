.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], DX 
MOV RBX, 4462521509146479772 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
ADD DIL, -41 # instrumentation
CMOVL RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
CBW  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
SUB DI, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -71 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
SUB BL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -22 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], SIL 
CMP CL, CL 
SBB BL, -119 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDI 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
