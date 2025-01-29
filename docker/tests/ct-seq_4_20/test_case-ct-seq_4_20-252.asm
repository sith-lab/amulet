.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL DI, SI, 55 
CMOVNO AX, DX 
AND RSI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
XCHG RBX, RBX 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 2042138861 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
SBB RAX, 319900759 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], 82 
AND RAX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -7 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDI] 
IMUL RCX, RBX 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], DI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], SI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
