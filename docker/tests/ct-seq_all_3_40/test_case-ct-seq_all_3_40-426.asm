.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -28 # instrumentation
CMOVLE ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RCX] 
CMOVNO AX, CX 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -19 
IMUL RCX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
SETLE AL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
CMP CX, -4 
CLC  
NOT SI 
JMP .bb_main.1 
.bb_main.1:
MOVZX ESI, BL 
CMPXCHG AL, CL 
IMUL RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
CMP RAX, -1274006494 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EDX 
ADD EAX, 964129048 
XCHG DL, AL 
SUB CL, DIL 
XCHG RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], SIL 
DEC RAX 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RSI] 
AND EAX, ESI 
SETS DIL 
ADC DIL, 14 
MOVSX ECX, DI 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], DI 
SBB EDX, 122 
SETNS CL 
TEST EAX, EAX 
AND AX, -14715 
MOVSX RCX, DL 
SETNL CL 
AND EDX, 77 
AND RBX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RBX] 
CMOVNP DI, SI 
OR DL, 51 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
