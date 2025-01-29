.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB BL, BL 
CMP AX, -25687 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDX 
AND RSI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
CMP CX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RBX] 
MOVZX EBX, SI 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], SI 
SUB SI, 114 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ECX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EDI 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -16 
CLC  
AND RCX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RSI] 
SUB DX, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], -92 
DEC DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
