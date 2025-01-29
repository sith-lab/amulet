.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
ADC EDX, 76 
MOVSX AX, DL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDI 
ADD SIL, 124 # instrumentation
ADC RAX, -1113655149 
MUL BL 
SUB CL, AL 
CMOVNLE ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
XCHG AX, AX 
CMOVNBE DI, AX 
CMOVBE ECX, EDX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
IMUL AX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RBX] 
CMP EAX, -1087246326 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -1678950849 
CMOVNLE RBX, RCX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 47 
SBB RAX, -1429027678 
AND RAX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ESI 
CMOVNL RAX, RSI 
CMOVNLE EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
