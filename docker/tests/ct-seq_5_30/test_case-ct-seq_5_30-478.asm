.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
ADD EDX, 104 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 46 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], -60 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
CMOVNZ EAX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
STC  
BSWAP EBX 
MOVSX ESI, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 31 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RAX] 
CMOVS ESI, EAX 
MOVSX EBX, CL 
CMOVS RSI, RBX 
MOVZX BX, AL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -11 
JMP .bb_main.3 
.bb_main.3:
IMUL RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -73 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -91 # instrumentation
BSWAP RDX 
CMOVNL DX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -87 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], AX 
XCHG DX, AX 
LAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
