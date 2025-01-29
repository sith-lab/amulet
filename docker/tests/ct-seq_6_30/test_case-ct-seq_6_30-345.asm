.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -50 # instrumentation
SBB RCX, 121 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RCX] 
DEC DL 
CMP SI, 26 
OR DI, 0b1000000000000000 # instrumentation
BSR DX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EDI 
SUB RAX, -1429174565 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDI] 
ADD DL, BL 
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDI 
CMOVB EDI, ECX 
XCHG EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
CBW  
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
SUB RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -16 
SUB DIL, -37 
JNB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -72 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], DIL 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
SBB CL, 40 
SBB RSI, 85 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 77 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
