.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -27 # instrumentation
CMOVNP EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -120 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
CMP RDI, 1 
AND RSI, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RCX] 
ADD AL, DIL 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], CX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 17 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
