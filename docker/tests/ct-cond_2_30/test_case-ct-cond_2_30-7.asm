.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RCX] 
SUB RAX, 507399740 
CMOVNP RSI, RAX 
SUB AL, 56 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RBX] 
MOVSX EBX, AL 
SBB EDI, EAX 
CMOVO DX, DI 
CMOVNS SI, DI 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 88 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RBX] 
CMOVBE RCX, RAX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RSI] 
CMOVNP DX, BX 
INC BX 
ADD RAX, -1497071697 
SUB DX, CX 
ADD AL, -5 
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
CMP RAX, 150553172 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], CX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
IMUL RDX, RBX 
ADD SIL, 61 # instrumentation
CMOVZ ECX, ESI 
IMUL EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
