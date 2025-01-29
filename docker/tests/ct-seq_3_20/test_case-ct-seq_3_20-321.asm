.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 109 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ECX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
CMOVNS AX, SI 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], AX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RSI] 
ADD DIL, -23 # instrumentation
CMOVB RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
