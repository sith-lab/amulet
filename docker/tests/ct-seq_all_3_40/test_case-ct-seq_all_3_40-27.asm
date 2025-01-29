.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -80 # instrumentation
ADC RAX, 1613561976 
OR BL, 65 
XOR DX, SI 
BSWAP ECX 
XOR DIL, -56 
XCHG RDX, RAX 
AND DL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 1 
ADC SIL, -45 
ADC BL, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
ADC BL, BL 
SETL AL 
SUB DL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDI 
LEA EBX, qword ptr [RAX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DL, DL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RAX] 
IMUL CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -76 
AND EAX, EBX 
OR RAX, 235340435 
SETNZ AL 
AND RAX, 573128023 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], AL 
MOVSX SI, DL 
MOVSX ESI, DL 
CMOVP ESI, EDI 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], -11588 
OR DI, 0b1000000000000000 # instrumentation
BSF CX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], SI 
NOT SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
CMP EBX, -27 
SUB AL, -29 
MOVZX BX, CL 
TEST ESI, -971607424 
CMPXCHG AL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
