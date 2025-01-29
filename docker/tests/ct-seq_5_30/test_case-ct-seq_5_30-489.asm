.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RCX] 
CMP RAX, 312252556 
MUL CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDX] 
MOVZX EDI, AL 
CMP ECX, -17 
NEG RCX 
IMUL BL 
JMP .bb_main.1 
.bb_main.1:
MUL RSI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -11 
JMP .bb_main.2 
.bb_main.2:
MUL RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], AX 
CMOVO AX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDX] 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 111 # instrumentation
MOVSX EAX, SIL 
CMOVNZ RBX, RBX 
ADC BX, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EBX 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -20 
MOV SIL, AL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], SIL 
ADC RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX], 55 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
