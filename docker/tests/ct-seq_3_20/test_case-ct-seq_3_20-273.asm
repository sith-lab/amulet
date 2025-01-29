.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RBX] 
CMOVBE EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
CMOVL DI, DX 
CMP AL, -2 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -128 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX] 
XCHG EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DIL 
AND RDX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 127 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], -11 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 7 
AND RAX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
