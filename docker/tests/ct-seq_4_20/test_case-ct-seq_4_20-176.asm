.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP BL, 87 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
MOVSX EDI, SIL 
AND RCX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RCX] 
INC AL 
NEG EDI 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -4 # instrumentation
CMOVP EAX, ESI 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], 76 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDI] 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], AX 
MOV RCX, -5978012966471363709 
CMOVS EDX, EDI 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -78 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RBX 
XCHG CX, AX 
CWD  
CMOVLE CX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
