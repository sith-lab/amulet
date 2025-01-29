.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
MOV AL, -29 
MOVZX RBX, SIL 
SBB ESI, EDI 
SUB AL, BL 
ADC DIL, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDX] 
CMOVZ BX, DI 
AND RCX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
MOV RDX, -3363848479392115067 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 72 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 37 
SUB AX, 11560 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -40 
ADC BL, AL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 73 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX EBX, DIL 
ADD RSI, RDX 
MOVSX RSI, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
LEA CX, qword ptr [RAX + RCX + 8762] 
CMOVL CX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 72 
MOVSX CX, DL 
INC CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RAX] 
CMOVNS RDX, RBX 
DEC DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
