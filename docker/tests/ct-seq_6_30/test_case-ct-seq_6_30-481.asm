.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -35 # instrumentation
SBB RAX, -1272070226 
LEA DI, qword ptr [RSI] 
CMOVO EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDI] 
ADD EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DI, DL 
JMP .bb_main.1 
.bb_main.1:
ADD EAX, -120 
ADC AX, 19813 
CMP AX, -20090 
CMOVNS RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EBX 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
JMP .bb_main.3 
.bb_main.3:
CMP BL, DL 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
DEC CX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DIL 
MOV RBX, -1566796777934504157 
CMOVZ DI, CX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ECX 
CMOVZ ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 113 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDX 
OR DX, 0b1000000000000000 # instrumentation
BSF BX, DX 
ADD SIL, -38 # instrumentation
ADC RSI, -36 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDX] 
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 124 # instrumentation
CMOVNLE RAX, RSI 
CMOVLE ECX, ECX 
CMOVLE RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
