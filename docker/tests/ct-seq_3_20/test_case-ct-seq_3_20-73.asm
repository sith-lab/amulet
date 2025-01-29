.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -88 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 32 
MOVZX DI, DL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 50 
CMOVNZ AX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -51 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RCX] 
SBB SIL, -127 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ESI 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
MOVSX DI, DL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 104 
CMOVLE RDX, RDI 
IMUL RAX, RDX, 24 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
