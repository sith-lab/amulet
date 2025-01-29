.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RAX] 
SUB BL, AL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -18 
SUB DL, DL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 41 # instrumentation
CMOVNZ AX, BX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 73 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 37 # instrumentation
CMOVL EAX, EBX 
INC RBX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 2 # instrumentation
ADC AX, 6286 
AND RCX, 0b1111111111111 # instrumentation
SUB AX, 30865 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDX] 
CMOVO EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RSI] 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
NEG EDI 
CMOVNO EAX, ECX 
INC DL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RCX 
ADD DIL, 77 # instrumentation
CMOVL RDX, RCX 
SUB EAX, 129912329 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
