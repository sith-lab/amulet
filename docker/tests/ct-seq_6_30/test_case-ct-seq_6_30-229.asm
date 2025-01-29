.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 43 # instrumentation
ADC BL, -100 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, -106 # instrumentation
ADC CL, 25 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EBX 
CMOVNZ DI, DI 
XCHG ECX, EBX 
MOVZX BX, DIL 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CMP DL, AL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 81 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDX 
MOVZX EAX, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EDI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
JMP .bb_main.3 
.bb_main.3:
SUB AX, 10789 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 44 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RCX] 
ADD DIL, -107 # instrumentation
SBB EAX, -1212872339 
AND RAX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], SIL 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 69 
CMOVNB BX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RDI] 
JLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDI] 
SBB DI, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], DI 
NEG SI 
CMP CX, CX 
MOV EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
