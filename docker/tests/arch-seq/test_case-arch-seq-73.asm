.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SI, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RBX] 
MOVSX EAX, DL 
SETNB CL 
JNP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
CMP DIL, AL 
OR DX, 1 # instrumentation
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
DEC BL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 85 # instrumentation
MOVZX BX, BL 
CMOVBE BX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 58 
MOV RSI, 3787977640700473382 
TEST RCX, 2062794754 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RBX] 
CMOVNP EDX, ESI 
XOR RSI, 70 
CMOVNO RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 270619958 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
SUB RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDX] 
AND RDX, -85 
ADD RAX, 1751983532 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 70 
JMP .bb_main.4 
.bb_main.4:
OR SI, 72 
IMUL EDI 
ADD EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], BL 
SETL BL 
CMOVNLE RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDX] 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
SETNL DL 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RCX] 
NEG DL 
ADD AL, -45 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
