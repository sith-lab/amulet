.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], CX 
MOVSX AX, BL 
MOVSX BX, AL 
CMOVNB EDX, EAX 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, -54 # instrumentation
CMOVNZ EDX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], BX 
ADD RAX, 88 
SBB RAX, 176387672 
CMOVB RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RBX] 
IMUL EDI, EBX 
ADD SIL, 101 # instrumentation
CWDE  
MOV BX, -11825 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], SIL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
SBB AL, -66 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RBX] 
SUB BL, AL 
MOV CL, 44 
SUB AX, -17678 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL DX 
ADD AX, AX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 92 
SBB DIL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
