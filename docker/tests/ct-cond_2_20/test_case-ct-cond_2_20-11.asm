.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], SI 
CMP SI, -53 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -111 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RCX] 
ADD DL, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RBX 
ADC BX, DX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RSI] 
ADC RSI, -77 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -103 
CMOVNO RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RCX 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
MOVZX ESI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
