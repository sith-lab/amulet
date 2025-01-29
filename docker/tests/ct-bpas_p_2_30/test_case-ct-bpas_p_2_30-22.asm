.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RCX 
CMP RAX, 2119284396 
CMOVNO RSI, RAX 
CBW  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EDI 
LEA ECX, qword ptr [RBX] 
IMUL RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 43 
ADC CL, 127 
CBW  
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
MOV RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RAX] 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -64 # instrumentation
SBB AL, 111 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DIL 
SBB DIL, 114 
IMUL BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDI], 46 
ADD SIL, 6 # instrumentation
CMOVLE RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 13 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
CMOVNLE EAX, EDI 
CMP DIL, 90 
BSWAP RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
