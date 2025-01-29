.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD RDI, RDI 
XOR CL, -108 
TEST AX, 17653 
CMOVP RSI, RDI 
CMOVBE EBX, EDI 
ADC AX, -91 
NOT RBX 
SETL CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
SBB ESI, EBX 
NEG ECX 
XOR RSI, RDI 
SETNL DL 
SETNBE SIL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], BX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
SETBE AL 
MOVSX EDX, DL 
CMPXCHG AX, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], -30 
CMOVS ECX, EDI 
SUB CX, -82 
TEST RAX, 1198646638 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -42 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
ADD DIL, -97 # instrumentation
CMOVNB RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
CMOVNS SI, DX 
OR AX, 13681 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
OR AL, SIL 
CMOVLE RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], -79 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
CMPXCHG AX, DI 
SETS DL 
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
