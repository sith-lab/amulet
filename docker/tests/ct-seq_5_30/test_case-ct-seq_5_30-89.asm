.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -31 
SBB CL, AL 
CMOVZ DI, SI 
SUB EBX, -49 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ESI 
XCHG CX, BX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 39 # instrumentation
SBB DIL, -104 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
NEG BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RCX] 
CMP EDI, EAX 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CDQ  
IMUL EDX 
MOVSX AX, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 83 # instrumentation
SBB AL, DL 
STC  
ADD AX, -28588 
CMOVNZ RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RDX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RCX 
XCHG AL, BL 
IMUL BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDX] 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DIL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -9055 
AND RAX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
