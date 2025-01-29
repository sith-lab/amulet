.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDI] 
ADC EAX, 1502768887 
AND EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDI] 
SETS CL 
XADD EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDX] 
SUB ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RAX] 
SUB CX, 73 
JMP .bb_main.1 
.bb_main.1:
SUB CL, AL 
NOP  
NEG EDI 
ADC CX, -110 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], -63 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
ADD DIL, 58 # instrumentation
SETS AL 
IMUL RAX 
XOR RAX, 404164087 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
XOR RAX, -1931730884 
XOR RBX, 90 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL SI 
INC RAX 
SETP AL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDI 
LEA EDX, qword ptr [RDI] 
CMOVNP EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], -34 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
