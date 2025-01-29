.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -29 # instrumentation
ADC AL, DIL 
CLC  
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EBX 
INC RDX 
CMOVNLE RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX], 69 
ADD SIL, -4 # instrumentation
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
CMOVNZ RCX, RBX 
ADD AX, AX 
NEG CL 
ADD CL, DIL 
AND RDX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDX] 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RBX 
ADC DI, DX 
CMOVNB RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 46 
SBB ECX, -7 
ADC DX, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
CMP EAX, 465894711 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 54 # instrumentation
CMOVB CX, AX 
CMOVS RAX, RSI 
MOVZX EDI, DL 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -50 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
LEA BX, qword ptr [RCX + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
