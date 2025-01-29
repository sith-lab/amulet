.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 31 # instrumentation
CMOVZ DX, DI 
SETLE CL 
SETS AL 
XOR EBX, -84 
AND CL, DL 
TEST DIL, 1 
SETZ BL 
AND RAX, -190175285 
SBB EBX, EDI 
MUL CL 
MUL RBX 
ADD SIL, 123 # instrumentation
CWD  
SETL DIL 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], 84 
MUL RDI 
OR RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
CMOVO RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], CL 
OR RAX, -1576233543 
XOR AL, BL 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -117 
XCHG RBX, RAX 
TEST RCX, -1450538911 
SBB RAX, -84 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RSI] 
AND DIL, 111 
AND EDI, EAX 
CMOVB EDX, EDI 
DEC RDX 
SBB AL, 118 
XCHG ECX, EAX 
CMOVL DI, DX 
XCHG DL, DIL 
MOVSX ECX, BL 
MOVZX BX, AL 
ADD SIL, 16 
XOR SIL, -40 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
