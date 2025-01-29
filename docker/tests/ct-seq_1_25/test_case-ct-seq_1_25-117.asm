.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -36 
CMOVNP AX, CX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
ADD DL, AL 
CLC  
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -9125 
XCHG RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RDX 
AND RDX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RDX] 
CMOVNL RCX, RAX 
SBB RDX, -5 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
CMOVNO RDX, RAX 
CMOVNLE ECX, EDX 
CMOVNO BX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
SBB ESI, -79 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1030751792 
DEC AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
