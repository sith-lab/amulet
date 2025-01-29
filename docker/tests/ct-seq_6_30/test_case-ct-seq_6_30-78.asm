.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDX] 
SUB EBX, -91 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
MOVSX RDI, DL 
ADD AL, -82 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDI] 
MOVSX ECX, DIL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
MOVZX EDI, DI 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 35 
SBB AX, SI 
CMOVL CX, SI 
CMOVP DX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EBX 
JNP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, 40 # instrumentation
CMOVO CX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
CMOVNP RCX, RSI 
IMUL ECX, ECX 
ADD SIL, 71 # instrumentation
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EDX 
ADC ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], SIL 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RBX 
CMOVL RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
CWD  
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 75 
IMUL ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
