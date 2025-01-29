.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 88 
AND RAX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 112 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 81 # instrumentation
CMOVNO RAX, RBX 
SBB RAX, -557097719 
MOV RSI, 7878398120635277615 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -706018295 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 1 # instrumentation
SBB ESI, ESI 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RSI] 
SUB AL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 40 
CMP ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDX] 
CMP EBX, EAX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EAX 
CDQ  
SUB RAX, 1440147614 
SUB RAX, -35 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB EAX, 1006383854 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -103 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
