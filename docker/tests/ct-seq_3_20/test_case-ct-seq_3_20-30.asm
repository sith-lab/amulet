.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -32 # instrumentation
CMOVNP ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 5 
XCHG EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
MOVSX ECX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -82 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -45 
CMP AL, 106 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -32 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -1636191424 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -37 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
