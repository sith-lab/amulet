.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST EAX, -144972764 
INC SI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], RBX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 19 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
CLC  
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
SAHF  
XCHG RAX, RAX 
XCHG RDI, RSI 
XCHG RDI, RAX 
SETP DL 
LEA EAX, qword ptr [RCX + RSI] 
CMOVNS SI, BX 
JMP .bb_main.1 
.bb_main.1:
LEA RCX, qword ptr [RAX] 
XOR EDI, -85 
MOVSX ESI, DI 
CMOVO RSI, RCX 
NOT DL 
ADD ESI, ESI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
SBB RCX, -19 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], -1325380594 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 126 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], DI 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -4 # instrumentation
SETZ AL 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], AX 
CMOVB RAX, RBX 
CMOVNB AX, BX 
CMOVNO RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RSI 
CMOVP RCX, RBX 
XOR CL, -78 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDI] 
OR RAX, -1649271033 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
