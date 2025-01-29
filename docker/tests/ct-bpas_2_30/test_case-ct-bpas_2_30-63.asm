.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -92 # instrumentation
MOVSX SI, DL 
CMOVNO RAX, RSI 
IMUL ECX, EDI, -112 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RDX] 
CBW  
CWD  
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
ADD DIL, 53 # instrumentation
CMOVNS EDX, EBX 
SBB BL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
MOV RDI, -8082564676146395337 
CMOVNO EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EBX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DX 
CMOVS BX, DX 
DEC DIL 
MOVZX RAX, CX 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
CMC  
ADC RAX, -1495868227 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], -8 
AND RCX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDX] 
CMP ECX, EAX 
SBB DL, DL 
AND RCX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RCX] 
CMOVLE RSI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
