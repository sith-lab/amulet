.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 59 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RAX] 
MOVSX EAX, SIL 
CWD  
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
CMOVB ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -118 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], BX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
CMOVNLE RCX, RDI 
DEC ESI 
LEA ECX, qword ptr [RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RSI] 
SUB ESI, ECX 
LEA EBX, qword ptr [RBX + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -412160817 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
