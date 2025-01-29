.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -8 # instrumentation
CMOVZ DI, DI 
MOV DL, CL 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
JBE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD SIL, -11 # instrumentation
ADC CL, -42 
CMOVNBE BX, SI 
MOV RDX, 8145155649435739404 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EBX 
NEG EDI 
MOV RCX, 4197482697614987183 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 49 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
DEC DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RBX] 
XCHG AL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RSI] 
MOV ECX, -692643210 
JMP .bb_main.4 
.bb_main.4:
IMUL DX, DI, -46 
SUB BX, 35 
SBB RAX, 383550168 
ADD AL, -28 
JMP .bb_main.5 
.bb_main.5:
IMUL EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
CMOVNL RDI, RSI 
ADD EDX, -14 
ADD AL, -62 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 86 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
