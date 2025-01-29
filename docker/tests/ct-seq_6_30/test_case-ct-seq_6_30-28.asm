.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CDQ  
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 51 
SBB CX, BX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL RCX, RAX 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RCX 
CMC  
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -12 
AND RCX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RCX] 
SBB RCX, RAX 
MOV EDX, -328706991 
DEC DX 
AND RAX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -26 # instrumentation
CMOVNL EAX, EAX 
MOVSX RSI, SI 
ADD EBX, EDX 
SUB AX, SI 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 127 # instrumentation
CMOVNP ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
CMOVNS EDI, ESI 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDX] 
ADD AX, 676 
CMOVO RSI, RDI 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 17 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -24 
CMP CX, SI 
MOVSX RSI, SI 
CMOVZ CX, BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 34 
MOVZX BX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
