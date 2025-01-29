.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -88 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RAX] 
CMOVNS RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -83 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
MOV EDI, 671139126 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
MOVZX EBX, CX 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
MOVSX ECX, BL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], BL 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RCX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RSI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
