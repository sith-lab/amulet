.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], 2112781353 
SUB EAX, -1500080481 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RAX] 
IMUL RBX, RDX 
ADD DIL, 83 # instrumentation
CMOVNZ CX, SI 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 98 # instrumentation
CMOVBE CX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
JNP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD CL, 127 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
ADC RCX, 66 
CMOVNS EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RAX] 
SUB AX, CX 
SUB RCX, -122 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], DX 
CMP CX, -118 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDX] 
SUB SIL, -103 
JMP .bb_main.5 
.bb_main.5:
ADD EAX, 1052636810 
XCHG DX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RCX] 
IMUL BL 
ADD DIL, 52 # instrumentation
CMOVS CX, BX 
ADC RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
