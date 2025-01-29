.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDX] 
IMUL SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
IMUL AL 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 64 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RDI] 
CMP RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EAX 
SUB EBX, -88 
CMP BX, -103 
AND RDX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
ADC EDI, EAX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -54 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
SBB EAX, 836916436 
ADC DIL, 50 
MOV AX, -23284 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
INC BL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -99 
SUB DX, AX 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RAX 
IMUL AL 
ADD DIL, 85 # instrumentation
CMOVNZ EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
NEG RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
