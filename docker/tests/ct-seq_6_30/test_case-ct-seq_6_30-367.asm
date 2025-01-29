.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RSI] 
SUB EAX, 446600135 
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
CMP RCX, RDI 
JMP .bb_main.1 
.bb_main.1:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ESI 
ADD DIL, 50 # instrumentation
MOVZX RDI, BX 
CMOVP ESI, ESI 
NEG RSI 
CMOVNZ DI, DI 
AND RBX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RBX], -81 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDI] 
CMOVS DX, AX 
MOV RDI, 3047743992785606576 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DI 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], AL 
JRCXZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, 80 # instrumentation
CMOVLE CX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RCX] 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RCX] 
CWDE  
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
LEA RAX, qword ptr [RDX + RAX + 33008] 
MUL RBX 
AND RAX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
