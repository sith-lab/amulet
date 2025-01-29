.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], DI 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], BL 
OR BL, CL 
AND RSI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RSI] 
XCHG EBX, EAX 
XADD ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RSI] 
CMPXCHG AL, AL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDI] 
CMOVNO ESI, EBX 
OR RAX, RBX 
AND SI, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RSI] 
OR RDI, RDI 
XCHG BX, AX 
CMP AL, 35 
CMP CL, DL 
LEA RDI, qword ptr [RCX + RSI] 
CMOVZ EDI, ECX 
DEC EDX 
XOR RAX, 60 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], EBX 
AND RBX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RBX] 
ADC SIL, -90 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CWDE  
IMUL ESI, ESI, -90 
ADD SIL, -71 # instrumentation
CMOVP AX, AX 
SETNBE CL 
MOVSX RBX, DIL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], SIL 
AND RAX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
CMOVNS DX, DX 
CMOVS AX, DX 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], -7 
XOR AL, -79 
OR EAX, -1461691059 
CBW  
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
