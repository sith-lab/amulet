.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB BX, 18 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RCX 
CMOVLE EDX, EDI 
MOV SI, -20284 
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
SBB DL, -71 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
XCHG EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -17 
IMUL ESI, ECX, -12 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], ESI 
OR DI, 0b1000000000000000 # instrumentation
BSF CX, DI 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -110 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB BL, SIL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RBX] 
ADD SIL, -59 # instrumentation
ADC SIL, SIL 
ADC CX, -8 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
MOVZX RSI, AX 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
ADC DL, DL 
MOV BL, SIL 
CMOVO RBX, RBX 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -49 
MOVSX RSI, DI 
IMUL RDI, RDI, -99 
MOVZX EDX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
