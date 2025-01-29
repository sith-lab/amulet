.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DI 
SUB RDX, -91 
AND RCX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RCX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR DL, 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI], 56 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], SIL 
CMP EDI, -118 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], BX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -119 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
MUL CX 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 532032661 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -44 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
