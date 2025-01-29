.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL AL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], AX 
NEG DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RAX] 
XCHG EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], BL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], 5 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RBX] 
DEC EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RDI] 
CMOVB BX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
MOV BL, CL 
MOVSX EAX, SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 121 
IMUL BL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RAX] 
MOV RSI, RSI 
MOV ECX, EDI 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
CBW  
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RBX 
AND RDX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -91 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDX] 
SUB AL, 34 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
