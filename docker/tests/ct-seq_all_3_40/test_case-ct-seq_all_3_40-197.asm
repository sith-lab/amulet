.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, 91 # instrumentation
SBB DL, AL 
NEG DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
MOVZX RBX, DIL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
ADD SIL, 60 # instrumentation
SETO BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
CBW  
AND RBX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], -24 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], BX 
CMPXCHG RCX, RDI 
INC AL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], SIL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND EAX, 512847448 
SETNB DL 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], ECX 
OR RCX, 38 
CMOVZ EDI, ESI 
DEC DIL 
SUB DL, -87 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
XCHG RCX, RAX 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG RDI, RDI 
OR EAX, 409887 
SETNBE CL 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EDI 
AND RDI, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EAX 
MOVZX EDX, AL 
OR DL, AL 
MOVSX RDI, AL 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 64 
SBB ECX, -30 
OR EDI, -38 
SUB CL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
