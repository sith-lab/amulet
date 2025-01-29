.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
MUL DL 
ADD SIL, 9 # instrumentation
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 92 # instrumentation
CMOVNS RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 80 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 120 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
ADC RAX, 1238528337 
CMOVNS RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RCX] 
MOV BL, DIL 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
NEG RCX 
SUB EBX, -67 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], DIL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
