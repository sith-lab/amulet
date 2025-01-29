.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -87 # instrumentation
CMOVLE RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
CMP EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RCX] 
CMOVB AX, DX 
CMP BL, AL 
ADC RDI, RAX 
JNLE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
CMOVL RAX, RAX 
IMUL DX, DI, 49 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RAX] 
ADD CL, AL 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], SIL 
ADD CX, DI 
SBB SI, DI 
AND RBX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -54 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RCX] 
CMOVNP ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RCX] 
JNZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOVSX EDI, BL 
INC RSI 
INC BL 
XCHG RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
