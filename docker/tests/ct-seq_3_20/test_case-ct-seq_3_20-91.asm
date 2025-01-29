.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 24 # instrumentation
CMOVNLE RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1207627318 
JMP .bb_main.1 
.bb_main.1:
MOVZX ESI, CL 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
CMOVNZ DI, BX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
ADD DIL, -120 # instrumentation
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB CL, 43 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
ADD AX, -1528 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
MOV EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -43 
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -12 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
