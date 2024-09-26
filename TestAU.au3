#include <GUIConstants.au3>
#include <Constants.au3>

#Region ASD

$oSbi = objCreate("Sbimgmnt.ShellExt")
$oSbi.invoke()
$oSbi.GetIDsOfName($parameter)

; --- Variables and Data Types ---
Global $strText = "Hello, AutoIt!"
Global $intNumber = 42
Global $fltDecimal = 3.14
Global $boolFlag = True
Global $arrArray[3] = [1, 2, 3]

MsgBox(0, "Basic Data Types", "String: " & $strText & @CRLF & _
       "Integer: " & $intNumber & @CRLF & "Float: " & $fltDecimal & @CRLF & "Boolean: " & $boolFlag)

#endregion

; --- Control Structures ---

; If-ElseIf-Else Example
If $boolFlag Then
    MsgBox(0, "Control", "Boolean is True")
ElseIf $intNumber = 42 Then
    MsgBox(0, "Control", "Number is 42")
Else
    MsgBox(0, "Control", "Neither condition met")
EndIf

; Loops - For
For $i = 0 To UBound($arrArray) - 1
    MsgBox(0, "Looping", "Array Element: " & $arrArray[$i])
Next

; Loops - While
Local $counter = 0
While $counter < 3
    MsgBox(0, "While Loop", "Counter is " & $counter)
    $counter += 1
WEnd

; Loops - Do Until
Do
    MsgBox(0, "Do Loop", "Counter is " & $counter)
    $counter -= 1
Until $counter = 0

; --- Functions and Parameters ---
Func MyFunction($param1, $param2 = "Default")
    Return $param1 & " " & $param2
EndFunc

Local $result = MyFunction("Hello", "World")
MsgBox(0, "Function", $result)

; --- Arrays ---
Global $arrMulti[2][2] = [["Row1 Col1", "Row1 Col2"], ["Row2 Col1", "Row2 Col2"]]
MsgBox(0, "Multi-Dimensional Array", "Element [1][1]: " & $arrMulti[1][1])

; --- String Functions ---
Local $str = "AutoIt is great!"
Local $strLen = StringLen($str)
Local $strUpper = StringUpper($str)
MsgBox(0, "String Functions", "Length: " & $strLen & @CRLF & "Uppercase: " & $strUpper)

; --- File I/O ---
Local $file = FileOpen("example.txt", 2) ; Open for writing
If $file <> -1 Then
    FileWrite($file, "Writing to file")
    FileClose($file)
    MsgBox(0, "File I/O", "File written successfully")
Else
    MsgBox(0, "File I/O", "Failed to open file")
EndIf

; --- GUI Creation ---
Local $hGUI = GUICreate("Sample GUI", 300, 200)
Local $hButton = GUICtrlCreateButton("Click Me", 100, 70, 100, 30)
GUISetState(@SW_SHOW)

While 1
    Local $msg = GUIGetMsg()
    If $msg = $GUI_EVENT_CLOSE Then ExitLoop
    If $msg = $hButton Then MsgBox(0, "Button Clicked", "You clicked the button!")
WEnd

GUIDelete($hGUI)

; --- COM Automation (e.g., Excel) ---
Local $oExcel = ObjCreate("Excel.Application")
If IsObj($oExcel) Then
    $oExcel.Visible = True
    $oExcel.Workbooks.Add
    $oExcel.Cells(1, 1).Value = "Hello from AutoIt"
    MsgBox(0, "COM Automation", "Excel automation example.")
    $oExcel.Quit()
Else
    MsgBox(0, "COM Automation", "Failed to create Excel COM object.")
EndIf

; --- Error Handling ---
Func ErrorHandlingExample()
    Local $result = DivByZero(10, 0)
    If @error Then
        MsgBox(0, "Error Handling", "An error occurred: " & @error)
    EndIf
EndFunc

Func DivByZero($a, $b)
    If $b = 0 Then Return SetError(1, 0, 0) ; Set error code 1 if division by zero
    Return $a / $b
EndFunc

ErrorHandlingExample()

; --- Registry Handling ---
RegWrite("HKCU\Software\MyApp", "TestValue", "REG_SZ", "AutoIt is cool!")
Local $value = RegRead("HKCU\Software\MyApp", "TestValue")
MsgBox(0, "Registry", "Registry value read: " & $value)

; --- HotKeys ---
HotKeySet("{F5}", "HotKeyPressed")

Func HotKeyPressed()
    MsgBox(0, "HotKey", "F5 was pressed!")
EndFunc

; Waiting for hotkey to be pressed
MsgBox(0, "HotKey", "Press F5 to test the hotkey!")

; --- Include Files ---
; AutoIt allows using includes for modularization
; Example: #include <Array.au3>

; --- Exiting the Script ---
MsgBox(0, "Goodbye", "Script execution finished. Exiting...")
Exit
