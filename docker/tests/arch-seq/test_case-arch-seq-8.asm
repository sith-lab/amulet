.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RSI] 
NOT DL 
AND RAX, 1771014342 
TEST BL, BL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], CX 
CMOVP BX, DX 
OR DX, 59 
OR RBX, RCX 
SETNZ DL 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, -116 # instrumentation
MOVSX RCX, DI 
SETNZ DL 
AND RSI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RSI] 
TEST CL, -19 
CMOVB EDX, EAX 
MUL DX 
ADC AL, 94 
AND RSI, -125 
CMP BL, AL 
AND BL, BL 
SETB DL 
AND RSI, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RSI] 
CLD  
JMP .bb_main.2 
.bb_main.2:
CMP RAX, -355529758 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
SBB CL, CL 
CMP RCX, RDX 
CMOVNO ECX, EDI 
SETNP AL 
XADD RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
CLC  
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 114 # instrumentation
MOV BX, AX 
LAHF  
MOVSX RSI, BL 
SBB DL, 84 
MOVSX EAX, DL 
CMOVO RSI, RDI 
TEST AX, -19054 
AND RAX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RAX] 
AND AL, 45 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
