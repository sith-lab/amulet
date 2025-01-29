.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWD  
ADD CX, CX 
XCHG DX, AX 
INC EDX 
AND RAX, 2142071742 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 102 
AND CX, -86 
XCHG DX, AX 
AND RSI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RSI] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 110 # instrumentation
XCHG EBX, EBX 
CMOVO RDX, RBX 
XOR DX, -79 
SETP DL 
SETLE AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
ADC EBX, ESI 
CMP CX, DX 
SBB SIL, -63 
CMOVNO ECX, EDX 
XADD BL, CL 
SETNB DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -125 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -36 # instrumentation
ADC DIL, -64 
SBB RAX, 121890989 
SUB DL, CL 
ADC CL, 106 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], ECX 
ADD ECX, EDI 
MOVZX RCX, CX 
SETNBE DIL 
LEA AX, qword ptr [RDX] 
OR RAX, RSI 
TEST RAX, -270500736 
ADD SIL, -70 # instrumentation
LAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RSI] 
MOVZX RSI, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
MOVSX ECX, DL 
SETNLE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
