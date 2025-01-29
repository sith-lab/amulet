.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDI] 
ADD AX, -120 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RBX 
AND RSI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RSI] 
SUB RBX, 123 
JMP .bb_main.1 
.bb_main.1:
IMUL BX, AX 
MOVSX DX, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1138199045 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
LAHF  
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 18 # instrumentation
CMOVS RSI, RCX 
ADC ECX, EBX 
SUB CX, 21 
MOV BL, -40 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 74 
CMOVNBE EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
ADC RAX, 1226146939 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDI] 
CMOVBE EDX, ECX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], 12 
AND RBX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RBX] 
MOVSX CX, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
