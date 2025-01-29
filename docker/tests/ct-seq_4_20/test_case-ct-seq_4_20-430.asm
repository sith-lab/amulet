.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], AX 
CMOVB RCX, RBX 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -13 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
CMOVBE EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RSI] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV RCX, -89098989141920063 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -56 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 115 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -20 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
