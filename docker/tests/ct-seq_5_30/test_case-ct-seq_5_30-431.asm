.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -120 # instrumentation
DEC EBX 
SBB RBX, RDX 
NEG EDI 
SBB AX, 32519 
BSWAP RDI 
JBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOVSX ECX, CL 
AND RDX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDX], 90 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 111 
MOV SIL, CL 
SBB RAX, -1330702514 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 99 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
CMP ESI, EDI 
SBB CL, 5 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RBX] 
SBB SI, -36 
CMOVNO SI, SI 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RSI] 
MOVSX SI, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
SUB SIL, 92 
MOVZX BX, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -79 
ADD SIL, 81 
ADD AL, 95 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVSX ESI, AL 
XCHG RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
CMOVNB RAX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
