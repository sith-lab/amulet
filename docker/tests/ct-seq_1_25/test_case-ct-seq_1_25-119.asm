.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG ESI, EAX 
IMUL AL 
CMP DIL, 64 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 103 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -66 
CMOVNZ ECX, ESI 
CMP CX, SI 
IMUL EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
DEC AL 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -109 
XCHG RAX, RAX 
BSWAP RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 84 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
IMUL AX, DX 
CMOVNO EBX, EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
CMOVLE BX, SI 
CDQ  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
