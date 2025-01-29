.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 117 # instrumentation
CMOVBE RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDI] 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 65 # instrumentation
CMOVNBE RCX, RSI 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 115 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -92 
CMOVNS RDX, RCX 
MOVSX RAX, CX 
MOVSX EBX, BL 
AND RCX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
SUB AL, -85 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -97 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
XCHG CX, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RSI 
AND RAX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DX 
IMUL RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 117 
JMP .bb_main.4 
.bb_main.4:
SUB ESI, -90 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], 18 
CMOVL RBX, RDX 
CBW  
CWDE  
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
