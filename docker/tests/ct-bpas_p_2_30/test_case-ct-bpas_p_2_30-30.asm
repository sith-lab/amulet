.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, 3 
ADC EDX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RBX] 
CMOVNO SI, DI 
MUL BL 
STC  
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RSI 
CMOVS ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
MOVZX ECX, AL 
SBB AL, 62 
AND RCX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 27 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 3 
ADD ESI, -85 
XCHG RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RAX] 
CMOVBE EDX, EBX 
DEC EDX 
ADD AL, -126 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], CX 
SBB EBX, -90 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 48 
ADD EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
