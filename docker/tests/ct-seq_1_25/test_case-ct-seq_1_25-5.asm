.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA RCX, qword ptr [RBX] 
MOV RBX, -4641405460258395445 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
MOVSX BX, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
CMOVBE EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EDX 
MOVSX RCX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RCX] 
CMP BL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RAX] 
SBB SIL, -46 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EAX 
INC RAX 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
CMP BL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RBX] 
SBB ESI, -124 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DIL 
ADD SIL, 50 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
MOVSX RCX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
