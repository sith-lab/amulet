.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], 65 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
IMUL RDI, RAX, -116 
XADD AX, SI 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
CMPXCHG EBX, ECX 
CMOVB RDX, RAX 
IMUL DL 
JO .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDI] 
SETZ BL 
IMUL RSI 
ADD SIL, 20 # instrumentation
CMOVNBE BX, BX 
AND EAX, -38 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], 95 
AND ESI, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], CL 
JNZ .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
CMOVB ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RBX] 
CMOVZ BX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RCX] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 37 # instrumentation
ADC DIL, 75 
NOT DL 
JO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], -97 
ADD EAX, -85 
OR DL, -72 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], BX 
TEST RDI, RSI 
CMOVNBE SI, DI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RCX] 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -104 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
OR CX, 0b1000000000000000 # instrumentation
BSR DI, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], -35 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
