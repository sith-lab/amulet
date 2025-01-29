.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RCX] 
CMOVNLE ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 95 
CMOVNP RSI, RBX 
ADD RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -125 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDX] 
ADD BL, -99 
ADC RAX, RCX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX], -74 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
CMOVBE RAX, RCX 
MOVSX RBX, BL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
IMUL RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -69 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RBX 
MOV RBX, 7782532277277695203 
CMOVNZ RSI, RSI 
IMUL CX, SI, 79 
ADD DIL, -8 # instrumentation
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RCX] 
MOV RDX, RCX 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ECX 
XCHG AL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
