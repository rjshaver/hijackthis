VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsEvents"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public WithEvents BtnInArr      As CommandButton
Attribute BtnInArr.VB_VarHelpID = -1
Public WithEvents lstBoxInArr   As ListBox
Attribute lstBoxInArr.VB_VarHelpID = -1
Public WithEvents txtBoxInArr   As TextBox
Attribute txtBoxInArr.VB_VarHelpID = -1
Public WithEvents chkBoxInArr   As CheckBox
Attribute chkBoxInArr.VB_VarHelpID = -1

Private ControlHasFocus As Boolean


' ================ Buttons =================

Private Sub BtnInArr_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    '������� ����� � ������ (��������� ������ �������� ������� ��������������, ������� ������� �� �����, �������� � ������� �������� - ���� Config)
    'With frmMain.cmdMainMenu
    With frmMain.cmdHidden
        If Not (BtnInArr.Name = "cmdStartupList") And _
            Not (BtnInArr.Name = "cmdADSSpy") And _
            Not (BtnInArr.Name = "cmdProcessManager") Then
            If .Visible Then .SetFocus
        End If
    End With
End Sub

' ================ CheckBoxes ==============

Private Sub chkBoxInArr_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    '������� ����� � �������� (��������� ������ ����� ���������, ������� ����� ������� ���� ������ ���� ������� ��������
    'With frmMain.cmdMainMenu
    With frmMain.cmdHidden
        If .Visible Then .SetFocus
    End With
End Sub

' ================ TextBoxes ===============

' mouse wheel on focus support
'Private Sub txtBoxInArr_LostFocus()
'    ControlHasFocus = False
'End Sub
'Private Sub txtBoxInArr_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'    If Not ControlHasFocus Then
'        If txtBoxInArr.Name <> "txtHelp" Then
'            ControlHasFocus = True: txtBoxInArr.SetFocus
'        End If
'    End If
'End Sub

' ================ ListBoxes ===============

'' mouse wheel on focus support
'Private Sub lstBoxInArr_LostFocus()
'    ControlHasFocus = False
'End Sub
'Private Sub lstBoxInArr_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'    If Not ControlHasFocus Then
'        ControlHasFocus = True
'        If Not bGlobalDontFocusListBox Then
'            lstBoxInArr.SetFocus
'        End If
'    End If
'End Sub

