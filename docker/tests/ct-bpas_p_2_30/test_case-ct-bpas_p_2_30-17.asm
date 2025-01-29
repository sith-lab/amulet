.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RCX 
XCHG CL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
ADC RAX, -791879036 
ADC DL, AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RBX] 
CMOVP EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RSI 
CMOVS DX, DI 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RCX 
CMOVB ESI, ESI 
SUB RBX, RDX 
CMOVLE CX, SI 
LEA DX, qword ptr [RBX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -19 
XCHG CX, SI 
MOVZX RCX, AL 
SUB RAX, -81 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
ADD EAX, 811135594 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDI] 
SUB SIL, -17 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
CMOVNL RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDX] 
SUB CL, -31 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
