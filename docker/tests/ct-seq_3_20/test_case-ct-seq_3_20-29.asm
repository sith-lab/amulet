.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DIL, DIL 
SUB BL, CL 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 3 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX], -13 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ECX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 118 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RSI] 
CMP DX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
