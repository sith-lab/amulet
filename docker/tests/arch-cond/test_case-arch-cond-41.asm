.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
NEG CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDI], BX 
CMPXCHG RDX, RDX 
AND EDX, 1 
MOVZX EAX, DIL 
CMOVB RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
CMP ECX, ECX 
CMOVNP RDI, RCX 
ADD RSI, -70 
TEST AL, -23 
CMOVNB RDI, RAX 
CMOVNZ RDX, RCX 
MOV CL, DL 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RDI 
NOT RAX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -120 
ADD AX, CX 
ADD AL, -6 
DEC DI 
AND RCX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RCX] 
SETP CL 
TEST DL, 55 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 42 # instrumentation
CMOVB EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
XOR BL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RAX] 
IMUL RCX, RAX, 74 
ADD SIL, 57 # instrumentation
CMOVP EDI, EDX 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -89 # instrumentation
SETLE BL 
SETNO BL 
XOR CX, -43 
CMOVNL AX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -20 
SETZ DL 
SETNS DIL 
CMOVNO RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
