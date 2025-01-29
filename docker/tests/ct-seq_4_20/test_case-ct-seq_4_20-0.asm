.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -114 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], CL 
MOV RDX, 1137208163690933295 
CDQ  
SUB RAX, -2053530302 
AND RBX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RBX] 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -70 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 18 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 9648 
CMOVNB RSI, RSI 
SBB DL, 123 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
