.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 17 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 1120452348 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RAX] 
LEA RBX, qword ptr [RDX + RDI + 27029] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RAX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RAX, 2033126535 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], BX 
ADC RAX, -988609132 
AND RDI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
CMOVNS RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
