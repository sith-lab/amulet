.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
MUL AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDX 
SBB AX, 25293 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -49 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -54 
SBB RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], SI 
SBB ECX, 58 
CMOVBE RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
IMUL SIL 
SBB RDI, -6 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
MUL ECX 
MUL AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
CMOVP EDX, EDX 
CMOVNB RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -113 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
