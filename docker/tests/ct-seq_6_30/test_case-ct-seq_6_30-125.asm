.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RDX, -105 
CMOVP RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DIL 
CMOVZ BX, SI 
IMUL BL 
LEA DX, qword ptr [RSI + RCX] 
JNB .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], AL 
CMP AX, -13576 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RAX] 
ADD SIL, 1 # instrumentation
ADC AX, -31247 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
CMOVNLE BX, DX 
IMUL CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDX] 
MOVSX ECX, DL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RCX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ECX 
CMP ESI, 70 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EAX 
MOVZX EDI, CX 
LOOP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -63 
MOV AL, CL 
MOV SIL, DIL 
MOVZX CX, DL 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 35 # instrumentation
MOVZX ECX, DL 
CWD  
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
