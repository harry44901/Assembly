INCLUDE Irvine32.inc

.data
amount DWORD ?
result DWORD ?
usdToPkrRate DWORD 280
eurToPkrRate DWORD 303
gbpToPkrRate DWORD 351
jpyToPkrRate DWORD 211
audToPkrRate DWORD 184
inrToPkrRate DWORD 350
afnToPkrRate DWORD 325

welcomeMsg BYTE "Welcome to Currency Converter to PKR!", 0
menu1 BYTE "1. USD to PKR", 0
menu2 BYTE "2. EUR to PKR", 0
menu3 BYTE "3. GBP to PKR", 0
menu4 BYTE "4. JPY to PKR", 0
menu5 BYTE "5. AUD to PKR", 0
menu6 BYTE "6. INR to PKR", 0
menu7 BYTE "7. AFN to PKR", 0
menu8 BYTE "8. Exit", 0

prompt BYTE "Enter your choice: ", 0
amountPrompt BYTE "Enter the amount: ", 0
invalidMsg BYTE "Invalid choice! Please enter a number between 1 and 8.", 0
resultMsg BYTE "Converted amount in PKR: ", 0
exitMsg BYTE "Exiting the program. Goodbye!", 0

.code
main PROC

    mov edx, OFFSET welcomeMsg
    call WriteString
    call Crlf

mainLoop:
    mov edx, OFFSET menu1
    call WriteString
    call Crlf

    mov edx, OFFSET menu2
    call WriteString
    call Crlf

    mov edx, OFFSET menu3
    call WriteString
    call Crlf

    mov edx, OFFSET menu4
    call WriteString
    call Crlf

    mov edx, OFFSET menu5
    call WriteString
    call Crlf

    mov edx, OFFSET menu6
    call WriteString
    call Crlf

    mov edx, OFFSET menu7
    call WriteString
    call Crlf

    mov edx, OFFSET menu8
    call WriteString
    call Crlf

    mov edx, OFFSET prompt
    call WriteString
    call ReadInt
    mov ebx, eax

    cmp ebx, 1
    je usdToPkr
    cmp ebx, 2
    je eurToPkr
    cmp ebx, 3
    je gbpToPkr
    cmp ebx, 4
    je jpyToPkr
    cmp ebx, 5
    je audToPkr
    cmp ebx, 6
    je inrToPkr
    cmp ebx, 7
    je afnToPkr
    cmp ebx, 8
    je exitProgram
    jmp invalidChoice

usdToPkr:
    mov edx, OFFSET amountPrompt
    call WriteString
    call ReadInt
    mov amount, eax

    mov eax, amount
    mov edx, usdToPkrRate
    imul eax, edx
    mov result, eax
    jmp printResult

eurToPkr:
    mov edx, OFFSET amountPrompt
    call WriteString
    call ReadInt
    mov amount, eax

    mov eax, amount
    mov edx, eurToPkrRate
    imul eax, edx
    mov result, eax
    jmp printResult

gbpToPkr:
    mov edx, OFFSET amountPrompt
    call WriteString
    call ReadInt
    mov amount, eax

    mov eax, amount
    mov edx, gbpToPkrRate
    imul eax, edx
    mov result, eax
    jmp printResult

jpyToPkr:
    mov edx, OFFSET amountPrompt
    call WriteString
    call ReadInt
    mov amount, eax

    mov eax, amount
    mov edx, jpyToPkrRate
    imul eax, edx
    mov result, eax
    jmp printResult

audToPkr:
    mov edx, OFFSET amountPrompt
    call WriteString
    call ReadInt
    mov amount, eax

    mov eax, amount
    mov edx, audToPkrRate
    imul eax, edx
    mov result, eax
    jmp printResult

inrToPkr:
    mov edx, OFFSET amountPrompt
    call WriteString
    call ReadInt
    mov amount, eax

    mov eax, amount
    mov edx, inrToPkrRate
    imul eax, edx
    mov result, eax
    jmp printResult

afnToPkr:
    mov edx, OFFSET amountPrompt
    call WriteString
    call ReadInt
    mov amount, eax

    mov eax, amount
    mov edx, afnToPkrRate
    imul eax, edx
    mov result, eax
    jmp printResult

invalidChoice:
    mov edx, OFFSET invalidMsg
    call WriteString
    jmp mainLoop

printResult:
    mov edx, OFFSET resultMsg
    call WriteString
    mov eax, result
    call WriteInt
    call Crlf
    jmp mainLoop

exitProgram:
    mov edx, OFFSET exitMsg
    call WriteString
    call Crlf
    exit

main ENDP

END main
