.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RBX, 1951264360 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
ADC AX, 6672 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DX 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], DL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], DL 
CLC  
TEST AL, -26 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -114 
AND RSI, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RSI] 
MOVSX EAX, BL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CWDE  
LEA ESI, qword ptr [RSI] 
CMP RCX, -94 
CMOVNB RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ESI 
OR CL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDX] 
AND DX, BX 
CMPXCHG RDX, RBX 
MOVSX ESI, CX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND SIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDI] 
IMUL RAX, RDI, -91 
ADD EBX, -115 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], SIL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDI] 
MOV CL, 14 
SETLE BL 
ADC EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RAX] 
ADD AX, 12422 
ADC AL, AL 
OR ESI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
