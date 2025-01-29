.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC RDI 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], AL 
CMOVNB DX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDX] 
SUB ESI, 28 
SUB EDI, -107 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -42 # instrumentation
CMOVNBE RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -72 # instrumentation
CMOVNBE RCX, RAX 
CMOVNO ESI, ECX 
STC  
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDX] 
IMUL EBX, EBX, -122 
ADD SIL, -23 # instrumentation
CMOVZ DX, DX 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
CMOVL DI, AX 
AND RSI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
SUB RDI, 5 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
INC DL 
MOVZX RDX, CL 
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
DEC EDX 
DEC CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
