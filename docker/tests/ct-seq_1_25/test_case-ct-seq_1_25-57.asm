.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
SBB AL, 111 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
MOV AX, -20893 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
CMOVNB RDI, RSI 
OR DX, 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], SIL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DI 
SUB RCX, RDI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDI 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDX 
ADD AL, 29 
SBB BX, -6 
MUL BL 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RBX 
CMOVB ECX, EDI 
ADD CL, 10 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
