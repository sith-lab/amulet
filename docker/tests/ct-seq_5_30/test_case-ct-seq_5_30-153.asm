.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -19 # instrumentation
CMOVNLE SI, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
IMUL ESI, EDX 
CMOVO RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RDX] 
ADD CX, 31 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ESI 
AND RBX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], BL 
CMP EDI, 105 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDX] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -106 
CMOVNO RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
ADD DIL, -103 # instrumentation
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], DI 
ADD ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
ADD AX, 9735 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RBX] 
ADD DIL, 73 # instrumentation
SBB BX, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EDX 
SUB ESI, EDX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MUL EBX 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
IMUL RBX, RDI, -7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
