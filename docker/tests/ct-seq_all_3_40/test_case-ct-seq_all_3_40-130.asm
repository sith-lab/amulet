.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX ECX, DI 
MOV DIL, 9 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], AL 
CMOVNS EAX, EBX 
SUB RAX, 1776165901 
CMOVS SI, CX 
NEG EDX 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], 105 
AND BX, SI 
SBB CL, 22 
SUB CL, 107 
SUB DI, DI 
SBB CL, DIL 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -69 
MOVZX DX, BL 
SUB SIL, BL 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], BL 
XOR EDX, 86 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RCX 
SUB CL, AL 
SETP DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RBX] 
CMP SI, DX 
CMOVLE AX, BX 
JMP .bb_main.2 
.bb_main.2:
MOVZX EBX, CL 
OR SI, -65 
XCHG RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RBX] 
CMP RAX, -421145722 
CMOVP RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
MOV ECX, ECX 
MOV CL, BL 
IMUL SI 
XOR SIL, -55 
CMOVLE EDX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
