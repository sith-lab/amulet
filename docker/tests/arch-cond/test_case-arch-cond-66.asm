.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
MOV EDI, -482281930 
ADD RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
SBB EAX, -2125565505 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], DI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
ADC EAX, -473238183 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
IMUL BL 
CMP DL, DL 
CMOVS DI, SI 
SETP SIL 
AND RDI, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], BL 
CMOVNLE RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DI 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RCX 
LEA ECX, qword ptr [RSI + RDX + 15806] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
ADC CX, BX 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
TEST ESI, ECX 
CMOVBE ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDI] 
SUB CL, DL 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], -17 
ADD AL, CL 
MUL DL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 122 # instrumentation
SBB RAX, -100 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -119 
CMP RSI, 100 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
TEST AL, -104 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RBX] 
TEST DX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
