.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG CL 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], AX 
CMOVNBE EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RDX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -84 # instrumentation
CMOVO RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 122 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
XCHG CL, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDX] 
SBB RAX, 541076600 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
