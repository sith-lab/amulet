.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 113 # instrumentation
CMOVNB EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], -17 
CMOVNO BX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
TEST DIL, 15 
SETNZ BL 
CMOVB RCX, RSI 
CMOVNP ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RAX] 
ADD DIL, -47 # instrumentation
SBB DIL, -45 
CMP ESI, EBX 
IMUL ESI 
ADD DIL, 34 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -87 
OR RAX, -71 
AND DIL, -30 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], SI 
IMUL SI, CX, -109 
ADD SIL, 90 # instrumentation
SETNB DL 
SETL DIL 
AND RSI, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RSI] 
CLD  
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RDX] 
SETL SIL 
TEST RAX, 179734586 
AND RCX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RCX] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -102 # instrumentation
CMOVNLE ECX, EDI 
CMOVO BX, BX 
CMP DI, BX 
ADD DL, AL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RSI], -23 
MOV RCX, 7072487479989135157 
AND RCX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDX] 
CMOVNLE ESI, EDX 
JMP .bb_main.4 
.bb_main.4:
XCHG CL, DL 
MOVSX RDX, CX 
OR AL, 101 
SETZ SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
