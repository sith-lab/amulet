.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], -110 
AND RCX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
SUB AX, -52 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DI 
MOV DI, SI 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
CDQ  
LEA EAX, qword ptr [RDX] 
CMOVNL RCX, RDI 
JMP .bb_main.2 
.bb_main.2:
DEC AX 
AND RSI, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 88 # instrumentation
CMOVLE DI, DI 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
CMOVNB EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
CBW  
JNBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, -105 # instrumentation
SBB RSI, 36 
AND RDI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDX] 
CMOVNS BX, AX 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 57 # instrumentation
XCHG EDI, EDI 
CWDE  
ADC RDX, -41 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
