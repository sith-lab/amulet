.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 55 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
SBB CX, -87 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 96 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RCX 
ADC ECX, ECX 
CLD  
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RDI 
CMOVNS EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EBX 
MOVSX DX, CL 
XCHG RDX, RAX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
IMUL RAX, RDX 
ADC AL, 9 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDX] 
LEA BX, qword ptr [RDX + RBX + 63567] 
MOVZX RCX, CL 
CWDE  
INC AL 
ADD DL, -105 
AND RDX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
