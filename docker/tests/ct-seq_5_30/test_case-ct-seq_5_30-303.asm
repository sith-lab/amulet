.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
CMOVS RDI, RSI 
IMUL DX 
JMP .bb_main.1 
.bb_main.1:
SUB AX, 19989 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], DI 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 48 
SUB AL, 52 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], -81 
MOV RCX, -93421954145846119 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EBX 
SBB BL, DIL 
JMP .bb_main.2 
.bb_main.2:
IMUL RCX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RCX] 
CMOVBE RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RAX] 
CMOVZ RSI, RDI 
CMOVNL RBX, RDI 
CMOVNBE EBX, ESI 
JMP .bb_main.3 
.bb_main.3:
XCHG RAX, RAX 
XCHG DI, AX 
MOV CX, 32767 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EBX 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], CX 
AND RCX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RCX] 
SBB RDX, 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
