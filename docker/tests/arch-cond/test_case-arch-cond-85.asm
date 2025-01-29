.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -67 # instrumentation
SETZ DL 
LAHF  
AND BL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RDI] 
MUL CX 
ADD SIL, 46 # instrumentation
SETNP AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RCX] 
CMP ECX, -25 
IMUL DL 
MOVZX EDI, BL 
CMPXCHG ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RBX] 
ADD DIL, 28 # instrumentation
CMOVNLE BX, DI 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 110 # instrumentation
CMOVNZ ESI, EDI 
SUB AL, -92 
AND RAX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], ESI 
MOV EBX, ECX 
CMOVNL RDX, RDI 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -69 # instrumentation
SETO SIL 
CMOVNB EBX, ECX 
TEST ECX, EAX 
ADC AX, -10113 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DX 
JMP .bb_main.3 
.bb_main.3:
CMPXCHG DL, BL 
XOR ECX, EDX 
SETNZ CL 
TEST CX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], -5 
IMUL SI, CX, -117 
XCHG SI, AX 
SUB DL, CL 
CMOVZ RAX, RBX 
IMUL EDX, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
