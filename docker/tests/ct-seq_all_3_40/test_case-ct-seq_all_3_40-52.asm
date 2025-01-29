.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
MOVZX SI, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], ECX 
XOR RBX, -117 
MOV DL, BL 
SETNB CL 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
XADD DIL, AL 
OR EBX, ESI 
TEST EBX, 1081752966 
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 57 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], DL 
SETZ AL 
CWDE  
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 126 # instrumentation
CMOVNL BX, SI 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 57 
CMOVB DI, DI 
NEG RDX 
AND RAX, RCX 
NOT EBX 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], EAX 
TEST CL, DIL 
CMOVNZ EBX, ESI 
CMOVO DX, AX 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RAX] 
MOV SI, 7192 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST CL, SIL 
CMOVNLE EDX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDX] 
CMOVZ EAX, EAX 
ADD AX, -2225 
SETZ CL 
CMOVB RSI, RDI 
MOV RDX, 264154882248299739 
IMUL RAX, RDI, -31 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
