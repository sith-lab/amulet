.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 4 
MOV ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
SBB DIL, -118 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 17 
CMOVNP BX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDX] 
OR BX, 0b1000000000000000 # instrumentation
BSF BX, BX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RBX] 
CBW  
MOV RDX, RDI 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RCX] 
SUB SIL, 77 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
