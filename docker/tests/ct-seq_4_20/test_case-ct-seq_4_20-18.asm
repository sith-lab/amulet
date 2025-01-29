.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RDX] 
DEC AL 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RCX] 
ADD ESI, 42 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DL 
ADC RCX, -74 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 53 # instrumentation
CMC  
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DIL 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDI 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
