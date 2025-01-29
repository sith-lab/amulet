.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -12 
CMOVS DX, DX 
CMOVNL ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDX] 
DEC ECX 
ADC EAX, -1949721743 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RBX 
ADD RSI, 100 
SUB CL, BL 
CMOVB EAX, EBX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RSI] 
ADC DIL, -59 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RBX] 
MUL CL 
JNO .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -73 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
CMOVNS RDX, RCX 
LAHF  
CMOVL EDI, EAX 
JNB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
JMP .bb_main.5 
.bb_main.5:
ADD ESI, ESI 
CMOVO RDI, RCX 
ADC AX, -11064 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
INC DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
