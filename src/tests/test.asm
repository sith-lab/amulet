.intel_syntax noprefix
.test_case_enter:
LFENCE 
OR AL, 14 
AND RCX, 0b111111111111 # instrumentation
AND byte ptr [R14 + RCX], DL 
AND RAX, 0b111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RAX] 
CMOVZ ECX, EDX 
AND RCX, 0b111111111111 # instrumentation
XOR word ptr [R14 + RCX], -99 
AND DL, DL 
AND RSI, 0b111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RSI] 
AND CL, 8 # instrumentation
AND RCX, 0b111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RCX] 
AND RBX, 0b111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 1674367975 
AND RDX, 0b111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDX] 
AND RBX, 0b111111111111 # instrumentation
OR BL, byte ptr [R14 + RBX] 
LOOP .bb_main.1 
JMP .bb_main.2
.bb_main.1:
    AND RAX, 0b111111111111 # instrumentation
    XOR RDX, qword ptr [R14 + RAX] 
    AND RDX, 0b111111111111 # instrumentation
    CMOVB RBX, qword ptr [R14 + RDX] 
    AND RDX, 0b111111111111 # instrumentation
    LOCK OR byte ptr [R14 + RDX], DL 
    CMOVNL EDI, ESI 

.bb_main.2:
    CMOVO CX, DX 
MFENCE
