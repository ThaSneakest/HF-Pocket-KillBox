VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "C:\Program Files (x86)\VBReFormer\Lib\MSCOMCTL.OCX"

Begin VB.Form FrmKillBox
    Caption = "Pocket Killbox"
    ScaleMode = 1
    AutoRedraw = -1              'True
    FontTransparent = -1              'True
    BorderStyle = 1
    Icon = FrmKillBox.frx:0000
    LinkTopic = "Form1"
    MaxButton = 0              'False
    ClientLeft   = 2100
    ClientTop    = 1380
    ClientWidth  = 8385
    ClientHeight = 3765
    StartupPosition = 2
    Begin VB.Timer TmrEffects
        Enabled = 0              'False
        Left = 7320
        Top = 0
    End
    Begin MSComctlLib.StatusBar StatusBar1
        Left   = 0
        Top    = 3390
        Width  = 8385
        Height = 375
        TabIndex = 25
        OleObjectBlob = FrmKillBox.frx:031E
        Align = 2
    End
    Begin VB.CheckBox ChkKeepEnd
        Caption = "Auto End Task"
        Left   = 5520
        Top    = 2880
        Width  = 1455
        Height = 255
        TabIndex = 24
    End
    Begin VB.Timer TmrProcess
        Enabled = 0              'False
        Interval = 5000
        Left = 7800
        Top = 0
    End
    Begin VB.CommandButton CmdEndTask
        Caption = "EndTask"
        Left   = 7200
        Top    = 2880
        Width  = 1095
        Height = 255
        MousePointer = 99
        TabIndex = 23
        MouseIcon = FrmKillBox.frx:031E
        BeginProperty Font
            Name          = "MS Sans Serif"
            Size          = 8.25
            Charset       = 0
            Weight        = 700
            Underline     = 0              'False
            Italic        = 0              'False
            Strikethrough = 0              'False
        EndProperty
        Appearance = 0
    End
    Begin VB.ListBox ListNoRun
        Left   = 5520
        Top    = 240
        Width  = 2775
        Height = 2535
        TabIndex = 22
        Style = 1
    End
    Begin VB.Timer ChkTimer
        Interval = 1000
        Left = 4080
        Top = 1080
    End
    Begin VB.Timer RegTimer
        Enabled = 0              'False
        Interval = 1000
        Left = 4440
        Top = 1080
    End
    Begin VB.CommandButton CmdExit
        Caption = "E&xit"
        Left   = 4560
        Top    = 2760
        Width  = 735
        Height = 375
        MousePointer = 99
        TabIndex = 15
        MouseIcon = FrmKillBox.frx:063C
        BeginProperty Font
            Name          = "MS Sans Serif"
            Size          = 8.25
            Charset       = 0
            Weight        = 700
            Underline     = 0              'False
            Italic        = 0              'False
            Strikethrough = 0              'False
        EndProperty
        ToolTipText = "Exit KillBox"
    End
    Begin VB.Frame Frame1
        Caption = "Full Path of File to Delete"
        Left   = 120
        Top    = 120
        Width  = 5295
        Height = 3195
        TabIndex = 0
        BeginProperty Font
            Name          = "MS Sans Serif"
            Size          = 8.25
            Charset       = 0
            Weight        = 700
            Underline     = 0              'False
            Italic        = 0              'False
            Strikethrough = 0              'False
        EndProperty
        Begin VB.CheckBox ChkRegDACL
            Caption = "Add Permissions"
            Left   = 240
            Top    = 2640
            Width  = 1815
            Height = 255
            Enabled = 0              'False
            Visible = 0              'False
            TabIndex = 21
        End
        Begin VB.ComboBox Combo2
            Left   = 120
            Top    = 240
            Width  = 3375
            Height = 315
            Text = "Combo21"
            TabIndex = 1
            OLEDropMode = 1
        End
        Begin VB.TextBox Destinationtxt
            Left   = 120
            Top    = 600
            Width  = 4575
            Height = 315
            TabIndex = 5
        End
        Begin VB.Frame Frame2
            Left   = 2160
            Top    = 2040
            Width  = 3015
            Height = 555
            TabIndex = 20
            BorderStyle = 0
            Begin VB.OptionButton OptMulti
                Caption = "All Files"
                Left   = 1560
                Top    = 45
                Width  = 1335
                Height = 420
                Enabled = 0              'False
                TabIndex = 14
                Style = 1
            End
            Begin VB.OptionButton OptSingle
                Caption = "Single File"
                Left   = 120
                Top    = 45
                Width  = 1335
                Height = 420
                Enabled = 0              'False
                TabIndex = 13
                Style = 1
            End
        End
        Begin VB.CommandButton CmdKill
            Left   = 4740
            Top    = 240
            Width  = 435
            Height = 315
            MousePointer = 99
            TabIndex = 4
            MouseIcon = FrmKillBox.frx:095A
            BeginProperty Font
                Name          = "MS Sans Serif"
                Size          = 8.25
                Charset       = 0
                Weight        = 700
                Underline     = 0              'False
                Italic        = 0              'False
                Strikethrough = 0              'False
            EndProperty
            Picture = FrmKillBox.frx:0C78
            ToolTipText = "Delete File"
            Style = 1
        End
        Begin VB.CommandButton CmdProperites
            Left   = 4320
            Top    = 240
            Width  = 435
            Height = 315
            MousePointer = 99
            TabIndex = 3
            MouseIcon = FrmKillBox.frx:0DD6
            BeginProperty Font
                Name          = "MS Sans Serif"
                Size          = 8.25
                Charset       = 0
                Weight        = 700
                Underline     = 0              'False
                Italic        = 0              'False
                Strikethrough = 0              'False
            EndProperty
            Picture = FrmKillBox.frx:10F4
            ToolTipText = "Show File Properties"
            Style = 1
        End
        Begin VB.CommandButton CmdFileFind
            Left   = 3900
            Top    = 240
            Width  = 435
            Height = 315
            Visible = 0              'False
            TabIndex = 19
            Picture = FrmKillBox.frx:1252
            ToolTipText = "File Find"
            Style = 1
        End
        Begin VB.CommandButton CmdBanner
            Left   = 5040
            Top    = 1680
            Width  = 255
            Height = 255
            Visible = 0              'False
            TabIndex = 17
            BeginProperty Font
                Name          = "MS Sans Serif"
                Size          = 8.25
                Charset       = 0
                Weight        = 700
                Underline     = 0              'False
                Italic        = 0              'False
                Strikethrough = 0              'False
            EndProperty
        End
        Begin VB.CommandButton cmdBrowse2
            Left   = 4740
            Top    = 600
            Width  = 435
            Height = 315
            MousePointer = 99
            TabIndex = 6
            MouseIcon = FrmKillBox.frx:17F0
            BeginProperty Font
                Name          = "MS Sans Serif"
                Size          = 8.25
                Charset       = 0
                Weight        = 700
                Underline     = 0              'False
                Italic        = 0              'False
                Strikethrough = 0              'False
            EndProperty
            Picture = FrmKillBox.frx:1B0E
            ToolTipText = "Browse for File"
            Style = 1
        End
        Begin VB.OptionButton OptNormal
            Caption = "Standard File Kill"
            Left   = 60
            Top    = 1440
            Width  = 1755
            Height = 255
            TabIndex = 7
            Value = 255
        End
        Begin VB.CheckBox ChkDummy
            Caption = "Use Dummy"
            Left   = 240
            Top    = 2340
            Width  = 1515
            Height = 255
            TabIndex = 10
        End
        Begin VB.OptionButton OptDelReboot
            Caption = "Delete on Reboot"
            Left   = 60
            Top    = 1740
            Width  = 1875
            Height = 255
            TabIndex = 8
        End
        Begin VB.OptionButton OptRepReboot
            Caption = "Replace on Reboot"
            Left   = 60
            Top    = 2040
            Width  = 1875
            Height = 255
            TabIndex = 9
        End
        Begin VB.CheckBox ChkUnregDll
            Caption = "Unregister .dll Before Deleting"
            Left   = 2160
            Top    = 1740
            Width  = 2835
            Height = 255
            TabIndex = 12
        End
        Begin VB.CheckBox ChkEndExplorer
            Caption = "End Explorer Shell While Killing File"
            Left   = 2160
            Top    = 1440
            Width  = 2835
            Height = 255
            TabIndex = 11
        End
        Begin VB.CommandButton CmdBrowse
            Left   = 3900
            Top    = 240
            Width  = 435
            Height = 315
            MousePointer = 99
            TabIndex = 2
            MouseIcon = FrmKillBox.frx:1C6C
            BeginProperty Font
                Name          = "MS Sans Serif"
                Size          = 8.25
                Charset       = 0
                Weight        = 700
                Underline     = 0              'False
                Italic        = 0              'False
                Strikethrough = 0              'False
            EndProperty
            Picture = FrmKillBox.frx:1F8A
            Style = 1
        End
        Begin VB.Label LblMonitor
            Caption = "+"
            ForeColor = 8388608
            Left   = 4920
            Top    = 1080
            Width  = 255
            Height = 255
            Visible = 0              'False
            TabIndex = 18
            Alignment = 2
            BeginProperty Font
                Name          = "MS Sans Serif"
                Size          = 9.75
                Charset       = 0
                Weight        = 400
                Underline     = 0              'False
                Italic        = 0              'False
                Strikethrough = 0              'False
            EndProperty
        End
        Begin VB.Line Line1
            X1 = 240
            Y1 = 1320
            X2 = 4920
            Y2 = 1320
            DrawMode = 1
        End
        Begin VB.Label LblFiletoKill
            ForeColor = 16711680
            Left   = 120
            Top    = 960
            Width  = 5115
            Height = 315
            TabIndex = 16
            BeginProperty Font
                Name          = "MS Sans Serif"
                Size          = 8.25
                Charset       = 0
                Weight        = 700
                Underline     = 0              'False
                Italic        = 0              'False
                Strikethrough = 0              'False
            EndProperty
        End
    End
    Begin VB.Menu mnuFile
        Caption = "File"
        Begin VB.Menu mnuKillbaks
            Caption = "Open !KillBox Backups"
        End
        Begin VB.Menu mnuClipPaste
            Caption = "Paste from Clipboard"
        End
        Begin VB.Menu mnuSysTask
            Caption = "Run as System Task"
        End
        Begin VB.Menu mnuLogs
            Caption = "Logs"
            Begin VB.Menu mnuHistory
                Caption = "Actions History Log"
            End
            Begin VB.Menu mnuOutTxt
                Caption = "Current items Log"
            End
            Begin VB.Menu mnuNewLog
                Caption = "* Start New Log"
            End
        End
        Begin VB.Menu mnuCleanUp
            Caption = "Cleanup"
            Begin VB.Menu mnuDelBacks
                Caption = "Delete all Backups"
            End
            Begin VB.Menu mnukbDummy
                Caption = "Delete all Dummy Files"
            End
        End
    End
    Begin VB.Menu mnuTools
        Caption = "Tools"
        Begin VB.Menu mnuFfind
            Caption = "File Find"
            ShortCut = 6
        End
        Begin VB.Menu mnuExplorer
            Caption = "Start Explorer Shell"
        End
        Begin VB.Menu mnuDelTemp
            Caption = "Delete Temp Files"
        End
        Begin VB.Menu mnuSessionMan
            Caption = "Go to SessionManager"
        End
        Begin VB.Menu mnuWininit
            Caption = "Open Wininit.ini"
        End
        Begin VB.Menu mnuHosts
            Caption = "Hosts File"
        End
        Begin VB.Menu mnuServices
            Caption = "Open Services"
        End
    End
    Begin VB.Menu mnuAddRem
        Caption = "Remove Item"
        Begin VB.Menu mnuClearTxt
            Caption = "Clear Text"
        End
        Begin VB.Menu mnuRemSel
            Caption = "Remove Selected"
            ShortCut = 77
        End
        Begin VB.Menu mnuClear
            Caption = "Clear All Items"
            ShortCut = 78
        End
        Begin VB.Menu mnuRemSessMan
            Caption = "Remove PendingFileRenameOperations"
            Enabled = 0              'False
        End
        Begin VB.Menu mnuDelWininit
            Caption = "Delete Wininit.ini"
            Enabled = 0              'False
        End
    End
    Begin VB.Menu mnuOpt
        Caption = "Options"
        Begin VB.Menu mnuRemDupes
            Caption = "Remove Duplicates"
            Checked = -1              'True
        End
        Begin VB.Menu mnuRemDir
            Caption = "Remove Directories"
        End
        Begin VB.Menu mnuAutoP
            Caption = "Auto Parse"
        End
        Begin VB.Menu mnu83
            Caption = "8.3 Names"
            Begin VB.Menu mnuNoFormat
                Caption = "Original Format"
                Checked = -1              'True
            End
            Begin VB.Menu mnuLong
                Caption = "Use Long Names"
            End
            Begin VB.Menu mnuShort
                Caption = "Use Short Names"
            End
            Begin VB.Menu mnuUnC
                Visible = 0              'False
                Caption = "Use UNC Names"
            End
        End
        Begin VB.Menu mnuShutdown
            Caption = "Shutdown"
            Begin VB.Menu mnuFShutdown
                Caption = "Forced ShutDown"
            End
            Begin VB.Menu mnuFreboot
                Caption = "Forced Reboot"
            End
        End
    End
    Begin VB.Menu mnuHelp
        Caption = "Help"
        Begin VB.Menu mnuHelpFile
            Caption = "KillBox Description and Usage"
        End
        Begin VB.Menu mnuPayPal
            Caption = "Donate with PayPal"
        End
        Begin VB.Menu mnuSep1
            Caption = "-"
        End
        Begin VB.Menu mnuAbout
            Caption = "About Killbox"
        End
        Begin VB.Menu mnuUpdate
            Caption = "Check for Updates"
        End
    End
    Begin VB.Menu mnuExpand
        Caption = " Processes >>"
    End
    Begin VB.Menu mnuPopup
        Visible = 0              'False
        Caption = "Popup"
        Begin VB.Menu mnuLstChkAll
            Caption = "Check ALL"
        End
        Begin VB.Menu mnulstUnChkAll
            Caption = "UnCheck ALL"
        End
        Begin VB.Menu mnulstRefresh
            Caption = "Refresh List"
        End
    End
End
Public Function DisplayFileProperties(arg_0 As String, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
var_num1 = Empty
var_18 = (arg_0)
var_16 = (arg_0)
var_2 = ("properties")
Call ShellExecuteEx ()  '(API Sub call...)

End Function


Public Function ChMkDummy(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Set var_14 = Nothing

If (var_14 < 0) Then
    
End If
var_num2 = Empty

If (0 = 1) Then
    Set var_14 = Nothing
    
    If (    var_14 < 0) Then
    
End If
Call sub_416200()
var_15 = (vbNullString) & ("\kbdummy.txt")
Open var_15 For Output As #88 Len = -1
Print #88, "dummy file for KillBox"
Print #88, "It is safe to delete this file"
Close #88
var_103 = ("kbdummy.") & (CStr(0))
Call sub_416200()
var_17 = (var_103) & ("\")
var_104 = (var_17) & (var_103)
var_16 = (var_104)
Call PathFileExistsA ()  '(API Sub call...)

Do While (CBool(CStr(-4516)) = -1)
    var_num1 = var_18 + 1
    
Loop
Call sub_416200()
Call sub_416200()
var_27 = (-4504) & ("\")
var_105 = (var_27) & (var_103)
var_74 = (var_105)
var_27 = (-312) & ("\kbdummy.txt")
var_2 = (var_27)
Call MoveFileA ()  '(API Sub call...)
Set var_14 = Me
Call sub_416200()
Call sub_415330()
var_106 = (FrmKillBox) & ("\")
var_17 = (var_106) & (var_103)

'ERROR: Two many next close:
End If
Set var_14 = Nothing

If (var_14 < 0) Then
    
End If
Set var_14 = Nothing

If (var_14 < 0) Then
    
End If

End Function


Private Function sub_41E6F0(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
var_num1 = Empty
Set var_20 = arg_0
var_24 = var_20.hwnd()
Call ClientToScreen ()  '(API Sub call...)
var_24 = var_20.Width()

If (FrmKillBox < 0) Then
    
End If
var_7 = var_20.Height()
Call SetCursorPos ()  '(API Sub call...)

End Function


Public Function ProcessLoad(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
var_num1 = Empty
Call CreateToolhelp32Snapshot ()  '(API Sub call...)
Call Process32First ()  '(API Sub call...)
var_91 = (-1308)

Do While (CBool(var_91))
    var_num1 = InStr(260, Chr$(0), Chr$(0), 0) - 1
    var_num4 = Empty
    LSet  = 
    Call sub_4167C0()
    var_107 = (Left$(260))
    Call sub_4171B0()
    Set var_108 = Me
    Call sub_417690()
    
    If (    -1656 - 16 < 0) Then
    
End If
Call sub_4167C0()

If (-1656 - 16 = 2) Then
    Set var_108 = Me
    
    If (    FrmKillBox < 0) Then
    
End If

'ERROR: Two many next close:
End If
Call Process32Next ()  '(API Sub call...)
var_91 = (-848)

'ERROR: Two many next close:
Loop
Call CloseHandle ()  '(API Sub call...)

If (Me < 0) Then
    
End If
Set var_108 = Me

If (var_108 < 0) Then
    
End If

End Function


Public Function Backups(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Call sub_416020()
Call sub_4171B0()
Call sub_417620()
var_15 = (arg_7) & ("\")
var_16 = (var_15)
Call MakeSureDirectoryPathExists ()  '(API Sub call...)
Set var_76 = Nothing
var_num1 = 0 - 1
var_num1 = Empty

Do While (var_num1 >= var_num1)
    Set var_76 = var_num1
    Call sub_415330()
    Call sub_4171B0()
    var_19 = (arg_7) & ("\")
    Call sub_417690()
    var_17 = (var_19) & (var_19)
    var_7 = (var_17)
    Call PathFileExistsA ()  '(API Sub call...)
    
    If (    CBool(CStr(-4512)) = 0) Then
    Set var_76 = 
    
    If (    var_76) Then
    
End If
Call sub_417690()
var_19 = (arg_7) & ("\")
var_16 = (var_19) & (-4524)
var_13 = (var_16)
var_7 = (var_19)
Call CopyFileA ()  '(API Sub call...)

'ERROR: Two many next close:
End If
Set var_76 = 
Call sub_417690()
var_46 = (arg_7) & ("\")
var_16 = (var_46) & (-4544)
var_110 = (var_16) & ("(")
var_14 = (#NOT SUPPORTED#)
var_74 = (var_19)
Call CopyFileA ()  '(API Sub call...)
var_num1 = 0 + 1
Set var_55 = var_num1
Call sub_417690()
var_112 = ("Copying File : ") & ()
Set var_55 = Nothing
var_19 = (arg_7) & ("\")
Call sub_417690()
var_113 = (var_19) & (var_19)
Call sub_419DB0()
var_num1 =  + var_num1

'ERROR: Two many next close:
Loop
Set var_76 = var_num1
var_29 = (vbNullChar)
Erase var_11
var_114 = (arg_7) & ("\")
Call sub_41A1A0()
var_num1 = -320 - 1
var_num1 = Empty

Do While (var_num1 <= WORD PTR [EBP+FFFFFF14])
    
    If (    -256 - 12 = 1) Then
    var_num1 = var_num1 - 0
    
    If (    var_num1 >= DWORD PTR [ECX+10]) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_115 = (vbNullString) & ("\!KillBox\")
var_15 = (var_115) & (vbNullString)
var_79 = (var_15)
Call SetFileAttributesA ()  '(API Sub call...)
var_29 = (var_15)
Set var_116 = 
var_117 = ("Resetting Attributes on ") & (var_15)
Set var_116 = Nothing
var_num1 = 1 + var_num1

'ERROR: Two many next close:
Loop
Set var_76 = Nothing

End Function


Public Function RemDupes(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Set var_77 = Nothing

If (var_77 < 0) Then
    
End If
var_num7 = 0 - 1

Do While (var_40 <= var_num7)
    Dim var_9 As New Global
    Set var_77 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
    var_77.[PROPERTY NOT VISIBLE IN FREE EDITION] = CInt(11)
    Set var_77 = Nothing
    Set var_77 = -256 - 12
    DoEvents
    Set var_77 = Nothing
    var_num4 = 0 - 1
    var_num1 = Empty
    
    Do While (    var_40 >= var_num4)
    Set var_77 = var_40 >= var_num4
    Set var_77 = Nothing
    var_num7 = 0 - 1
    Set var_77 = Nothing
    var_num2 = Empty
    
    If (    0 = -1) Then
    
    Do While (    var_num7 >= 0)
    Set var_77 = Nothing
    Set var_77 = Nothing
    var_118 = InStr(1, UCase(vbNullString), UCase(vbNullString), 1)
    var_11 = (InStr(1, UCase(vbNullString), UCase(vbNullString), 1))
    
    If (    ((var_11) <> (var_85))) Then
    Set var_77 = ((var_11) <> (var_85))
    
    If (    var_77) Then
    
End If
var_num4 = Empty
var_num1 = Empty
var_num4 = Len(vbNullString) = Len(vbNullString) And var_num7 <> WORD PTR [EBP-34]
Set var_77 = var_num7 <> WORD PTR [EBP-34]

'ERROR: Two many next close:
End If
DoEvents
var_num1 = var_41 + var_num7

'ERROR: Two many next close:
Loop
DoEvents
var_num1 = 1 + var_40

'ERROR: Two many next close:
Loop
Set var_77 = Nothing

If (0 > 0) Then
    Set var_77 = Nothing
    
End If
Set var_9 = New Global
Set var_77 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_77.[PROPERTY NOT VISIBLE IN FREE EDITION] = CInt(0)
Set var_77 = Nothing

'ERROR: Two many next close:
End If

End Function


Public Function RemDirs(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Set var_40 = Nothing

If (-256 - 12 < 0) Then
    
End If
var_num8 = 0 - 1
Set var_40 = -256 - 12
var_24 = (vbNullString)
Call PathIsDirectoryA ()  '(API Sub call...)

Do While (CBool(CStr(-())) <> -1)
    var_num1 = 1 + 0
    
Loop
Set var_40 = Nothing
Set var_40 = Nothing

If (0 > 0) Then
    Set var_40 = 
    
End If

End Function


Public Function CntFileDir(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Set var_27 = Nothing

If (-256 - 12 < 0) Then
    
End If
var_num1 = 0 - 1

Do While (0 <= var_num1)
    Set var_27 = Nothing
    
    If (    0 < 0) Then
    
End If
var_12 = (vbNullString)
Call PathIsDirectoryA ()  '(API Sub call...)
var_29 = (vbNullString)
var_12 = (vbNullString)
Call PathFileExistsA ()  '(API Sub call...)
var_29 = (vbNullString)

If (CBool(CStr(-4496 <> 0))) Then
    var_num4 = 0 + 1
    
End If

If (CBool(CStr(-4512)) = -1) Then
    var_num1 = 0 + 1
    
End If
var_num3 = 1 + 0

'ERROR: Two many next close:
Loop
var_num1 = 0 - 0

If (0 = 0) Then
    Dim var_119 As New FrmKillBox
End If

End Function


Public Function LogIt(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)

If (arg_B = -1) Then
    var_18 = ("[End Process]")
End If

If (arg_B = 0) Then
    Set var_12 = Nothing
    
    If (    -256 - 12 < 0) Then
    
End If

If (0 = -1) Then
    
End If
Set var_12 = Nothing

If (0 = -1) Then
    
End If
Set var_12 = 

If (var_12 < 0) Then
    
End If
var_num1 = Empty

If (0 = -1) Then
    var_18 = ("[Replace on Delete]")
End If
var_74 = (arg_7) & ("\Logs\kb.log")
var_11 = (var_74)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4524)) = -1) Then
    var_11 = (arg_7) & ("\Logs\kb.log")
    
End If
var_19 = (arg_7) & ("\Logs\kb.log")
Open var_19 For Output As #1 Len = -1
var_120 = (#NOT SUPPORTED#) & (" ")
var_121 = (var_120) & ("[Replace on Delete]")
Print #1, var_121
var_11 = ("Path = ") & (arg_6)
Print #1, var_11
Print #1, vbNullString
Print #1, " "
Close #1
var_num3 = arg_9 + 1

End Function


Public Function LongShort(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Set var_77 = Nothing

If (-256 - 20 < 0) Then
    
End If

If (0 = -1) Then
    On Error Goto handler_0
    Set var_77 = Nothing
    
    If (    var_77 < 0) Then
    
End If
Set var_77 = Nothing

If (var_77 < 0) Then
    
End If

Do While (0 <= CInt(UBound(arg_B, 1)))
    
    If (    arg_B <> 0) Then
    
    If (    arg_B = 1) Then
    var_num7 = 0 - arg_D
    
    If (    var_num7 >= DWORD PTR [EAX+10]) Then
    Err.Raise 9
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_40 = (vbNullString)
Call PathFileExistsA ()  '(API Sub call...)

If (arg_B <> 0) Then
    
    If (    arg_B = 1) Then
    var_num7 = 0 - arg_D
    
    If (    var_num7 >= DWORD PTR [EAX+10]) Then
    Err.Raise 9
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_num3 = arg_C + arg_B
var_122 = (vbNullString)

If (CBool(CStr(-4504)) = -1) Then
    Set var_77 = 
    
    If (    arg_B <> 0) Then
    
    If (    arg_B = 1) Then
    var_num2 = 0 - arg_D
    
    If (    var_num2 >= DWORD PTR [EAX+10]) Then
    Err.Raise 9
End If

'ERROR: Two many next close:
End If
Err.Raise 9
DoEvents
var_num2 = Empty
'ERROR: Two many next close:
End If
var_num1 = 1 + 0

'ERROR: Two many next close:
Loop
Set var_77 = CInt(UBound(arg_B, 1))

If (0 < 0) Then
    Set var_77 = Err
    var_123 = var_77.[PROPERTY NOT VISIBLE IN FREE EDITION]
    
    If (    var_123 = 9) Then
    var_7 = ("Empty Array")
    var_105 = MsgBox(var_7, 0)
    
End If

'ERROR: Two many next close:
End If
Set var_77 = -256 - 20

If (0 < 0) Then
    
End If
var_num2 = -4504 - 1
var_num7 = Empty

Do While (var_77 <= var_num2)
    Set var_77 = Nothing
    Set var_77 = Nothing
    Dim var_9 As New Global
    Set var_77 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
    var_77.[PROPERTY NOT VISIBLE IN FREE EDITION] = CInt(11)
    Set var_77 = Nothing
    Set var_77 = Nothing
    var_num1 = Empty
    
    If (    -4504 = -1) Then
    Call sub_415330()
    Set var_77 = Nothing
    Set var_77 = Nothing
    
End If
Set var_77 = Nothing

If (-4504 = -1) Then
    Call sub_416360()
    Set var_77 = Nothing
    Set var_77 = Nothing
    
End If
Set var_77 = 
var_num1 = Empty

If (-4504 = -1) Then
    Call sub_4141F0()
    Set var_77 = -4504 = -1
    Set var_77 = var_77
    
End If
DoEvents
var_num7 = var_124 + var_77

'ERROR: Two many next close:
Loop
Set var_77 = Nothing

If (-4504 > 0) Then
    Set var_77 = 
    
End If
Set var_77 = 
Set var_77 = var_77
Set var_9 = New Global
Set var_77 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_77.[PROPERTY NOT VISIBLE IN FREE EDITION] = CInt(0)

'ERROR: Two many next close:
End If

End Function


Public Function AddHeader(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Call sub_416840()

If (FrmKillBox = 6) Then
    var_29 = ("Windows XP")
    Call IsNTAdmin ()  '(API Sub call...)
    
End If
Call sub_416840()

If (FrmKillBox = 5) Then
    var_29 = ("Windows 2000")
    Call IsNTAdmin ()  '(API Sub call...)
    var_num4 = Empty
    
End If
Call sub_416840()

If (FrmKillBox = 4) Then
    Call IsNTAdmin ()  '(API Sub call...)
    var_num1 = Empty
    var_29 = ("Windows NT")
    
End If
Call sub_416840()

If (FrmKillBox = 3) Then
    var_29 = ("Windows Me")
    
End If
Call sub_416840()

If (FrmKillBox = 2) Then
    var_29 = ("Windows 98")
    
End If
Call sub_416840()

If (FrmKillBox = 1) Then
    var_29 = ("Windows 95")
    
End If
Call sub_4167C0()

If (FrmKillBox = 2) Then
    var_12 = ("(Limited Account)")
End If
var_15 = (arg_7) & ("\Logs\kb.log")
var_27 = (var_15)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4500)) = -1) Then
    var_40 = (arg_7) & ("\Logs\kb.log")
    
    If (    vbNullChar = 0) Then
    
End If
var_num1 = CLng((((FileLen(var_40))) / 1024#))

If (var_num1 > 100) Then
    var_126 = MsgBox(#NOT SUPPORTED#, 0)
    
End If
var_129 = (arg_7) & ("\Logs\kb.log")

'ERROR: Two many next close:
End If
var_19 = (arg_7) & ("\Logs\kb.log")
Open var_19 For Output As #1 Len = -1

If (((vbNullString) <> (vbNullChar))) Then
    Print #1, "New Log Created"
    Print #1, vbNullString
    Print #1, " "
    
End If
Dim var_9 As New Global
Set var_7 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_40 = var_7.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_130 = (var_40) & ("\KillBox.exe")
Call sub_414CA0()
var_5 = ("Pocket Killbox version ") & (var_130)
Print #1, var_5
Call sub_416490()
var_40 = ("Running on ") & ("Windows 95")
var_131 = (var_40) & (" as ")
var_40 = (var_131) & (-4600)
var_132 = (var_40) & ("(Limited Account)")
Print #1, var_132
var_4 = ("dddd, mmmm dd, yyyy, h:mm AM/PM")
Print #1, 
Print #1, " "
Close #1

End Function


Public Function KillFolder(arg_0 As String, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
var_11 = (arg_0)
On Error Resume Next

If (((Right(arg_0, 1)) = ("\"))) Then
    var_num1 = Len(arg_0) - 1
    
End If
Dim var_29 As New FileSystemObject
var_84 = var_29.[METHOD NOT VISIBLE IN FREE EDITION](Left(arg_0, var_num1))

If (0 < 0) Then
    
End If
SetAttr Left(arg_0, var_num1), 0

If (var_29 = 0) Then
    Set var_29 = New FileSystemObject
    
End If
Call var_29.[METHOD NOT VISIBLE IN FREE EDITION](Left(arg_0, var_num1), True)

If (0 < 0) Then
    
End If
Set var_12 = Err
var_22 = var_12.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (0 < 0) Then
    
End If

If (var_29 = 0) Then
    Set var_29 = New FileSystemObject
    
End If
var_84 = var_29.[METHOD NOT VISIBLE IN FREE EDITION](Left(arg_0, var_num1))

If (0 < 0) Then
    
End If
var_num3 = Empty
var_num4 = Empty
var_num3 = var_22 = 0 And var_84 = 0

End Function


Public Function FileFind(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Set var_27 = Nothing

If (-256 - 12 < 0) Then
    
End If

If (((vbNullString) = (vbNullChar))) Then
    var_14 = ("File Find")
    var_2 = ("Enter All or Part of Filename in Yellow Box")
    var_104 = MsgBox(var_2, 48, var_14)
    Set var_27 = 
    Set var_27 = var_27
    Set var_27 = var_27
    
End If

If (CInt(InStr(1, vbNullString, ".", 1)) = 0) Then
    
End If
var_129 = (vbNullString) & ("*")
Dim var_9 As New Global
Set var_27 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (var_9.[PROPERTY NOT VISIBLE IN FREE EDITION] < 0) Then
    
End If
var_27.[PROPERTY NOT VISIBLE IN FREE EDITION] = CInt(11)
Set var_27 = Nothing
Set var_27 = -256 - 12
var_29 = (arg_A)
var_18 = (var_129)
Call sub_41BE00()
Dim var_119 As New FrmKillBox
Set var_27 = var_119
Set var_9 = New Global
Set var_27 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_num3 = Empty
var_27.[PROPERTY NOT VISIBLE IN FREE EDITION] = CInt(Global)
Set var_27 = Nothing
Set var_27 = -256 - 12
Set var_27 = Nothing
Set var_27 = Nothing
Set var_27 = Nothing
Set var_27 = Nothing
Set var_27 = Nothing
Set var_27 = Nothing
Set var_27 = Nothing
Set var_27 = Nothing

If (0 = -1) Then
    
End If

End Function


Public Function DeleteOnReboot(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)

If (FrmKillBox < 0) Then
    
End If
Set var_27 = Nothing
var_num1 = Empty

If (0 = var_27) Then
    Set var_77 = Nothing
    Set var_27 = Nothing
    
End If
Call sub_4167C0()

If (0 = var_27) Then
    Set var_27 = Nothing
    var_num7 = 0 - 1
    
    Do While (    var_18 <= var_num7)
    Set var_27 = Nothing
    Set var_27 = Nothing
    var_133 = (vbNullString)
    Set var_27 = Nothing
    var_11 = (vbNullString)
    Call SetFileAttributesA ()  '(API Sub call...)
    Set var_27 = 
    Call sub_416360()
    var_12 = (0)
    Call MoveFileExA ()  '(API Sub call...)
    Set var_27 = Nothing
    
    If (    0 = 1) Then
    Set var_27 = 
    Call sub_416110()
    var_134 = (0) & ("\regsvr32.exe /u /s ")
    var_15 = (var_134) & (vbNullString)
    Call sub_416950()
    
End If
var_num1 = 1 + var_18

'ERROR: Two many next close:
Loop
Set var_27 = Nothing

If (0 = 1) Then
    
End If
Set var_27 = Nothing
var_3 = ("Delete next Reboot")
var_7 = ("Files will be Removed on Reboot, Do you want to reboot now?")
var_129 = MsgBox(var_7, 52, var_3)

If (CInt(var_129) = 6) Then
    Set var_27 = 
    
End If
Set var_27 = 

'ERROR: Two many next close:
End If
Call sub_4167C0()

If (0 = var_27) Then
    Set var_27 = Nothing
    var_num1 = 0 - 1
    
    Do While (    var_18 <= var_num1)
    Set var_27 = var_num1
    Set var_27 = var_27
    var_133 = (0)
    Set var_27 = Nothing
    var_11 = (vbNullString)
    Call SetFileAttributesA ()  '(API Sub call...)
    Call sub_416020()
    var_11 = (var_11) & ("\wininit.ini")
    var_24 = (var_11)
    Call PathFileExistsA ()  '(API Sub call...)
    
    If (    CBool(CStr(-4540)) = -1) Then
    Call sub_416020()
    var_11 = (-4536) & ("\wininit.ini")
    Open var_11 For Append As #3 Len = -1
    Set var_27 = 
    
    If (    var_27) Then
    
End If
Call sub_416360()
var_11 = ("NUL=") & (-296)
Print #3, var_11
Close #3
'ERROR: Two many next close:
End If

If (CBool(CStr(-4540)) = 0) Then
    Call sub_416020()
    var_11 = (-296) & ("\wininit.ini")
    Open var_11 For Output As #3 Len = -1
    Print #3, "[Rename]"
    Set var_27 = Nothing
    Call sub_416360()
    var_11 = ("NUL=") & (-296)
    Print #3, var_11
    Close #3
End If
var_num1 = var_124 + var_18

'ERROR: Two many next close:
Loop
Set var_27 = var_num1
var_123 = ("You will need to Reboot the Computer to Complete the Deletion") & (vbCrLf)
var_11 = (var_123)
Call  ()  '(API Sub call...)

'ERROR: Two many next close:
End If

End Function


Public Function SingleDelOnReboot(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Set var_79 = Nothing

If (-256 - 12 < 0) Then
    
End If
var_num2 = Empty

If (0 = 0) Then
    Set var_79 = -256 - 12
    
    If (    var_79 < 0) Then
    
End If
Set var_16 = Nothing

If (0 < 0) Then
    
End If
Set var_79 = 

If (var_79 < 0) Then
    
End If

'ERROR: Two many next close:
End If
Set var_79 = -256 - 12

If (0 < 0) Then
    
End If
var_133 = (vbNullString)

If (0 < 0) Then
    
End If
Set var_79 = Nothing
Call sub_4171B0()
var_15 = (arg_7) & ("\")
Call sub_417690()
var_135 = (var_15) & (var_15)
var_24 = (var_135)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4504)) = 0) Then
    Set var_79 = 
    
    If (    var_79) Then
    
End If
Call sub_417690()
var_19 = (arg_7) & ("\")
var_10 = (var_19) & (-4496)
var_40 = (var_10)
var_24 = (var_15)
Call CopyFileA ()  '(API Sub call...)

'ERROR: Two many next close:
End If
Set var_79 = 
Call sub_417690()
var_13 = (arg_7) & ("\")
var_10 = (var_13) & (-4496)
var_120 = (var_10) & ("(")
var_27 = (#NOT SUPPORTED#)
var_12 = (var_15)
Call CopyFileA ()  '(API Sub call...)
var_num1 = 0 + 1
Call sub_4167C0()

If (var_num1 = 2) Then
    Set var_79 = var_num1
    var_29 = (var_15)
    Call SetFileAttributesA ()  '(API Sub call...)
    Set var_79 = Nothing
    Call sub_416360()
    var_24 = (-4496)
    Call MoveFileExA ()  '(API Sub call...)
    Set var_79 = Nothing
    var_num1 = Empty
    
    If (    -4504 = 1) Then
    Set var_79 = Nothing
    Call sub_416110()
    var_15 = (vbNullString) & ("\regsvr32.exe /u /s ")
    var_131 = (var_15) & (var_15)
    Call sub_416950()
    
End If
Set var_79 = Nothing

If (-4504 = 1) Then
    
End If
Set var_79 = Nothing
var_83 = ("Delete next Reboot")
var_13 = ("File will be Removed on Reboot, Do you want to reboot now?")
var_136 = MsgBox(var_13, 52, var_83)

If (CInt(var_136) = 6) Then
    Set var_79 = 
    
End If
Call sub_4167C0()

If (var_num1 = 1) Then
    Set var_79 = Nothing
    var_29 = (vbNullString)
    Call SetFileAttributesA ()  '(API Sub call...)
    Call sub_416020()
    var_10 = (-288) & ("\wininit.ini")
    var_11 = (var_10)
    Call PathFileExistsA ()  '(API Sub call...)
    
    If (    CBool(CStr(-4636)) = -1) Then
    Call sub_416020()
    var_10 = (-288) & ("\wininit.ini")
    Open var_10 For Append As #3 Len = -1
    Set var_79 = Nothing
    Call sub_416360()
    var_29 = ("NUL=") & (-288)
    Print #3, var_29
    Close #3
End If

If (CBool(CStr(-4636)) = 0) Then
    Call sub_416020()
    var_10 = (-288) & ("\wininit.ini")
    Open var_10 For Output As #3 Len = -1
    Print #3, "[Rename]"
    Set var_79 = 
    Call sub_416360()
    var_10 = ("NUL=") & (var_10)
    Print #3, var_10
    Close #3
End If
Set var_16 = 
Set var_79 = Nothing
Set var_79 = 

If (-() <> 0) Then
    Set var_79 = Nothing
    
End If
Set var_79 = var_79
var_15 = ("You will need to Reboot the Computer to Complete the Deletion") & (vbCrLf)
var_29 = (var_15)
Call  ()  '(API Sub call...)

'ERROR: Two many next close:
End If

'ERROR: Two many next close:
End If
Set var_16 = Nothing
Set var_79 = Nothing
Set var_79 = 
Set var_79 = Nothing

End Function


Public Function ReplaceOnReboot(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)

If (FrmKillBox < 0) Then
    
End If
Set var_7 = Nothing

If (var_7 < 0) Then
    
End If
Set var_7 = Nothing

If (var_7 < 0) Then
    
End If
var_num1 = Empty

If (0 = 0) Then
    Set var_74 = Nothing
    Set var_7 = Nothing
    var_num7 = Empty
End If
Set var_7 = Nothing

If (var_7 < 0) Then
    
End If

If (((vbNullString) = (vbNullChar))) Then
    var_46 = ("No File")
    var_76 = ("There is no Path to file in the Destination box, You must list a file or use the Dummy")
    var_104 = MsgBox(var_76, 16, var_46)
    
End If
Call sub_4167C0()

If (((vbNullString) = (vbNullChar))) Then
    Set var_7 = ((vbNullString) [##] (vbNullChar))
    var_num7 = 0 - 1
    
    Do While (    var_18 <= var_num7)
    Set var_7 = Nothing
    Set var_7 = Nothing
    var_133 = (vbNullString)
    Set var_7 = -256 - 12
    var_15 = ("*Replaced with ") & (vbNullString)
    var_19 = (var_15)
    var_19 = (vbNullChar)
    Set var_7 = Nothing
    var_11 = (vbNullString)
    Call SetFileAttributesA ()  '(API Sub call...)
    Set var_7 = Nothing
    var_11 = (vbNullString)
    Call SetFileAttributesA ()  '(API Sub call...)
    Set var_7 = 
    Call sub_416360()
    Set var_74 = -296
    Call sub_416360()
    var_num1 = Empty
    var_79 = (vbNullString)
    var_27 = (0)
    Call MoveFileExA ()  '(API Sub call...)
    Set var_7 = 
    var_num1 = Empty
    
    If (    0 = 1) Then
    Set var_7 = 0 = 1
    Call sub_416110()
    var_11 = (0) & ("\regsvr32.exe /u /s ")
    var_137 = (var_11) & (vbNullString)
    Call sub_416950()
    
End If
Set var_7 = 0 = 1
var_num1 = Empty

If (0 = 1) Then
    
    If (    0 = 1) Then
    
End If

'ERROR: Two many next close:
End If
Set var_7 = Nothing
var_num1 = 1 + var_18

'ERROR: Two many next close:
Loop
Set var_7 = var_7

If (0 = 1) Then
    
End If
Set var_7 = Nothing
var_46 = ("Pending Operation")
var_76 = ("Changes will be Made after Reboot, Reboot Now? ")
var_138 = MsgBox(var_76, 52, var_46)

If (CInt(var_138) = 6) Then
    Set var_7 = 
    
End If
Set var_7 = 
Set var_7 = var_76
Set var_7 = Nothing

'ERROR: Two many next close:
End If
Call sub_4167C0()

If (((vbNullString) = (vbNullChar))) Then
    Set var_7 = ((vbNullString) [##] (vbNullChar))
    var_num1 = 0 - 1
    
    If (    var_18 <= var_num1) Then
    Set var_7 = Nothing
    Set var_7 = Nothing
    var_133 = (0)
    Set var_7 = Nothing
    var_15 = ("*Replaced with ") & (vbNullString)
    var_19 = (var_15)
    var_19 = (vbNullChar)
    Set var_7 = Nothing
    var_11 = (vbNullString)
    Call SetFileAttributesA ()  '(API Sub call...)
    Call sub_416020()
    var_139 = (var_11) & ("\wininit.ini")
    var_24 = (var_139)
    Call PathFileExistsA ()  '(API Sub call...)
    
    If (    CBool(CStr(-4576)) = -1) Then
    Call sub_416020()
    var_24 = (var_24) & ("\wininit.ini")
    Open var_24 For Append As #3 Len = -1
    Set var_7 = 
    
    If (    var_7) Then
    
End If
Call sub_416360()
Set var_74 = Nothing
Call sub_416360()
var_num1 = Empty
var_24 = (-300) & ("=")
var_40 = (var_24) & (-4580)
Print #3, var_40
Close #3
Set var_7 = Nothing
var_num1 = Empty

Do While (-4576 = 1)
    
    If (    -4576 = 1) Then
    
End If

'ERROR: Two many next close:
End If

If (CBool(CStr(-4576)) = 0) Then
    Call sub_416020()
    var_24 = (-300) & ("\wininit.ini")
    Open var_24 For Output As #3 Len = -1
    Print #3, "[Rename]"
    Set var_7 = 
    Call sub_416360()
    Set var_74 = Nothing
    Call sub_416360()
    var_num1 = Empty
    var_24 = (-300) & ("=")
    var_40 = (var_24) & (var_12)
    Print #3, var_40
    Close #3
    Set var_7 = Nothing
    var_num1 = Empty
    
    If (    -4576 = 1) Then
    
    If (    -4576 = 1) Then
    
End If

'ERROR: Two many next close:
End If
Set var_7 = Nothing

'ERROR: Two many next close:
End If
var_num1 = 1 + var_18

'ERROR: Two many next close:
Loop

If (-4576 = 1) Then
    
End If
Set var_7 = Nothing

'ERROR: Two many next close:
End If
Set var_7 = Nothing
Set var_7 = Nothing
var_15 = ("You will need to Reboot the Computer to Complete the Replace") & (vbCrLf)
var_11 = (var_15)
Call  ()  '(API Sub call...)
Set var_7 = Nothing
Set var_74 = Nothing
Set var_7 = Nothing

'ERROR: Two many next close:
End If

End Function


Public Function SingleRepOnReboot(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Set var_7 = Nothing

If (var_7 < 0) Then
    
End If

If (0 = 0) Then
    Set var_7 = Nothing
    
    If (    var_7 < 0) Then
    
End If
Set var_74 = Nothing

If (0 < 0) Then
    
End If
Set var_7 = 

If (var_7 < 0) Then
    
End If

'ERROR: Two many next close:
End If
Set var_7 = Nothing

If (var_7 < 0) Then
    
End If

If (((vbNullString) = (vbNullChar))) Then
    var_46 = ("No File")
    var_76 = ("There is no Path to file in the Destination box, You must list a file or use the Dummy")
    var_104 = MsgBox(var_76, 16, var_46)
    
End If
Set var_7 = Nothing
var_133 = (vbNullString)
Set var_7 = 

If (0) Then
    
End If
var_15 = ("*Replaced with ") & (vbNullString)
var_19 = (var_15)
var_19 = (vbNullChar)
Set var_7 = Nothing
Call sub_4171B0()
var_11 = (var_19) & ("\")
Call sub_417690()
var_129 = (var_11) & (var_11)
var_12 = (var_129)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4528)) = 0) Then
    Set var_7 = Nothing
    Call sub_417690()
    var_15 = (var_19) & ("\")
    var_15 = (var_15) & (vbNullString)
    var_27 = (var_15)
    var_12 = (var_11)
    Call CopyFileA ()  '(API Sub call...)
    
End If
Set var_7 = Nothing
Call sub_417690()
var_19 = (var_19) & ("\")
var_15 = (var_19) & (vbNullString)
var_140 = (var_15) & ("(")
var_77 = (#NOT SUPPORTED#)
var_40 = (var_11)
Call CopyFileA ()  '(API Sub call...)
var_num3 = 0 + 1
Call sub_4167C0()
Set var_7 = 
var_11 = (var_11)
Call SetFileAttributesA ()  '(API Sub call...)
Set var_7 = Nothing
var_11 = (var_11)
Call SetFileAttributesA ()  '(API Sub call...)
Set var_7 = 

If (var_7) Then
    
End If
Call sub_416360()
Set var_74 = Nothing
Call sub_416360()
var_num1 = Empty
var_79 = (var_7)
var_27 = (var_11)
Call MoveFileExA ()  '(API Sub call...)
Set var_7 = 

If (-4528 = 1) Then
    Set var_7 = Nothing
    Call sub_416110()
    var_15 = (vbNullString) & ("\regsvr32.exe /u /s ")
    var_129 = (var_15) & (var_11)
    Call sub_416950()
    
End If
Set var_7 = Nothing

If (-4528 = 1) Then
    
End If
Set var_7 = 
Set var_7 = var_7
var_num1 = Empty

If (-4528 = 1) Then
    
    If (    -4528 = 1) Then
    
End If
Set var_7 = -4528 = 1
var_46 = ("Pending Operation")
var_76 = ("Changes will be Made after Reboot, Reboot Now? ")
var_141 = MsgBox(var_76, 52, var_46)

If (CInt(var_141) = 6) Then
    Set var_7 = 
    
End If
Set var_74 = 
Set var_7 = Nothing
Set var_7 = 
var_num1 = Empty

If (-4528 > var_7) Then
    Set var_7 = -4528 > var_7
    
End If
Set var_7 = -4528 > var_7
Set var_7 = var_74
Set var_7 = var_76
Call sub_4167C0()

If (0 = 1) Then
    Set var_7 = Nothing
    var_11 = (vbNullString)
    Call SetFileAttributesA ()  '(API Sub call...)
    Call sub_416020()
    var_142 = (var_11) & ("\wininit.ini")
    var_24 = (var_142)
    Call PathFileExistsA ()  '(API Sub call...)
    
    If (    CBool(CStr(-4668)) = -1) Then
    Call sub_416020()
    var_24 = (var_24) & ("\wininit.ini")
    Open var_24 For Append As #3 Len = -1
    Set var_7 = 
    
    If (    var_7) Then
    
End If
Call sub_416360()
Set var_74 = Nothing
Call sub_416360()
var_15 = (vbNullString) & ("=")
var_143 = (var_15) & (var_15)
Print #3, var_143
Close #3
Set var_7 = Nothing
var_num1 = Empty

If (-4668 = 1) Then
    
    If (    -4668 = 1) Then
    
End If

'ERROR: Two many next close:
End If

If (CBool(CStr(-4668)) = 0) Then
    Call sub_416020()
    var_24 = (var_24) & ("\wininit.ini")
    Open var_24 For Output As #3 Len = -1
    Print #3, "[Rename]"
    Set var_7 = 
    Call sub_416360()
    Set var_74 = Nothing
    Call sub_416360()
    var_15 = (vbNullString) & ("=")
    var_144 = (var_15) & (var_15)
    Print #3, var_144
    Close #3
    Set var_7 = Nothing
    var_num1 = Empty
    
    If (    -4668 = 1) Then
    
    If (    -4668 = 1) Then
    
End If

'ERROR: Two many next close:
End If
Set var_7 = Nothing

'ERROR: Two many next close:
End If
Set var_7 = Nothing

'ERROR: Two many next close:
End If
Set var_7 = 
Set var_7 = Nothing
var_55 = ("You will need to Reboot the Computer to Complete the Replace") & (vbCrLf)
var_11 = (var_55)
Call  ()  '(API Sub call...)
Set var_7 = 
Set var_74 = var_7
Set var_7 = var_74

'ERROR: Two many next close:
End If

End Function


Public Function cArray(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Set var_10 = Nothing

If (-256 - 12 < 0) Then
    
End If
var_num2 = 0 - 1

Do While (0 <= var_num2)
    Dim var_145() As String
ReDim Preserve var_145(0 To 0)
    Set var_10 = Nothing
    var_num7 = 0 - LBound(var_145)
    
    If (    var_num7 >= (UBound(var_145) - LBound(var_145))) Then
    Err.Raise 9
End If
Err.Raise 9
var_num3 = @[(var_145[((var_145~))]]
var_129 = (Trim(vbNullString))
var_num3 = 0 + 1
var_num7 = Empty

'ERROR: Two many next close:
Loop

End Function


Public Function ChkFormat(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)

End Function


Public Function RegDACL(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)

If (0 = 0) Then
    Dim var_9 As New Global
End If
Set var_77 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (var_9.[PROPERTY NOT VISIBLE IN FREE EDITION] < 0) Then
    
End If
var_8 = var_77.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_17 = (var_8) & ("\RegDACLE\RegDACL.exe")
var_29 = (var_17)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4512))) Then
    var_76 = ("RegDACL error")
    var_74 = ("RegDACL.exe was not found in it's expected location")
    var_146 = MsgBox(var_74, 48, var_76)
    
End If
var_147 = (arg_C)

If (((arg_C) = ("no"))) Then
    
    If (    CBool(CStr(-4512)) = -1) Then
    Set var_9 = New Global
    Set var_77 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
    var_8 = var_77.[PROPERTY NOT VISIBLE IN FREE EDITION]
    Set var_9 = New Global
    Set var_79 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
    var_10 = var_79.[PROPERTY NOT VISIBLE IN FREE EDITION]
    var_148 = (var_10) & ("\RegDACLE")
    var_27 = (var_148)
    var_12 = (#NOT SUPPORTED#)
    var_149 = (var_8) & ("\RegDACLE\RegDACL.exe")
    var_11 = (var_149)
    Call ShellExecuteA ()  '(API Sub call...)
    var_74 = ("yes")
    var_10 = ("ACL")
    var_8 = ("Software\KillBox")
    Call sub_443490()
    
End If

Do While (((arg_C) = ("yes")))
    
    If (    CBool(CStr(-4512)) = -1) Then
    
    If (    ((arg_C) < ("yes"))) Then
    
End If
Set var_9 = New Global
Set var_77 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_8 = var_77.[PROPERTY NOT VISIBLE IN FREE EDITION]
Set var_9 = New Global
Set var_79 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_10 = var_79.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_143 = (var_10) & ("\RegDACLE")
var_27 = (var_143)
var_12 = (#NOT SUPPORTED#)
var_150 = (var_8) & ("\RegDACLE\RegDACL.exe")
var_11 = (var_150)
Call ShellExecuteA ()  '(API Sub call...)

'ERROR: Two many next close:
Loop
var_num7 = CLng("yes") Or CLng("no")

If (((arg_C) <> (CStr(var_num7)))) Then
    var_76 = ("DACL State")
    var_74 = ("Last DACL usage cannot be Verified, You may need to change Permissions manually, or Click OK to Assume Administrators are Denied")
    var_151 = MsgBox(var_74, 17, var_76)
    
End If

End Function


Public Function EndTask(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Set var_79 = Nothing

If (-256 - 12 < 0) Then
    
End If

Do While (0 = 0)
    Set var_79 = Nothing
    var_num7 = 0 - 1
    Set var_79 = 
    
    If (    0 = -1) Then
    Dim var_8() As String
ReDim Preserve var_8(0 To 0)
    Set var_79 = 
    var_num2 = 0 - LBound(var_8)
    
    If (    var_num2 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_num3 = @[(var_8[((~))]]
var_129 = (vbNullString)
var_num1 = 0 + 1

'ERROR: Two many next close:
End If
var_num1 = 1 + 0
var_num7 = Empty

Do While (var_num7 <= WORD PTR [EBP+FFFFFF2C])
    var_num7 = var_num7 - LBound(var_8)
    
    If (    var_num7 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_num3 = @[(var_8[((~))]]

If (((Left(vbNullString, 1)) = ("["))) Then
    var_num7 = var_num7 - LBound(var_8)
    
    If (    var_num7 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_15 = (vbNullString) & (" is not a Running process that can be ended")
var_121 = MsgBox(var_15, 0)
var_num7 = var_num7 - LBound(var_8)

If (var_num7 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_num3 = @[(var_8[((~))]]
var_129 = (vbNullChar)

'ERROR: Two many next close:
End If
var_76 = ("End Task")
var_num7 = var_num7 - LBound(var_8)

If (var_num7 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_152 = ("Really End Task on ") & (vbNullChar)
var_153 = (var_152) & (" ?")
var_126 = (var_153) & (vbCrLf)
var_140 = (var_126) & ("The Process is only Ended, not Deleted")
var_148 = MsgBox(var_140, 52, var_76)

If (CInt(var_148) <> 7) Then
    
    If (    CInt(var_148) = 6) Then
    var_num7 = var_num7 - LBound(var_8)
    
    If (    var_num7 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_num4 = @[(var_8[((~))]]
Call sub_416B30()

'ERROR: Two many next close:
End If
var_num1 = 1 + var_num7

'ERROR: Two many next close:
Loop
Call Sleep ()  '(API Sub call...)
Set var_79 = CInt(UBound(var_154, 1))
Set var_79 = Nothing
var_num7 = 0 - 1
var_num2 = Empty

Do While (__vbaHresultCheckObj <= var_num7)
    var_num1 = Empty
    
    If (    CInt(UBound(var_154, 1)) <= WORD PTR [EBP+FFFFFF1C]) Then
    Set var_79 = CInt(UBound(var_154, 1))
    var_num7 = CInt(UBound(var_154, 1)) - LBound(var_8)
    
    If (    var_num7 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9

Do While (((var_152) = (vbNullChar)))
    var_num1 = 1 + CInt(UBound(var_154, 1))
    
Loop
var_num7 = CInt(UBound(var_154, 1)) - LBound(var_8)

If (var_num7 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_num3 = @[(var_8[((~))]]
var_129 = (vbNullChar)
Set var_79 = Nothing
Set var_79 = Nothing
var_40 = ("Could not End Task on ") & (vbNullString)
var_131 = MsgBox(var_40, 0)
Set var_79 = 
var_133 = (vbNullString)
Set var_79 = var_74
var_15 = ("Could not End Task on ") & (vbNullString)
var_19 = (var_15)
var_19 = (vbNullChar)
'ERROR: Two many next close:
End If
var_num1 = 1 + __vbaHresultCheckObj

'ERROR: Two many next close:
Loop
var_num2 = Empty

Do While (__vbaHresultCheckObj <= WORD PTR [EBP+FFFFFF14])
    var_num7 = __vbaHresultCheckObj - LBound(var_8)
    
    If (    var_num7 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9

If (((vbNullChar) <> (vbNullChar))) Then
    var_num7 = __vbaHresultCheckObj - LBound(var_8)
    
    If (    var_num7 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_133 = (vbNullChar)
var_num7 = __vbaHresultCheckObj - LBound(var_8)

If (var_num7 >= (UBound(var_8) - LBound(var_8))) Then
    Err.Raise 9
    
End If
Err.Raise 9
var_152 = ("End Task on ") & (vbNullChar)
var_155 = (var_152) & (" was Successful")
var_19 = (var_155)
var_19 = (vbNullChar)

'ERROR: Two many next close:
End If
var_num1 = 1 + __vbaHresultCheckObj

'ERROR: Two many next close:
Loop

End Function


Public Function FindExactStr(arg_0 As Unknow, arg_1 As Unknow, arg_2 As Unknow, arg_3 As Unknow, arg_4 As Unknow, arg_5 As Unknow, arg_6 As Unknow, arg_7 As Unknow, arg_8 As Unknow, arg_9 As Unknow, arg_A As Unknow, arg_B As Unknow, arg_C As Unknow, arg_D As Unknow, arg_E As Unknow, arg_F As Unknow, arg_10 As Unknow, arg_11 As Unknow, arg_12 As Unknow, arg_13 As Unknow, arg_14 As Unknow, arg_15 As Unknow, arg_16 As Unknow, arg_17 As Unknow, arg_18 As Unknow, arg_19 As Unknow, arg_1A As Unknow, arg_1B As Unknow, arg_1C As Unknow, arg_1D As Unknow, arg_1E As Unknow, arg_1F As Unknow, arg_20 As Unknow, arg_21 As Unknow, arg_22 As Unknow, arg_23 As Unknow, arg_24 As Unknow, arg_25 As Unknow, arg_26 As Unknow, arg_27 As Unknow, arg_28 As Unknow, arg_29 As Unknow, arg_2A As Unknow, arg_2B As Unknow, arg_2C As Unknow, arg_2D As Unknow, arg_2E As Unknow, arg_2F As Unknow, arg_30 As Unknow, arg_31 As Unknow, arg_32 As Unknow, arg_33 As Unknow, arg_34 As Unknow, arg_35 As Unknow, arg_36 As Unknow, arg_37 As Unknow, arg_38 As Unknow, arg_39 As Unknow, arg_3A As Unknow, arg_3B As Unknow, arg_3C As Unknow)
Set var_11 = Nothing

If (-256 - 12 < 0) Then
    
End If
var_num7 = 0 - 1
var_num1 = Empty

Do While (var_num7 >= -256 - 12)
    Set var_11 = -256 - 12
    Set var_24 = Nothing
    var_29 = (vbNullString)
    Call SendMessageA ()  '(API Sub call...)
    
    If (    0 <> var_num7) Then
    Set var_11 = Nothing
    
End If
var_num1 =  + var_num7

'ERROR: Two many next close:
Loop

End Function


'Event for OptMulti
Private Sub OptMulti_MouseMove(Button as Integer, Shift as Integer, X as Single, Y as Single)
var_106 = ("This Option will Process ALL Files in the Dropdown Box in one Click") & (vbCrLf)
var_135 = (var_106) & ("You will be prompted to Reboot when the cycle has finished, which you")
var_103 = (var_135) & (vbCrLf)
var_17 = (var_103) & ("can Cancel and continue with other Files")

If (arg_D = 0) Then
    Dim var_156 As New clsToolTip
End If
Set var_16 = var_156
Set var_24 = Me

If (var_16 < 0) Then
    
End If

If (var_16 < 0) Then
    
End If

If (var_16 < 0) Then
    
End If

If (FrmKillBox < 0) Then
    
End If
Set var_2 = var_24

If (var_16 < 0) Then
    
End If
Set var_24 = 
Set var_12 = var_24

If (var_16 < 0) Then
    
End If
Set var_16 = Nothing

End Sub


Private Sub OptMulti_MouseUp(Button as Integer, Shift as Integer, X as Single, Y as Single)
Set var_18 = Me

If (var_18 < 0) Then
    
End If

End Sub


'Event for OptSingle
Private Sub OptSingle_MouseMove(Button as Integer, Shift as Integer, X as Single, Y as Single)
var_106 = ("This Option will Process each File in the Dropdown Box one at a time") & (vbCrLf)
var_135 = (var_106) & ("You will be prompted to Reboot each time the Kill Button is clicked ")
var_103 = (var_135) & (vbCrLf)
var_17 = (var_103) & ("which you can Cancel and continue with the next File")

If (arg_D = 0) Then
    Dim var_156 As New clsToolTip
End If
Set var_16 = var_156
Set var_24 = Me

If (var_16 < 0) Then
    
End If

If (var_16 < 0) Then
    
End If

If (var_16 < 0) Then
    
End If

If (FrmKillBox < 0) Then
    
End If
Set var_2 = var_24

If (var_16 < 0) Then
    
End If
Set var_24 = 
Set var_12 = var_24

If (var_16 < 0) Then
    
End If
Set var_16 = Nothing

End Sub


Private Sub OptSingle_MouseUp(Button as Integer, Shift as Integer, X as Single, Y as Single)
Set var_18 = Me

If (var_18 < 0) Then
    
End If

End Sub


'Event for OptDelReboot
Private Sub OptDelReboot_Click()
Set var_18 = Me
Set var_18 = var_18
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing
Set var_18 = Nothing

End Sub


'Event for mnuDelWininit
Private Sub mnuDelWininit_Click()
var_14 = ("wininit")
var_2 = ("Delete the wininit.ini")
var_17 = MsgBox(var_2, 52, var_14)

If (CInt(var_17) = 6) Then
    Call sub_416020()
    var_2 = (var_2) & ("\wininit.ini")
    var_12 = (var_2)
    Call PathFileExistsA ()  '(API Sub call...)
    Set var_27 = 
    
    If (    -328 < 0) Then
    
End If
On Error Goto handler_0

If (CBool(CStr(-4520)) = -1) Then
    Call sub_416020()
    var_2 = (var_2) & ("\wininit.ini")
    Kill var_2
    
End If
var_14 = ("Error")
var_2 = ("Cannot Delete Wininit.ini")
var_121 = MsgBox(var_2, 16, var_14)

End Sub


'Event for mnuRemSessMan
Private Sub mnuRemSessMan_Click()
var_79 = ("Remove PendingFileRenameOperations")
var_12 = ("Abort the Delete on Reboot Operation & Remove the PendingFileRenameOperations Reg Key")
var_17 = MsgBox(var_12, 52, var_79)

If (CInt(var_17) = 6) Then
    var_10 = ("PendingFileRenameOperations")
    var_8 = ("SYSTEM\CurrentControlSet\Control\Session Manager")
    Call sub_442B30()
    
End If

End Sub


'Event for mnuRemDir
Private Sub mnuRemDir_Click()
var_num1 = Empty
Set var_18 = Me
var_num1 = Empty

If (Me = -1) Then
    Set var_18 = Me = -1
    
End If
Set var_18 = Me = -1

End Sub


'Event for RegTimer
Private Sub RegTimer_Timer()
Set var_11 = Me

If (var_11 < 0) Then
    
End If
var_num3 = arg_6 - 0
Set var_204 = Nothing

If (var_204 < 0) Then
    
End If

If (var_204 < 0) Then
    
End If

If (var_204 < 0) Then
    
End If

If (var_204 < 0) Then
    
End If

If (var_204 < 0) Then
    
End If
var_27 = ("Verifying Registry Entries... Plz wait") & (vbCrLf)
var_17 = (var_27) & ("Click here to Abort Shutdown in ")
Set var_204 = Nothing

If (CInt(var_num3) <= 0) Then
    Set var_11 = Nothing
    Set var_11 = Nothing
    Set var_11 = Nothing
    Call sub_41B220()
    
    If (    ((vbNullString) [#$#] (vbNullChar)) [#?#] ((vbNullString) [#$#] (vbNullChar))) Then
    var_2 = ("PendingFileRenameOperations")
    var_27 = ("PendingFileRenameOperations Registry Data has been Removed by External Process!")
    var_138 = MsgBox(var_27, 16, var_2)
    var_2 = (arg_7) & ("\Logs\kb.log")
    Open var_2 For Append As #1 Len = -1
    var_27 = Now()
    var_2 = ("h:mm:ss AM/PM")
    Print #1, 
    Close #1
    
End If
var_120 = (arg_7) & ("\Logs\kb.log")
var_num7 = __vbaStrCmp Or -1
Open var_120 For Append As #1 Len = 0
var_27 = Now()
var_2 = ("h:mm:ss AM/PM")
Print #1, 
Close #1
var_29 = ("System")
var_10 = ("Software\KillBox\")
Call sub_442DF0()

If (((var_27) = ("System"))) Then
    Call sub_4184A0()
    
End If
Call sub_4183C0()
'ERROR: Two many next close:
End If

End Sub


'Event for mnuRemDupes
Private Sub mnuRemDupes_Click()
var_num1 = Empty
Set var_18 = Me
var_num1 = Empty

If (Me = -1) Then
    Set var_18 = Me = -1
    
End If
Set var_18 = Me = -1

End Sub


'Event for mnuExpand
Private Sub mnuExpand_Click()
Set var_18 = Me
Set var_18 = var_18

End Sub


'Event for mnuDelBacks
Private Sub mnuDelBacks_Click()
var_197 = ("TmpOptFiles")
Call sub_416020()
Call sub_4171B0()
var_4 = ("Delete Backups")
var_3 = ("Delete all Backed up Files now")
var_17 = MsgBox(var_3, 52, var_4)

Do While (CInt(var_17) = 6)
    var_27 = (arg_7)
    var_11 = ("*.*")
    Call sub_41BE00()
    
    Do While (    CLng(var_3) > 0)
    On Error Resume Next
    var_num4 = var_29 + var_124
    
    Do While (    var_num4 <= WORD PTR [EBP+FFFFFF1C])
    
    If (    -256 - 24 = 1) Then
    var_num4 = var_num4 - 0
    
    If (    var_num4 < DWORD PTR [ECX+10]) Then
    
End If
Err.Raise 9

'ERROR: Two many next close:
End If
Err.Raise 9
var_19 = (arg_7) & ("\Logs\kb.log")

If (((0) = (var_19))) Then
    
End If

If (-256 - 24 = 1) Then
    var_num1 = var_num4 - 0
    
    If (    var_num1 < DWORD PTR [EDX+10]) Then
    
End If
Err.Raise 9

'ERROR: Two many next close:
End If
Err.Raise 9
var_2 = (vbNullString)
Call PathIsDirectoryA ()  '(API Sub call...)

If (-256 - 24 = 1) Then
    var_num4 = var_num4 - 0
    
    If (    var_num4 < DWORD PTR [ECX+10]) Then
    
End If
Err.Raise 9

'ERROR: Two many next close:
End If
Err.Raise 9
var_num1 = 0 + -4536
var_137 = (vbNullString)
var_num3 = Empty

If (CBool(CStr(-4536 <> 0))) Then
    
    If (    -256 - 24 = 1) Then
    var_num4 = var_num4 - 0
    
    If (    var_num4 < DWORD PTR [ECX+10]) Then
    
End If
Err.Raise 9

'ERROR: Two many next close:
End If
Err.Raise 9
var_19 = (arg_7) & ("\Logs")

If (((vbNullString) = (var_19))) Then
    
End If

If (-256 - 24 = 1) Then
    var_num1 = var_num4 - 0
    
    If (    var_num1 < DWORD PTR [EDX+10]) Then
    
End If
Err.Raise 9

'ERROR: Two many next close:
End If
Err.Raise 9
Call CloseHandle ()  '(API Sub call...)

If (-256 - 24 = 1) Then
    var_num3 = var_num4 - 0
    
    If (    var_num3 < DWORD PTR [EAX+10]) Then
    
End If
Err.Raise 9

'ERROR: Two many next close:
End If
Err.Raise 9

If (FrmKillBox < 0) Then
    
End If

'ERROR: Two many next close:
End If

If (L[0] <> 0) Then
    
    If (    -256 - 24 = 1) Then
    var_num3 = var_num4 - 0
    
    If (    var_num3 < DWORD PTR [EAX+10]) Then
    
End If
Err.Raise 9

'ERROR: Two many next close:
End If
Err.Raise 9
var_num3 = 0 + -328
Kill vbNullString

'ERROR: Two many next close:
Loop

End Sub


'Event for mnukbDummy
Private Sub mnukbDummy_Click()
On Error Goto handler_0
var_16 = ("Dummy Cleanup")
var_40 = ("Delete all previous dummy files created by KillBox?")
var_17 = MsgBox(var_40, 36, var_16)

If (CInt(var_17) = 6) Then
    Call sub_416200()
    var_16 = (var_16) & ("\kbdummy.*")
    Kill var_16
    var_40 = ("No Killbox Dummy Files were found")
    var_200 = MsgBox(var_40, 0)
    
End If

End Sub


'Event for mnuFreboot
Private Sub mnuFreboot_Click()
var_27 = ("Forced Restart")
var_11 = ("System will be Forced to Restart")
var_17 = MsgBox(var_11, 17, var_27)

If (CInt(var_17) = 1) Then
    Call sub_4184A0()
    
End If

End Sub


'Event for mnuKillbaks
Private Sub mnuKillbaks_Click()
Call sub_416020()
Call sub_4171B0()
Call sub_417620()
var_8 = (-284) & ("\!KillBox")
var_29 = (var_8)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4500)) = -1) Then
    
    If (    Me < 0) Then
    
End If
Call sub_417620()
Call sub_417620()
var_106 = (FrmKillBox) & ("\!KillBox")
var_40 = (var_106)
var_106 = (FrmKillBox) & ("\!KillBox")
var_24 = (var_106)
var_29 = ("explorer.exe")
Call ShellExecuteA ()  '(API Sub call...)

'ERROR: Two many next close:
End If
Call sub_417620()
var_3 = ("!KillBox")
var_8 = (-284) & ("\!KillBox , is not created until a File is Deleted")
var_137 = ("The Directory ") & (var_8)
var_121 = MsgBox(var_137, 48, var_3)

End Sub


'Event for ListNoRun
Private Sub ListNoRun_MouseUp(Button as Integer, Shift as Integer, X as Single, Y as Single)

If (arg_0 = 2) Then
    Set var_18 = Nothing
    var_num7 = Empty
    
    If (    var_18 < FrmKillBox) Then
    
End If

'ERROR: Two many next close:
End If

End Sub


'Event for mnulstRefresh
Private Sub mnulstRefresh_Click()
Set var_18 = Me

If (var_18 < 0) Then
    
End If

If (var_18 < 0) Then
    
End If

End Sub


'Event for mnulstUnChkAll
Private Sub mnulstUnChkAll_Click()
Set var_8 = Me

If (var_8 < 0) Then
    
End If
var_num8 = 0 - 1
Set var_8 = Nothing
var_num1 = var_24 + 0

End Sub


'Event for mnuClipPaste
Private Sub mnuClipPaste_Click()
Set var_23 = Nothing

If (var_23 < 0) Then
    
End If
Set var_23 = Nothing

If (var_23 < 0) Then
    
End If
Dim var_9 As New Global
Set var_23 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (var_9.[PROPERTY NOT VISIBLE IN FREE EDITION] < 0) Then
    
End If
var_23.[PROPERTY NOT VISIBLE IN FREE EDITION] = CInt(11)

If (0 < 0) Then
    
End If

If (var_9 = 0) Then
    Set var_9 = New Global
    
End If
Set var_23 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (var_9.[PROPERTY NOT VISIBLE IN FREE EDITION] < 0) Then
    
End If
var_76 = var_23.[METHOD NOT VISIBLE IN FREE EDITION]()

If (0 < 0) Then
    
End If

If (((var_76) = (vbNullChar))) Then
    
    If (    var_9 = 0) Then
    Set var_9 = New Global
    
End If
Set var_23 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (var_9.[PROPERTY NOT VISIBLE IN FREE EDITION] < 0) Then
    
End If
var_num3 = Empty
var_23.[PROPERTY NOT VISIBLE IN FREE EDITION] = CInt(Global)

If (0 < 0) Then
    
End If
Set var_23 = Nothing

If (var_23 < 0) Then
    
End If
Set var_23 = Nothing

If (var_23 < 0) Then
    
End If

'ERROR: Two many next close:
End If
Call sub_416200()
var_137 = () & ("\kbclip.tmp")
Open var_137 For Output As #10 Len = -1
Print #10, var_76
Close #10
Call sub_416200()
var_76 = (-352) & ("\kbclip.tmp")
Open var_76 For Input As #11 Len = -1

Do While (EOF(11))
    
    Do While (    ((vbNullString) <> (vbNullChar)))
    Set var_23 = Nothing
    
    If (    var_23 < 0) Then
    
End If
var_num1 = Empty

If (((Right(Trim(vbNullString), 1)) = ("\"))) Then
    var_num1 = Len(Trim(vbNullString)) - 1
    
End If
var_13 = (Left(Trim(vbNullString), var_num1))
var_76 = (Left(Trim(vbNullString), var_num1))
Call PathFileExistsA ()  '(API Sub call...)
var_13 = (Left(Trim(vbNullString), var_num1))

If (Len(Left(Trim(vbNullString), var_num1)) > 3) Then
    
    If (    CBool(CStr(-4596)) = -1) Then
    Set var_23 = Me
    
    If (    FrmKillBox < 0) Then
    
End If

'ERROR: Two many next close:
End If
Set var_23 = Me

If (var_23 < 0) Then
    
End If
var_num4 = Empty

Do While (-4596 = -1)
    var_num1 = CInt(InStr(1, Left(Trim(vbNullString), var_num1), ":\", 1)) - 1
    var_117 = Mid(Left(Trim(vbNullString), var_num1), var_num1, Len(Left(Trim(vbNullString), var_num1)))
    
    If (    CBool(#NOT SUPPORTED#)) Then
    var_num1 = Len(var_117) - 1
    
End If
var_14 = (Left(var_117, var_num1))
var_76 = (Left(var_117, var_num1))
Call PathFileExistsA ()  '(API Sub call...)
var_14 = (Left(var_117, var_num1))

If (Len(Left(var_117, var_num1)) > 3) Then
    
    If (    CBool(CStr(-4712)) = -1) Then
    Set var_23 = Me
    
    If (    FrmKillBox < 0) Then
    
End If
Set var_23 = Nothing

If (var_23 < 0) Then
    
End If

'ERROR: Two many next close:
End If
var_num3 = var_29 + var_201

Do While (var_num3 <= WORD PTR [EBP+FFFFFEEC])
    var_num3 = Len(Left(var_117, var_num1)) - var_num3
    var_76 = (Left(Trim(Left(var_117, var_num1)), CInt(var_num3)))
    Call PathFileExistsA ()  '(API Sub call...)
    var_74 = (Left(Trim(Left(var_117, var_num1)), CInt(var_num3)))
    
    If (    Len(Left(Trim(Left(var_117, var_num1)), CInt(var_num3))) > 3) Then
    
    If (    CBool(CStr(-4760)) = -1) Then
    
    If (    CBool(#NOT SUPPORTED#)) Then
    var_num1 = Len(Left(Trim(Left(var_117, var_num1)), CInt(var_num3))) - 1
    Set var_23 = Nothing
    
    If (    var_23 < 0) Then
    
End If

'ERROR: Two many next close:
End If
var_74 = (Left(Left(Trim(Left(var_117, var_num1)), CInt(var_num3)), var_num1))
Set var_23 = Me

If (FrmKillBox < 0) Then
    
End If

'ERROR: Two many next close:
End If

'ERROR: Two many next close:
Loop

'ERROR: Two many next close:
Loop
Close #11
On Error Resume Next
Call sub_416200()
var_126 = () & ("\kbclip.tmp")
Kill var_126
Set var_23 = Nothing

If (var_23 < 0) Then
    
End If
Set var_23 = Nothing

If (var_23 < 0) Then
    
End If
var_num1 = Empty

If (-4760 = -1) Then
    
    If (    FrmKillBox < 0) Then
    
End If

'ERROR: Two many next close:
End If

If (Me < 0) Then
    
End If

If (Me < 0) Then
    
End If
Set var_23 = Nothing

If (var_23 < 0) Then
    
End If
var_num1 = Empty

If (-4760 = -1) Then
    
    If (    FrmKillBox < 0) Then
    
End If

'ERROR: Two many next close:
End If

If (var_9 = 0) Then
    Set var_9 = New Global
    
End If
Set var_23 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (var_9.[PROPERTY NOT VISIBLE IN FREE EDITION] < 0) Then
    
End If
var_num3 = Empty
var_23.[PROPERTY NOT VISIBLE IN FREE EDITION] = CInt(var_9)

If (0 < 0) Then
    
End If

End Sub


'Event for mnuDelTemp
Private Sub mnuDelTemp_Click()

If (0 = 0) Then
    Dim var_202 As New FrmTmpOpt
    
End If
Set var_40 = Nothing

If (-256 - 12 < 0) Then
    
End If
Call sub_416020()
Call sub_4171B0()
Call sub_4167C0()

If (-256 - 12 = 2) Then
    Call sub_417AD0()
    var_num1 = CInt(InStr(4, 0, "\", 1)) - 1
    var_10 = (Left(0, var_num1))
    var_num1 = -4512 Or -1
    Call sub_41AD10()
    var_num7 = Empty
    
    Do While (    __vbaStrMove <= WORD PTR [EBP+FFFFFF34])
    
    If (    -256 - 12 = 1) Then
    var_num2 = __vbaStrMove - 0
    
    If (    var_num2 >= 0) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_num3 = 0 + -300
Call sub_416490()

If (((UCase(vbNullString)) = (UCase(UCase(vbNullString))))) Then
    
End If
Set var_202 = New FrmTmpOpt
Set var_40 = var_202

If (-256 - 12 = 1) Then
    var_num7 = __vbaStrMove - 0
    
    If (    var_num7 >= 0) Then
    Err.Raise 9
    
End If

'ERROR: Two many next close:
End If
Err.Raise 9
var_137 = (Left(0, var_num1)) & (vbNullString)
var_num1 = 1 + __vbaStrMove

'ERROR: Two many next close:
Loop
Set var_202 = New FrmTmpOpt
Set var_40 = var_202
Set var_202 = New FrmTmpOpt

'ERROR: Two many next close:
End If
Call sub_4167C0()

If (-256 - 12 = 1) Then
    Set var_202 = New FrmTmpOpt
    Set var_40 = var_202
    Set var_202 = New FrmTmpOpt
    Set var_40 = var_202
    Set var_202 = New FrmTmpOpt
    Set var_40 = var_202
    
End If
Set var_202 = New FrmTmpOpt

End Sub


'Event for mnuHistory
Private Sub mnuHistory_Click()
Call sub_416020()
var_77 = (arg_7) & ("\Logs")
var_40 = (var_77)
var_103 = (arg_7) & ("\Logs\kb.log")
var_24 = (var_103)
var_77 = (0) & ("\notepad.exe")
var_29 = (var_77)
var_8 = ("open")
Call ShellExecuteA ()  '(API Sub call...)

End Sub


'Event for ChkTimer
Private Sub ChkTimer_Timer()
Set var_12 = Me

If (var_12 < 0) Then
    
End If
Set var_12 = Nothing

If (((vbNullString) = (vbNullChar))) Then
    Set var_12 = ((vbNullString) = (vbNullChar))
    
    If (    var_12) Then
    
End If
Set var_12 = Nothing

'ERROR: Two many next close:
End If
Call sub_41C8F0()

If (-(CBool(())) <> 0) Then
    Set var_12 = -(CBool(()))
    
    If (    var_12) Then
    
End If

'ERROR: Two many next close:
End If
Set var_12 = Nothing
Set var_40 = Nothing
var_num1 = var_40 Or -1
var_num4 = Empty
var_num3 = 0 = var_num1 Or 0 = var_num1

If (var_num3 <> 0) Then
    Set var_12 = 
    Set var_12 = Nothing
    
End If
Set var_12 = 
Set var_12 = Nothing
Set var_12 = Nothing
Set var_12 = Nothing
Call sub_4167C0()

If (var_12 = 2) Then
    Call sub_41B220()
    
    If (    ((vbNullString) = ("Not Found"))) Then
    Set var_12 = Nothing
    
End If
Set var_12 = ((vbNullString) [##] ("Not Found"))

'ERROR: Two many next close:
End If
Call sub_4167C0()

If (var_12 = 1) Then
    Call sub_416020()
    var_15 = (vbNullString) & ("\wininit.ini")
    var_11 = (var_15)
    Call PathFileExistsA ()  '(API Sub call...)
    
    If (    CBool(CStr(-4508)) = -1) Then
    Set var_12 = Nothing
    
End If
Set var_12 = 

'ERROR: Two many next close:
End If
Call sub_4167C0()

If (var_12 = 2) Then
    Set var_12 = Nothing
    Set var_40 = Nothing
    var_num1 = var_40 Or -1
    var_num4 = Empty
    var_num3 = 0 = var_num1 Or -4508 = var_num1
    
    If (    var_num3 <> 0) Then
    Set var_12 = 
    
End If
Set var_12 = Nothing
Set var_12 = Nothing

'ERROR: Two many next close:
End If
Set var_12 = Nothing
var_num1 = Empty

If (-4508 = -1) Then
    Set var_12 = Nothing
    
    If (    0 = -2147483633) Then
    Set var_12 = Nothing
    
End If
Set var_12 = Nothing

'ERROR: Two many next close:
End If
Set var_12 = Nothing
Set var_12 = Nothing

If (-4508 = -1) Then
    Set var_12 = Nothing
    var_num1 = Empty
    
    If (    0 = -2147483633) Then
    Set var_12 = Nothing
    
End If
Set var_12 = Nothing

'ERROR: Two many next close:
End If
Set var_12 = Nothing

End Sub


'Event for mnuNoFormat
Private Sub mnuNoFormat_Click()
Set var_18 = Me

If (var_18 < 0) Then
    
End If
var_num1 = Empty

If (0 = var_18) Then
    Set var_18 = 0 = var_18
    Set var_18 = Nothing
    Set var_18 = -256 - 12
    Set var_18 = Nothing
    Set var_18 = -256 - 12
    var_num1 = Empty
    
    If (    0 = -1) Then
    
    If (    0 = -1) Then
    
End If

End Sub


'Event for Combo2
Private Sub Combo2_Change()
var_num1 = Empty
Set var_12 = Me
Set var_12 = var_12
Set var_12 = var_12
Set var_40 = Nothing
var_num3 = Empty
var_num7 = ((FrmKillBox) = (vbNullChar)) Or Len(FrmKillBox) <= 3

If (var_num7) Then
    var_11 = (vbNullChar)
    Call sub_4171B0()
    
End If
Set var_12 = 
var_11 = (Trim(vbNullString))
Call sub_4171B0()
var_11 = (Trim(vbNullString))
Call PathIsDirectoryA ()  '(API Sub call...)
var_29 = (Trim(vbNullString))
var_11 = (Trim(vbNullString))
Call PathIsDirectoryEmptyA ()  '(API Sub call...)
var_29 = (Trim(vbNullString))
var_11 = (Trim(vbNullString))
Call PathFileExistsA ()  '(API Sub call...)
var_29 = (Trim(vbNullString))

If (CBool(CStr(-4544)) = -1) Then
    Set var_12 = 
    Call sub_417690()
    
    If (    var_12) Then
    
End If

'ERROR: Two many next close:
End If
Set var_12 = Nothing

If (CBool(CStr(-())) = -1) Then
    Set var_12 = Nothing
    
End If
Call sub_417700()

If (((LCase(vbNullString)) = ("dll"))) Then
    Set var_12 = Nothing
    
End If
Set var_12 = Nothing
Set var_12 = Nothing

End Sub


Private Sub Combo2_Click()
Set var_18 = Me
Set var_18 = var_18

End Sub


Private Sub Combo2_DropDown()
Set var_18 = Me

If (var_18 < 0) Then
    
End If

If (0 > 1) Then
    Set var_24 = Nothing
    Set var_24 = Nothing
End If

End Sub


Private Sub Combo2_KeyUp(KeyCode as Integer, Shift as Integer)
Set var_18 = Me

If (var_18 < 0) Then
    
End If
var_num1 = Empty
var_num1 = arg_0 = 13 And 0 = -1

If (var_num1 <> 0) Then
    
    If (    FrmKillBox < 0) Then
    
End If

End Sub


Private Sub Combo2_OLEDragDrop(Data as DataObject, Effect as Long, Button as Integer, Shift as Integer, X as Single, Y as Single)

If (arg_0 < 0) Then
    
End If
Set var_74 = Nothing
For Each var_29 In var_74
    Set var_24 = Nothing
    Next
    var_num2 = Empty
    Set var_24 = 
    var_num2 = Empty
    
    If (    0 > var_24) Then
    Set var_24 = Nothing
    
End If

End Sub


'Event for mnuExplorer
Private Sub mnuExplorer_Click()
Call sub_416020()
Call sub_4171B0()

If (FrmKillBox < 0) Then
    
End If
Call sub_416020()
Call sub_417620()
var_24 = (vbNullString)
var_15 = (vbNullString) & ("\explorer.exe")
var_29 = (var_15)
var_8 = ("open")
Call ShellExecuteA ()  '(API Sub call...)

End Sub


'Event for CmdBanner
Private Sub CmdBanner_Click()
var_num1 = Empty

If (arg_D = -1) Then
    Set var_8 = Me
    var_77 = ("Abort Shutdown")
    var_24 = ("Abort Shutdown Now")
    var_17 = MsgBox(var_24, 17, var_77)
    
    If (    CInt(var_17) = 1) Then
    Set var_8 = 
    
End If
Set var_8 = 
var_num1 = Empty
'ERROR: Two many next close:
End If

End Sub


'Event for CmdExit
Private Sub CmdExit_Click()
Call sub_416490()
var_14 = ("System")

If (((UCase(FrmKillBox)) = (UCase(var_14)))) Then
    Set var_11 = Nothing
    
    If (    var_11 < 0) Then
    
End If

If (0 <= 0) Then
    Set var_11 = Nothing
    
    If (    0 < 0) Then
    
End If
var_14 = ("Winlogon.exe")

Do While (((UCase(vbNullString)) = (UCase(var_14))))
    var_num1 = 1 + 0
    
Loop

'ERROR: Two many next close:
End If

If (0 = 0) Then
    var_2 = ("Shutdown")
    var_2 = ("Without Winlogon running you will not have the ability to Shutdown the System") & (vbCrLf)
    var_146 = (var_2) & ("Do not close the KillBox application, use the Forced Reboot/Shutdown under the Options menu")
    var_120 = MsgBox(var_146, 17, var_2)
    
    If (    CInt(var_120) = 1) Then
    Call sub_418400()
    
End If
Dim var_9 As New Global
Set var_11 = Me
Call var_9.[METHOD NOT VISIBLE IN FREE EDITION](var_11)
End

'ERROR: Two many next close:
End If
Call sub_416490()
var_14 = ("System")

If (((UCase(var_2)) <> (UCase(var_14)))) Then
    
    If (    var_9 = 0) Then
    Set var_9 = New Global
End If
Set var_11 = Me
Call var_9.[METHOD NOT VISIBLE IN FREE EDITION](var_11)
End
'ERROR: Two many next close:
End If

End Sub


'Event for mnuLstChkAll
Private Sub mnuLstChkAll_Click()
Set var_8 = Me

If (var_8 < 0) Then
    
End If
var_num8 = 0 - 1
Set var_8 = Nothing
var_num1 = var_24 + 0

End Sub


'Event for mnuClearTxt
Private Sub mnuClearTxt_Click()
Set var_18 = Me

If (var_18 < 0) Then
    
End If

End Sub


'Event for mnuNewLog
Private Sub mnuNewLog_Click()
On Error Goto handler_0
var_14 = ("New Log")
var_2 = ("Create New Log")
var_17 = MsgBox(var_2, 36, var_14)

If (CInt(var_17) = 7) Then
    var_2 = (arg_7) & ("\Logs\kb.log")
    Open var_2 For Append As #1 Len = -1
    var_2 = Now()
    var_14 = ("dddd, mmmm dd, yyyy, h:mm AM/PM")
    Print #1, 
    Print #1, " "
    Close #1
    
End If

If (CInt(var_17) = 6) Then
    var_2 = (arg_7) & ("\Logs\kb.log")
    var_12 = (var_2)
    Call PathFileExistsA ()  '(API Sub call...)
    
    If (    CBool(CStr(-4548)) = -1) Then
    var_2 = Now()
    var_14 = ("mmm-dd-hhmm")
    var_19 = (arg_7) & ("\Logs\kb.log")
    Open var_19 For Append As #1 Len = -1
    var_2 = Now()
    var_14 = ("dddd, mmmm dd, yyyy, h:mm AM/PM")
    Print #1, 
    Print #1, " "
    Close #1
    var_19 = ("Previous Saved as ") & (arg_7)
    var_131 = (var_19) & ("\Logs\kb.")
    var_113 = (var_131) & (Format(var_2, var_14, 1, 1))
    var_208 = (var_113) & (".log")
    var_252 = (var_208)
    var_19 = (arg_7) & ("\Logs\kb.log")
    var_136 = (arg_7) & ("\Logs\kb.")
    var_210 = (var_136) & (Format(var_2, var_14, 1, 1))
    var_155 = (var_210) & (".log")
    
End If
var_14 = ("Log Error")
var_2 = ("Error Resetting Logfile")
var_212 = MsgBox(var_2, 48, var_14)

'ERROR: Two many next close:
End If

End Sub


'Event for mnuClear
Private Sub mnuClear_Click()
var_num1 = Empty
Set var_8 = Me
Set var_8 = var_8
Set var_8 = var_8
var_num2 = Empty

If (var_8 < __vbaObjSet) Then
    
End If
var_18 = (vbNullChar)
Call sub_4171B0()
Erase var_145

End Sub


'Event for mnuLong
Private Sub mnuLong_Click()
Set var_18 = Me

If (var_18 < 0) Then
    
End If
var_num1 = Empty

If (0 = var_18) Then
    Set var_18 = 0 = var_18
    Set var_18 = Nothing
    Set var_18 = -256 - 12
    Set var_18 = Nothing
    Set var_18 = -256 - 12
    var_num1 = Empty
    
    If (    0 = -1) Then
    
    If (    0 = -1) Then
    
End If

End Sub


'Event for mnuUnC
Private Sub mnuUnC_Click()
var_num1 = Empty
Set var_18 = Me
var_num1 = Empty

If (Me = var_18) Then
    Set var_18 = Me = var_18
    Set var_18 = Nothing
    Set var_18 = -256 - 12
    Set var_18 = Nothing
    
End If
Set var_18 = Me = var_18

End Sub


'Event for mnuUpdate
Private Sub mnuUpdate_Click()
Set var_172 = Me

If (var_172 < 0) Then
    
End If

If (var_172 < 0) Then
    
End If

If (var_172 < 0) Then
    
End If

If (var_172 < 0) Then
    
End If

If (var_172 < 0) Then
    
End If

If (var_172 < 0) Then
    
End If

If (var_172 < 0) Then
    
End If
Set var_172 = Nothing
var_2 = ("www.killbox.net")
Call IsDestinationReachableA ()  '(API Sub call...)
var_num2 = Empty

If (-4496 = 0) Then
    Set var_13 = Nothing
    
    If (    var_13 < 0) Then
    
End If
var_23 = ("There was a Problem contacting www.killbox.net")
var_17 = MsgBox(var_23, 0)

'ERROR: Two many next close:
End If
Set var_14 = 
Set var_13 = var_14

If (var_2 < 0) Then
    
End If
var_15 = (vbNullString) & (vbCrLf)
var_167 = (var_15) & ("Connected to KillBox.net")
Set var_13 = 
var_2 = ("KillBox")
Call InternetOpenA ()  '(API Sub call...)
Set var_14 = 
Set var_13 = var_14
var_15 = (vbNullString) & (vbCrLf)
var_146 = (var_15) & ("Reading Update Info...")
Set var_13 = 
var_2 = ("http://www.killbox.net/downloads/kbver.txt")
Call InternetOpenUrlA ()  '(API Sub call...)
var_2 = (Space(100))
Call InternetReadFile ()  '(API Sub call...)
var_16 = (Space(100))
Call InternetCloseHandle ()  '(API Sub call...)
Call InternetCloseHandle ()  '(API Sub call...)
Set var_13 = Nothing
Dim var_9 As New Global
Set var_13 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_2 = var_13.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_15 = (var_2) & ("\KillBox.exe")
Call sub_414CA0()

If ((Val(Replace(Trim(Space(100)), ".", vbNullChar, 1, Len(Trim(Space(100))), 1)) > (Val(Replace(-4564, ".", vbNullChar, 1, Len(-4564), 1))))) Then
    var_34 = ("Update Available")
    var_211 = MsgBox(#NOT SUPPORTED#, 0, var_34)
    var_7 = ("http:\\www.killbox.net")
    var_2 = ("open")
    Call ShellExecuteA ()  '(API Sub call...)
    
End If

If ((Val(Replace(Trim(Space(100)), ".", vbNullChar, 1, Len(Trim(Space(100))), 1)) = (Val(Replace(-4564, ".", vbNullChar, 1, Len(-4564), 1))))) Then
    var_22 = ("Current Version")
    var_23 = ("This Version of Killbox is Up to Date")
    var_215 = MsgBox(var_23, 0, var_22)
    
End If

If ((Val(Replace(Trim(Space(100)), ".", vbNullChar, 1, Len(Trim(Space(100))), 1)) < (Val(Replace(-4564, ".", vbNullChar, 1, Len(-4564), 1))))) Then
    var_22 = ("Beta Version")
    var_23 = ("This Version of Killbox is Test Beta")
    var_218 = MsgBox(var_23, 0, var_22)
    
End If

End Sub


'Event for Form
Private Sub Form_Load()
Call sub_416020()
Call sub_4171B0()
Call sub_417620()
var_166 = (FrmKillBox)
var_106 = (FrmKillBox) & ("\!KillBox")
var_196 = (var_106)
var_197 = ("KillBox")
var_12 = (var_106)
var_24 = (FrmKillBox)
Call CreateDirectoryExA ()  '(API Sub call...)
var_166 = (FrmKillBox)
var_196 = (var_106)
var_24 = (var_106)
Call SetFileAttributesA ()  '(API Sub call...)
var_196 = (var_106)
var_135 = (var_106) & ("\Logs")
var_40 = (var_135)
var_24 = (FrmKillBox)
Call CreateDirectoryExA ()  '(API Sub call...)
var_166 = (FrmKillBox)
Dim var_119 As New FrmKillBox
Set var_27 = Nothing
Set var_27 = Nothing
Set var_27 = Nothing
Set var_27 = Nothing
Set var_27 = Nothing
Set var_116 = Nothing
Set var_116 = Nothing
Call sub_4167C0()

If (var_116 = 1) Then
    Set var_27 = Nothing
    Set var_27 = Nothing
    Set var_27 = Nothing
    Set var_27 = Nothing
    Set var_27 = Nothing
    
End If
Call sub_4167C0()

If (var_116 = 2) Then
    Set var_27 = Nothing
    var_12 = ("ACL")
    var_24 = ("Software\KillBox\")
    Call sub_442DF0()
    var_198 = (var_74)
    
    If (    ((var_74) = ("yes"))) Then
    var_76 = ("Reset Permissions")
    var_74 = ("KillBox has Recently set an ACL for Administrators to Deny, Click OK to Reset This Permission")
    var_126 = MsgBox(var_74, 17, var_76)
    
    If (    CInt(var_126) = 1) Then
    
End If
var_74 = ("no")
var_12 = ("ACL")
var_24 = ("Software\KillBox")
Call sub_443490()

'ERROR: Two many next close:
End If

'ERROR: Two many next close:
End If
var_24 = ("Software\KillBox")
Call sub_442890()
var_12 = ("LastPath")
var_24 = ("Software\KillBox\")
Call sub_442DF0()
var_162 = (var_74)
Call sub_416490()

If (((UCase(var_12)) <> ("SYSTEM"))) Then
    var_74 = ("No")
    var_12 = ("System")
    var_24 = ("Software\KillBox")
    Call sub_443490()
    
End If

If (((var_74) <> (vbNullChar))) Then
    var_162 = (var_74)
    
End If
Dim var_9 As New Global
Set var_27 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_24 = var_27.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_40 = ("LastPath")
var_12 = ("Software\KillBox")
Call sub_443490()
Set var_27 = 
var_74 = var_27.UNK_var_12_3
Set var_77 = 
Set var_27 = 
var_74 = var_27.UNK_var_76_3
Set var_77 = 
Call sub_416490()
var_15 = ("User : ") & (vbNullString)

End Sub


Private Sub Form_Unload(Cancel as Integer)
var_num8 = Me + 64
var_num1 = Empty
var_106 = (arg_7) & ("\Logs\kb.log")
var_10 = (var_106)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4500)) = -1) Then
    var_10 = (arg_7) & ("\Logs\kb.log")
    Open var_10 For Append As #1 Len = -1
    
End If
var_10 = (arg_7)
var_8 = (vbNullString)
Call CreateDirectoryExA ()  '(API Sub call...)
var_num1 = Me + 68
var_166 = (vbNullString)
var_196 = (arg_7)
var_8 = (arg_7)
Call SetFileAttributesA ()  '(API Sub call...)
var_196 = (arg_7)
var_137 = (arg_7) & ("\Logs")
var_29 = (var_137)
var_num1 = Me + 68
var_8 = (vbNullString)
Call CreateDirectoryExA ()  '(API Sub call...)
var_166 = (vbNullString)
var_num4 = Me + 60
var_19 = ("Could not access ") & (arg_7)
var_153 = (var_19) & ("\Logs\kb.log")
var_19 = (var_153)
var_16 = ("Log Error")
var_19 = ("An error occured accessing ") & (var_19)
var_139 = (var_19) & ("\Logs\kb.log")
var_199 = MsgBox(var_139, 48, var_16)
var_19 = (var_19) & ("\Logs\kb.log")
Open var_19 For Output As #1 Len = -1
Print #1, 
var_139 = Now()
var_16 = ("h:mm:ss AM/PM")
Print #1, 
Print #1, "__________________________________________________"
Print #1, " "
Close #1

End Sub


Private Sub Form_Activate()

If (0 = 0) Then
    Dim var_9 As New Global
End If
Set var_18 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (var_9.[PROPERTY NOT VISIBLE IN FREE EDITION] < 0) Then
    
End If
var_8 = var_18.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (var_8 = -1) Then
    Set var_9 = New Global
    Set var_18 = Me
    Call var_9.[METHOD NOT VISIBLE IN FREE EDITION](var_18)
    End
End If

End Sub


'Event for mnuOutTxt
Private Sub mnuOutTxt_Click()
Set var_14 = Me

If (var_14 < 0) Then
    
End If
Call sub_416200()
var_15 = (vbNullString) & ("\kblst.txt")
Open var_15 For Output As #33 Len = -1

If (0 = 0) Then
    Dim var_9 As New Global
End If
Set var_14 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (var_9.[PROPERTY NOT VISIBLE IN FREE EDITION] < 0) Then
    
End If
var_11 = var_14.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_104 = (var_11) & ("\KillBox.exe")
Call sub_414CA0()
var_167 = ("[Pocket KillBox version ") & (var_104)
var_158 = (var_167) & ("]")
Print #33, var_158
Print #33, " "
Print #33, 
Print #33, "______________________________ "
Set var_14 = Me

If (var_14 < 0) Then
    
End If
var_num1 = 0 - 1

Do While (0 <= var_num1)
    Set var_14 = Me
    
    If (    var_14 < 0) Then
    
End If
Print #33, var_11
var_num1 = 1 + 0

'ERROR: Two many next close:
Loop
Close #33
Call sub_416200()
var_114 = () & ("\kblst.txt")
var_12 = (var_114)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4568)) = -1) Then
    
    If (    Me < 0) Then
    
End If
Call sub_416020()
Call sub_416200()
Call sub_416200()
var_2 = (FrmKillBox)
var_106 = (FrmKillBox) & ("\kblst.txt")
var_79 = (var_106)
var_106 = (FrmKillBox) & ("\notepad.exe")
var_27 = (var_106)
var_12 = ("open")
Call ShellExecuteA ()  '(API Sub call...)

'ERROR: Two many next close:
End If
var_22 = ("Error")
var_23 = ("Error with Log ")
var_209 = MsgBox(var_23, 16, var_22)

End Sub


'Event for mnuAbout
Private Sub mnuAbout_Click()

If (0 = 0) Then
    Dim var_9 As New Global
End If
Set var_27 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (var_9.[PROPERTY NOT VISIBLE IN FREE EDITION] < 0) Then
    
End If
var_18 = var_27.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_15 = (var_18) & ("\KillBox.exe")
Call sub_414CA0()
var_14 = ("Pocket Killbox")
var_8 = ("    Pocket Killbox version ") & (-4508)
var_158 = (vbCrLf) & ("by Option^Explicit Software Solutions")
var_129 = (var_8) & (var_158)
var_200 = (var_129) & (vbCrLf)
var_105 = (var_200) & ("            vbtechcd@gmail.com")
var_137 = MsgBox(var_105, 0, var_14)

End Sub


'Event for mnuFShutdown
Private Sub mnuFShutdown_Click()
var_27 = ("Forced Shutdown")
var_11 = ("System will be Forced to Shutdown")
var_17 = MsgBox(var_11, 17, var_27)

If (CInt(var_17) = 1) Then
    Call sub_418400()
    
End If

End Sub


'Event for mnuShort
Private Sub mnuShort_Click()
Set var_18 = Me

If (var_18 < 0) Then
    
End If
var_num1 = Empty

If (0 = var_18) Then
    Set var_18 = 0 = var_18
    Set var_18 = Nothing
    Set var_18 = -256 - 12
    Set var_18 = Nothing
    Set var_18 = -256 - 12
    var_num1 = Empty
    
    If (    0 = -1) Then
    
    If (    0 = -1) Then
    
End If

End Sub


'Event for mnuPayPal
Private Sub mnuPayPal_Click()
var_41 = ("Donate")
var_41 = ("If you've found KillBox to be a Helpful Tool and want to make Donation with PayPal") & (vbCrLf)
var_104 = (var_41) & ("I can receive payments using the ")
var_168 = MsgBox(#NOT SUPPORTED#, 68, var_41)

If (CInt(var_168) = 6) Then
    Dim var_9 As New Global
    Set var_24 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
    
    If (    var_9.[PROPERTY NOT VISIBLE IN FREE EDITION] < 0) Then
    
End If
var_8 = var_24.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_11 = (var_8)
var_29 = ("http://www.paypal.com")
var_10 = ("open")
Call ShellExecuteA ()  '(API Sub call...)

'ERROR: Two many next close:
End If

End Sub


'Event for TmrEffects
Private Sub TmrEffects_Timer()
Set var_8 = Me

If (var_8 < 0) Then
    
End If

If (((vbNullString) = (" Processes >>"))) Then
    
    If (    0 = 0) Then
    Dim var_119 As New FrmKillBox
    
End If
Set var_119 = New FrmKillBox

If (((vbNullString) < (" Processes >>"))) Then
    
End If
Set var_119 = New FrmKillBox

If (( < (0))) Then
    Set var_8 = ( [:#] (0))
    Set var_8 = Nothing
    
End If
Set var_8 = ((vbNullString) [##] (" Processes >>"))

If (((vbNullString) = ("<< Close"))) Then
    Set var_119 = New FrmKillBox
    Set var_119 = New FrmKillBox
    Set var_119 = New FrmKillBox
    
    If (    ( >= (0))) Then
    Set var_8 = Nothing
    Set var_8 = Nothing
    
End If

End Sub


'Event for mnuAddRem
Private Sub mnuAddRem_Click()
var_num1 = Empty
Set var_18 = Me
var_num1 = Empty

If (Me = var_18) Then
    Set var_18 = Me = var_18
    Set var_18 = Nothing
    
End If
Set var_18 = Me = var_18
Set var_18 = Nothing

End Sub


'Event for mnuFfind
Private Sub mnuFfind_Click()
var_num1 = Empty
Set var_29 = Me
var_num2 = Empty

If (Me = var_29) Then
    Set var_29 = Nothing
    Set var_29 = Nothing
    
    If (    ((FrmKillBox) <> (vbNullChar))) Then
    Set var_29 = ((FrmKillBox) [##] (vbNullChar))
    
    If (    var_29) Then
    
End If

'ERROR: Two many next close:
End If
Set var_29 = ((FrmKillBox) [##] (vbNullChar))
Set var_27 = var_29
Set var_27 = Nothing
Set var_29 = Nothing
Set var_29 = -256 - 12
Set var_29 = Nothing
Call sub_416020()
Call sub_4171B0()
Call sub_417620()
var_203 = (0)
Set var_29 = -256 - 12

'ERROR: Two many next close:
End If
Set var_29 = var_29
Set var_29 = var_29
Set var_29 = var_29
Set var_29 = var_29
Set var_29 = var_29
Set var_29 = var_29
Set var_29 = var_29
Set var_29 = var_29

End Sub


'Event for CmdKill
Private Sub CmdKill_Click()
var_164 = (var_165)
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
On Error Resume Next
Call sub_416020()
Call sub_4171B0()
Call sub_417620()
var_num3 = Me + 68
var_166 = (vbNullString)
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If

If (((vbNullString) = (vbNullChar))) Then
    Set var_46 = Me
    
    If (    var_46 < 0) Then
    
End If
var_34 = ("File Error")
var_26 = ("You have not Specified any File to Delete, You must Specify a File Path in the Yellow Box")
var_167 = MsgBox(var_26, 48, var_34)
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If

'ERROR: Two many next close:
End If
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If

Do While (((Right(vbNullString, 1)) [#!-$#] ("\")))
    Set var_46 = Me
    
    If (    FrmKillBox < 0) Then
    
End If

If (((Right(vbNullString, 1)) = ("\"))) Then
    Set var_46 = Me
    
    If (    var_46 < 0) Then
    
End If
Set var_22 = Nothing
Set var_84 = Me

If (FrmKillBox < 0) Then
    
End If
var_num1 = Len(vbNullString) - 1

If (-256 - 24 < 0) Then
    
End If

'ERROR: Two many next close:
End If
Set var_84 = Nothing
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If

If (-256 - 24 < 0) Then
    
End If

'ERROR: Two many next close:
Loop
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If

If (((Right(vbNullString, 1)) = ("."))) Then
    Set var_46 = Me
    
    If (    var_46 < 0) Then
    
End If
Set var_22 = Nothing
Set var_84 = Me

If (FrmKillBox < 0) Then
    
End If
var_num1 = Len(vbNullString) - 1

If (-256 - 24 < 0) Then
    
End If

'ERROR: Two many next close:
End If
Set var_84 = Nothing
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If

If (-256 - 24 < 0) Then
    
End If
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
var_num4 = Empty

If (Len(vbNullString) <= 3) Then
    var_34 = ("Insufficient Path")
    var_26 = ("Insufficient Path or You are trying to delete a drive letter, can't do that!")
    var_168 = MsgBox(var_26, 16, var_34)
    Set var_46 = Me
    
    If (    var_46 < 0) Then
    
End If
Set var_46 = Me

If (var_46 < 0) Then
    
End If
Set var_46 = Me

If (var_46 < 0) Then
    
End If

'ERROR: Two many next close:
End If
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
Call sub_416020()
Set var_84 = Me

If (var_84 < 0) Then
    
End If
Call sub_416110()
Set var_22 = Nothing

If (var_22 < 0) Then
    
End If
var_169 = (vbNullString) & ("\Program Files")

If (CBool(#NOT SUPPORTED#)) Then
    var_34 = ("Windows Directory")
    var_26 = ("I cannot allow you to delete this Directory")
    var_175 = MsgBox(var_26, 16, var_34)
    Set var_46 = Me
    
    If (    FrmKillBox < 0) Then
    
End If
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If

'ERROR: Two many next close:
End If
Set var_46 = Me

If (var_46 < 0) Then
    
End If
var_num4 = Empty
Set var_46 = Me

If (var_46 < 0) Then
    
End If
var_num4 = Empty

If (Me < 0) Then
    
End If
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
var_num3 = Empty

If (Me < 0) Then
    
End If
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
var_num1 = Empty
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
var_num1 = Empty

If (FrmKillBox < 0) Then
    
End If
Set var_46 = Me

If (var_46 < 0) Then
    
End If
var_num4 = Empty

If (Me < 0) Then
    
End If
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
var_num3 = Me + 56
var_133 = (vbNullString)
Set var_176 = Me

If (FrmKillBox < 0) Then
    
End If

If (var_176 < 0) Then
    
End If

If (var_176 < 0) Then
    
End If

If (FrmKillBox < 0) Then
    
End If

If (var_176 < 0) Then
    
End If
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
var_15 = ("Deleting ") & (vbNullString)

If (FrmKillBox < 0) Then
    
End If

If (var_176 < 0) Then
    
End If
Set var_176 = Nothing
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
var_34 = ("Confirm Delete")
var_34 = ("Backup & Delete ") & (vbNullString)
var_177 = MsgBox(var_34, 52, var_34)

If (CInt(var_177) = 7) Then
    Set var_46 = Nothing
    
    If (    var_46 < 0) Then
    
End If
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If

'ERROR: Two many next close:
End If

If (CInt(var_177) = 6) Then
    Set var_46 = Me
    
    If (    FrmKillBox < 0) Then
    
End If
var_14 = (vbNullString)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4740))) Then
    
End If
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
Call sub_4171B0()
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
var_14 = (vbNullString)
Call SetFileAttributesA ()  '(API Sub call...)
Set var_46 = Me

If (var_46 < 0) Then
    
End If
Call sub_41A860()
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
var_14 = (vbNullString)
Call PathIsDirectoryA ()  '(API Sub call...)
var_num4 = Empty

If (CBool(CStr(-4756 <> 0))) Then
    
    If (    CBool(CStr(-4756 <> 0))) Then
    
End If
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
var_15 = (arg_7) & ("\")
var_15 = (var_15) & (vbNullString)
var_178 = (var_15) & ("\")
var_76 = (var_178)
Call MakeSureDirectoryPathExists ()  '(API Sub call...)
Call sub_4167C0()
Call sub_416110()
var_3 = (-4776) & ("\xcopy.exe ")
Call sub_416950()
var_13 = ("xcopy.exe")
Call sub_416B30()
Call sub_4167C0()
Call sub_416020()
var_26 = (Chr(34)) & ("\Command.com /C xcopy.exe ")
Call sub_416950()
var_13 = ("xcopy.exe")
Call sub_416B30()
Call CloseHandle ()  '(API Sub call...)

'ERROR: Two many next close:
End If
var_181 = (arg_7) & ("\")
var_15 = (var_181) & (vbNullString)
var_37 = (var_15) & (vbNullString)
var_76 = (var_37)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-5168))) Then
    Set var_46 = Me
    
    If (    var_46 < 0) Then
    
End If
var_19 = (arg_7) & ("\")
var_182 = (var_19) & (vbNullString)
var_183 = (var_182) & (vbNullString)
var_23 = (var_183)
var_76 = (var_181)
Call CopyFileA ()  '(API Sub call...)

'ERROR: Two many next close:
End If
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
var_num3 = Me + 82
var_26 = (arg_7) & ("\")
var_15 = (var_26) & (vbNullString)
var_184 = (var_15) & (vbNullString)
var_185 = (var_184) & ("(")
var_4 = (#NOT SUPPORTED#)
var_83 = (var_181)
Call CopyFileA ()  '(API Sub call...)
var_num4 = 0 + 1
Set var_46 = Me

If (var_46 < 0) Then
    
End If
var_num4 = Empty

If (-5168 = 1) Then
    var_13 = ("explorer.exe")
    Call sub_416B30()
    
End If
Call sub_417700()
var_186 = (LCase(FrmKillBox))

If (((var_186) = ("exe"))) Then
    var_num3 = var_29 + var_187
    
    Do While (    var_num3 <= WORD PTR [EBP+FFFFFDD0])
    Call sub_417690()
    Call sub_416B30()
    DoEvents
    Set var_46 = Me
    
    If (    FrmKillBox < 0) Then
    
End If
var_14 = (vbNullString)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-5284))) Then
    
End If
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
Kill Trim(vbNullString)
Call Sleep ()  '(API Sub call...)

'ERROR: Two many next close:
Loop
Set var_46 = Me

If (var_46 < 0) Then
    
End If
var_14 = (vbNullString)
Call PathFileExistsA ()  '(API Sub call...)
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
Kill Trim(vbNullString)
Set var_46 = Me

If (var_46 < 0) Then
    
End If
var_14 = (vbNullString)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-5320)) = -1) Then
    
End If

'ERROR: Two many next close:
End If

If (((var_186) = ("dll"))) Then
    Set var_46 = Nothing
    
    If (    var_46 < 0) Then
    
End If
var_num1 = Empty

If (-5320 = 1) Then
    Set var_46 = Nothing
    
    If (    var_46 < 0) Then
    
End If
Call sub_416110()
var_15 = (vbNullString) & ("\regsvr32.exe /u /s ")
var_15 = (var_15) & (vbNullString)
Call sub_416950()

'ERROR: Two many next close:
End If
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
Kill Trim(vbNullString)
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
var_14 = (vbNullString)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-5348))) Then
    
End If
var_13 = ("explorer.exe")
Call sub_416B30()
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
Kill Trim(vbNullString)
var_num3 = var_29 + var_188

Do While (var_num3 <= WORD PTR [EBP+FFFFFDC8])
    var_13 = ("explorer.exe")
    Call sub_416B30()
    Set var_46 = Me
    
    If (    var_46 < 0) Then
    
End If
Kill Trim(vbNullString)
Call Sleep ()  '(API Sub call...)
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
var_14 = (vbNullString)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-5368))) Then
    
End If

'ERROR: Two many next close:
Loop
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
var_14 = (vbNullString)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-5380)) = -1) Then
    
End If

'ERROR: Two many next close:
End If
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
var_14 = (vbNullString)
Call PathIsDirectoryA ()  '(API Sub call...)
Set var_46 = Me

If (var_46 < 0) Then
    
End If
var_14 = (vbNullString)
Call PathIsDirectoryEmptyA ()  '(API Sub call...)
var_num3 = Empty

If (CBool(CStr(-5392 <> 0))) Then
    var_num4 = var_79 + var_189
    
    Do While (    var_num4 <= WORD PTR [EBP+FFFFFDC0])
    Set var_190 = Me
    
    If (    FrmKillBox < 0) Then
    
End If

If (var_190 < 0) Then
    
End If

If (var_190 < 0) Then
    
End If

If (FrmKillBox < 0) Then
    
End If

If (var_190 < 0) Then
    
End If

If (var_190 < 0) Then
    
End If

If (FrmKillBox < 0) Then
    
End If
Set var_190 = Nothing
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
Call sub_417E00()
Call Sleep ()  '(API Sub call...)

'ERROR: Two many next close:
Loop
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If

'ERROR: Two many next close:
End If

If (CBool(CStr(-5392 <> 0))) Then
    Set var_46 = Me
    
    If (    FrmKillBox < 0) Then
    
End If
Kill Trim(vbNullString)
Call Sleep ()  '(API Sub call...)
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
var_14 = (vbNullString)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-5420)) = -1) Then
    
End If

'ERROR: Two many next close:
End If
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
var_14 = (vbNullString)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-5432)) = -1) Then
    
End If

'ERROR: Two many next close:
End If
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
var_34 = ("File Access")
var_26 = ("This File could not be Deleted")
var_191 = MsgBox(var_26, 64, var_34)
Set var_46 = Me

If (var_46 < 0) Then
    
End If
var_num3 = Me + 60
var_19 = ("*This File could not be Deleted")

If (Me < 0) Then
    
End If
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
var_34 = ("Success")
var_26 = ("File Was Deleted")
var_192 = MsgBox(var_26, 0, var_34)
Set var_46 = Me

If (FrmKillBox < 0) Then
    
End If
Set var_46 = Me

If (var_46 < 0) Then
    
End If
Set var_84 = Me
Set var_46 = Me

If (var_46 < 0) Then
    
End If

If (var_84 < 0) Then
    
End If
Set var_46 = Me

If (var_46 < 0) Then
    
End If
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
var_num3 = Me + 60
var_19 = ("*File Was Deleted")

If (FrmKillBox < 0) Then
    
End If

If (Me < 0) Then
    
End If
Set var_46 = Me

If (var_46 < 0) Then
    
End If
var_34 = ("File Error")
var_26 = ("This file does not seem to exist")
var_193 = MsgBox(var_26, 0, var_34)
Set var_46 = Nothing

If (var_46 < 0) Then
    
End If
var_num3 = Me + 60
var_19 = ("*This file does not seem to exist")

If (FrmKillBox < 0) Then
    
End If

End Sub


'Event for CmdFileFind
Private Sub CmdFileFind_Click()

End Sub


'Event for CmdEndTask
Private Sub CmdEndTask_Click()

End Sub


'Event for mnuHosts
Private Sub mnuHosts_Click()
var_num1 = Empty
Call sub_4167C0()

If (Me = 2) Then
    Call sub_416110()
    var_106 = (FrmKillBox) & ("\drivers\etc\hosts")
    var_11 = (var_106)
    Call PathFileExistsA ()  '(API Sub call...)
    
    If (    CBool(CStr(-4500)) = 0) Then
    var_35 = ("Hosts File")
    var_204 = ("Hosts does not seem to exist, Should KillBox create a Default one")
    var_129 = MsgBox(var_204, 68, var_35)
    
    If (    CInt(var_129) = 6) Then
    Call sub_416110()
    var_35 = (var_35) & ("\drivers\etc\hosts")
    Open var_35 For Output As #2 Len = -1
    var_10 = ("# Copyright (c) 1993-1999 Microsoft Corp.") & (vbCrLf)
    var_137 = (var_10) & ("#")
    var_120 = (var_137) & (vbCrLf)
    var_121 = (var_120) & ("# This is a sample HOSTS file used by Microsoft TCP/IP for Windows.")
    var_110 = (var_121) & (vbCrLf)
    var_138 = (var_110) & ("#")
    var_153 = (var_138) & (vbCrLf)
    var_126 = (var_153) & ("# This file contains the mappings of IP addresses to host names. Each")
    var_140 = (var_126) & (vbCrLf)
    var_139 = (var_140) & ("# entry should be kept on an individual line. The IP address should")
    var_148 = (var_139) & (vbCrLf)
    var_199 = (var_148) & ("# be placed in the first column followed by the corresponding host name.")
    var_168 = (var_199) & (vbCrLf)
    var_206 = (var_168) & ("# The IP address and the host name should be separated by at least one")
    var_130 = (var_206) & (vbCrLf)
    var_5 = (var_130) & ("# space.")
    var_207 = (var_5) & (vbCrLf)
    var_131 = (var_207) & ("#")
    var_113 = (var_131) & (vbCrLf)
    var_208 = (var_113) & ("# Additionally, comments (such as these) may be inserted on individual")
    var_209 = (var_208) & (vbCrLf)
    var_136 = (var_209) & ("# lines or following the machine name denoted by a '#' symbol.")
    var_210 = (var_136) & (vbCrLf)
    var_155 = (var_210) & ("#")
    var_117 = (var_155) & (vbCrLf)
    var_211 = (var_117) & ("# For example:")
    var_149 = (var_211) & (vbCrLf)
    var_212 = (var_149) & ("#")
    var_213 = (var_212) & (vbCrLf)
    var_141 = (var_213) & ("#      102.54.94.97     rhino.acme.com          # source server")
    var_214 = (var_141) & (vbCrLf)
    var_215 = (var_214) & ("#       38.25.63.10     x.acme.com              # x client host")
    var_142 = (var_215) & (vbCrLf)
    var_216 = (var_142) & (" ")
    var_217 = (var_216) & (vbCrLf)
    var_218 = (var_217) & ("127.0.0.1       localhost")
    Print #2, var_218
    Close #2
    
End If
Call sub_416020()
Call sub_416110()
Call sub_416110()
var_num1 = Empty
var_106 = (FrmKillBox) & ("\drivers\etc")
var_16 = (var_106)
var_106 = (FrmKillBox) & ("\drivers\etc\hosts")
var_77 = (var_106)
var_106 = (FrmKillBox) & ("\notepad.exe")
var_40 = (var_106)
var_24 = ("open")
Call ShellExecuteA ()  '(API Sub call...)

'ERROR: Two many next close:
End If
Call sub_4167C0()

If (Me = 1) Then
    Call sub_416020()
    var_106 = (FrmKillBox) & ("\hosts")
    var_11 = (var_106)
    Call PathFileExistsA ()  '(API Sub call...)
    
    Do While (    CBool(CStr(-4712)) = 0)
    var_35 = ("Hosts File")
    var_204 = ("Hosts does not seem to exist, Should KillBox create a Default one")
    var_219 = MsgBox(var_204, 68, var_35)
    
    If (    CInt(var_219) = 6) Then
    Call sub_416020()
    var_204 = (var_204) & ("\hosts")
    Open var_204 For Output As #2 Len = -1
    var_220 = ("# Copyright (c) 1993-1999 Microsoft Corp.") & (vbCrLf)
    var_150 = (var_220) & ("#")
    var_221 = (var_150) & (vbCrLf)
    var_222 = (var_221) & ("# This is a sample HOSTS file used by Microsoft TCP/IP for Windows.")
    var_223 = (var_222) & (vbCrLf)
    var_181 = (var_223) & ("#")
    var_224 = (var_181) & (vbCrLf)
    var_178 = (var_224) & ("# This file contains the mappings of IP addresses to host names. Each")
    var_225 = (var_178) & (vbCrLf)
    var_226 = (var_225) & ("# entry should be kept on an individual line. The IP address should")
    var_151 = (var_226) & (vbCrLf)
    var_227 = (var_151) & ("# be placed in the first column followed by the corresponding host name.")
    var_228 = (var_227) & (vbCrLf)
    var_229 = (var_228) & ("# The IP address and the host name should be separated by at least one")
    var_230 = (var_229) & (vbCrLf)
    var_231 = (var_230) & ("# space.")
    var_232 = (var_231) & (vbCrLf)
    var_233 = (var_232) & ("#")
    var_234 = (var_233) & (vbCrLf)
    var_235 = (var_234) & ("# Additionally, comments (such as these) may be inserted on individual")
    var_236 = (var_235) & (vbCrLf)
    var_237 = (var_236) & ("# lines or following the machine name denoted by a '#' symbol.")
    var_238 = (var_237) & (vbCrLf)
    var_239 = (var_238) & ("#")
    var_240 = (var_239) & (vbCrLf)
    var_241 = (var_240) & ("# For example:")
    var_242 = (var_241) & (vbCrLf)
    var_243 = (var_242) & ("#")
    var_244 = (var_243) & (vbCrLf)
    var_245 = (var_244) & ("#      102.54.94.97     rhino.acme.com          # source server")
    var_246 = (var_245) & (vbCrLf)
    var_247 = (var_246) & ("#       38.25.63.10     x.acme.com              # x client host")
    var_248 = (var_247) & (vbCrLf)
    var_249 = (var_248) & (" ")
    var_250 = (var_249) & (vbCrLf)
    var_251 = (var_250) & ("127.0.0.1       localhost")
    Print #2, var_251
    
Loop
Call sub_416020()
Call sub_416020()
Call sub_416020()
var_num1 = Empty
var_79 = (FrmKillBox)
var_106 = (FrmKillBox) & ("\hosts")
var_27 = (var_106)
var_106 = (FrmKillBox) & ("\notepad.exe")
var_12 = (var_106)
var_11 = ("open")
Call ShellExecuteA ()  '(API Sub call...)

'ERROR: Two many next close:
End If

End Sub


'Event for mnuHelpFile
Private Sub mnuHelpFile_Click()
var_8 = ("http:\\www.killbox.net\help.html")
var_18 = ("open")
Call ShellExecuteA ()  '(API Sub call...)

End Sub


'Event for CmdProperites
Private Sub CmdProperites_Click()
On Error Goto handler_0
Set var_29 = Me

If (var_29 < 0) Then
    
End If

If (((vbNullString) = (vbNullChar))) Then
    Set var_29 = ((vbNullString) [##] (vbNullChar))
    
    If (    0) Then
    
End If
var_16 = ("Properties")
var_40 = ("Some form of error, most likely an invalid filename or path")
var_104 = MsgBox(var_40, 48, var_16)

'ERROR: Two many next close:
End If

End Sub


'Event for CmdBrowse
Private Sub CmdBrowse_Click()
var_10 = ("LastPath")
var_8 = ("Software\KillBox\")
Call sub_442DF0()
var_162 = (var_77)
var_8 = ("Select a file or folder")
Call sub_417770()

If (((var_162) = (vbNullChar))) Then
    Set var_24 = ((var_162) [##] (vbNullChar))
    Set var_11 = Nothing
    
End If
Set var_11 = ((var_162) [##] (vbNullChar))
Set var_11 = Nothing
var_8 = (var_162)
Call sub_4171B0()
Call sub_4175B0()
var_10 = ("LastPath")
var_8 = ("Software\KillBox")
Call sub_443490()
var_num2 = Empty

End Sub


Private Sub CmdBrowse_MouseMove(Button as Integer, Shift as Integer, X as Single, Y as Single)
Set var_12 = Me

If (var_12 < 0) Then
    
End If
var_11 = (vbNullString)

If (arg_D = 0) Then
    Dim var_156 As New clsToolTip
End If
Set var_3 = var_156
Set var_12 = Me

If (var_3 < 0) Then
    
End If

If (var_3 < 0) Then
    
End If

If (var_3 < 0) Then
    
End If

If (FrmKillBox < 0) Then
    
End If
Set var_76 = var_12

If (var_3 < 0) Then
    
End If
Set var_12 = 
Set var_40 = var_12

If (var_3 < 0) Then
    
End If
Set var_3 = Nothing

End Sub


'Event for mnuSessionMan
Private Sub mnuSessionMan_Click()
Call sub_41B980()

If (0 < 0) Then
    
End If
Call sub_416020()
Call sub_416020()
var_24 = (vbNullString)
var_15 = (vbNullString) & ("\regedit.exe")
var_29 = (var_15)
var_8 = ("open")
Call ShellExecuteA ()  '(API Sub call...)

End Sub


'Event for mnuServices
Private Sub mnuServices_Click()
Call sub_4167C0()

If (Me = 2) Then
    Call sub_416110()
    Call sub_416110()
    var_12 = (0)
    var_11 = ("services.msc /s")
    var_204 = (0) & ("\mmc")
    var_29 = (var_204)
    var_8 = ("open")
    Call ShellExecuteA ()  '(API Sub call...)
    
End If
var_14 = ("NT systems")
var_2 = ("Services Snapin for NT based Systems only")
var_200 = MsgBox(var_2, 48, var_14)

End Sub


'Event for mnuSysTask
Private Sub mnuSysTask_Click()
var_num1 = Empty

If (0 = 0) Then
    Dim var_9 As New Global
End If
Set var_26 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]

If (var_9.[PROPERTY NOT VISIBLE IN FREE EDITION] < 0) Then
    
End If
var_3 = var_26.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_17 = (var_3) & (".exe")
Call sub_4167C0()

If (-4508 = 2) Then
    Call sub_416110()
    var_104 = (var_17) & ("\sc.exe")
    var_83 = (var_104)
    Call PathFileExistsA ()  '(API Sub call...)
    
    If (    CBool(CStr(-4516)) = 0) Then
    Call sub_416110()
    var_3 = (-348) & ("\sc.exe")
    Call sub_4165E0()
    
End If

'ERROR: Two many next close:
End If
var_52 = ("System Task")
var_34 = ("Run Killbox as a System Task, KillBox will Restart in 5 Seconds")
var_120 = MsgBox(var_34, 52, var_52)

If (CInt(var_120) = 6) Then
    var_34 = ("Yes")
    var_76 = ("System")
    var_3 = ("Software\KillBox")
    Call sub_443490()
    var_76 = ("Start")
    var_3 = ("SYSTEM\CurrentControlSet\Services\Schedule")
    Call sub_442DF0()
    
    If (    ((var_34) = ("4"))) Then
    var_52 = ("Task Scheduler")
    var_34 = ("Task Scheduler is Disabled, KillBox will enable it for you")
    var_148 = MsgBox(var_34, 17, var_52)
    
    If (    CInt(var_148) = 1) Then
    Call sub_416110()
    Call sub_416110()
    var_num1 = Empty
    var_84 = (FrmKillBox)
    var_4 = ("config schedule start= auto")
    var_253 = () & ("\sc.exe")
    var_23 = (var_253)
    var_76 = ("open")
    Call ShellExecuteA ()  '(API Sub call...)
    DoEvents
    Call Sleep ()  '(API Sub call...)
    Call sub_416110()
    Call sub_416110()
    var_num1 = Empty
    var_84 = (FrmKillBox)
    var_4 = ("start schedule")
    var_106 = (FrmKillBox) & ("\sc.exe")
    var_23 = (var_106)
    var_76 = ("open")
    Call ShellExecuteA ()  '(API Sub call...)
    DoEvents
End If
Call sub_416110()
var_126 = () & ("\KillBox.exe")
var_83 = (var_126)
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4628)) = -1) Then
    Call sub_416110()
    var_3 = (-348) & ("\KillBox.exe")
    Kill var_3
    
End If
Set var_9 = New Global
Set var_26 = var_9.[PROPERTY NOT VISIBLE IN FREE EDITION]
var_3 = var_26.[PROPERTY NOT VISIBLE IN FREE EDITION]
Call sub_416110()
var_15 = (vbNullString) & ("\KillBox.exe")
var_84 = (var_15)
var_214 = (var_3) & ("\")
var_216 = (var_214) & (var_17)
var_4 = (var_216)
Call CopyFileA ()  '(API Sub call...)
Call GetSystemTime ()  '(API Sub call...)
var_40 = (0)
var_14 = (Me)

If (((var_40) = ("59"))) Then
    Call SetSystemTime ()  '(API Sub call...)
    var_52 = ("Time")
    var_34 = ("Error in SystemTime, Try again")
    var_144 = MsgBox(var_34, 0, var_52)
    
End If
Call SetSystemTime ()  '(API Sub call...)
var_34 = Time()
Call sub_416110()
Call sub_416110()
Call sub_416110()
var_22 = (Chr(34))
var_46 = (#NOT SUPPORTED#)
var_106 = (FrmKillBox) & ("\Cmd.exe")
var_23 = (var_106)
var_76 = ("open")
Call ShellExecuteA ()  '(API Sub call...)
Set var_9 = New Global
Set var_26 = Me
Call var_9.[METHOD NOT VISIBLE IN FREE EDITION](var_26)
End
'ERROR: Two many next close:
End If

End Sub


'Event for mnuWininit
Private Sub mnuWininit_Click()
var_8 = ("C:\Windows\wininit.ini")
Call PathFileExistsA ()  '(API Sub call...)

If (CBool(CStr(-4496)) = -1) Then
    
    If (    Me < 0) Then
    
End If
Call sub_416020()
Call sub_416020()
Call sub_416020()
var_77 = (FrmKillBox)
var_106 = (FrmKillBox) & ("\wininit.ini")
var_40 = (var_106)
var_106 = (FrmKillBox) & ("\notepad.exe")
var_24 = (var_106)
var_29 = ("open")
Call ShellExecuteA ()  '(API Sub call...)

'ERROR: Two many next close:
End If
var_23 = ("Wininit.ini")
var_14 = ("Wininit.ini does not yet exist")
var_120 = MsgBox(var_14, 48, var_23)

End Sub


'Event for StatusBar1
Private Sub StatusBar1_PanelClick(Panel as Panel)
Set var_18 = arg_0

If (var_18 < 0) Then
    
End If

If (0 = 1) Then
    var_10 = ("http:\\www.killbox.net")
    var_8 = ("open")
    Call ShellExecuteA ()  '(API Sub call...)
    
End If

End Sub


Private Sub StatusBar1_MouseMove(Button as Integer, Shift as Integer, x as Long, y as Long)

End Sub


'Event for ChkDummy
Private Sub ChkDummy_MouseUp(Button as Integer, Shift as Integer, X as Single, Y as Single)

End Sub


'Event for cmdBrowse2
Private Sub cmdBrowse2_Click()
var_10 = ("LastPath2")
var_8 = ("Software\KillBox\")
Call sub_442DF0()
var_163 = (var_27)
var_8 = ("Select a file or folder")
Call sub_417770()
Set var_11 = Nothing

If (((var_163) = (vbNullChar))) Then
    Set var_11 = ((var_163) [##] (vbNullChar))
    
    If (    var_11) Then
    
End If

'ERROR: Two many next close:
End If
Set var_11 = ((var_163) [##] (vbNullChar))
var_8 = (var_163)
Call sub_4171B0()
Call sub_4175B0()
var_10 = ("LastPath2")
var_8 = ("Software\KillBox")
Call sub_443490()

End Sub


'Event for Destinationtxt
Private Sub Destinationtxt_MouseMove(Button as Integer, Shift as Integer, X as Single, Y as Single)
Set var_12 = Me

If (var_12 < 0) Then
    
End If
var_11 = (vbNullString)

If (arg_D = 0) Then
    Dim var_156 As New clsToolTip
End If
Set var_3 = var_156
Set var_12 = Me

If (var_3 < 0) Then
    
End If

If (var_3 < 0) Then
    
End If

If (var_3 < 0) Then
    
End If

If (FrmKillBox < 0) Then
    
End If
Set var_76 = var_12

If (var_3 < 0) Then
    
End If
Set var_12 = 
Set var_40 = var_12

If (var_3 < 0) Then
    
End If
Set var_3 = Nothing

End Sub


'Event for ChkKeepEnd
Private Sub ChkKeepEnd_Click()
var_num1 = Empty
Set var_18 = Me
var_num1 = Empty

If (Me = 1) Then
    Set var_18 = Me = 1
    
End If
Set var_18 = Me = 1

If (Me = 0) Then
    Set var_18 = Nothing
    
End If

End Sub


Private Sub ChkKeepEnd_MouseMove(Button as Integer, Shift as Integer, X as Single, Y as Single)
var_106 = ("Enabling this Option will sent continous kill messages") & (vbCrLf)
var_135 = (var_106) & ("every 5 seconds to any checked items in the list")
var_103 = (var_135) & (vbCrLf)
var_17 = (var_103) & ("clicking ")

If (arg_D = 0) Then
    Dim var_156 As New clsToolTip
End If
Set var_157 = var_156
Set var_24 = Me

If (var_157 < 0) Then
    
End If

If (40 < 0) Then
    
End If

If (240 < 0) Then
    
End If

If (FrmKillBox < 0) Then
    
End If
Set var_55 = var_24

If (240 < 0) Then
    
End If
Set var_24 = 
Set var_12 = var_24

If (240 < 0) Then
    
End If
Set var_157 = Nothing

End Sub


'Event for TmrProcess
Private Sub TmrProcess_Timer()
var_num1 = Empty
Set var_29 = Me
var_num1 = Empty

Do While (Me = var_29)
    Set var_29 = Me = var_29
    var_num7 = Me - 1
    var_num2 = Empty
    
    Do While (    __vbaObjSet <= var_num7)
    Set var_29 = Nothing
    var_num1 = Empty
    
    If (    Me = -1) Then
    Set var_29 = Nothing
    Call sub_416B30()
    
End If
var_num1 = var_27 + __vbaObjSet

'ERROR: Two many next close:
Loop

End Sub


'Event for mnuAutoP
Private Sub mnuAutoP_Click()
var_num1 = Empty
Set var_18 = Me
var_num1 = Empty

If (Me = -1) Then
    Set var_18 = Me = -1
    
End If
Set var_18 = Me = -1

End Sub


'Event for ChkRegDACL
Private Sub ChkRegDACL_MouseUp(Button as Integer, Shift as Integer, X as Single, Y as Single)
var_11 = ("Disclm")
var_29 = ("Software\KillBox\")
Call sub_442DF0()

If (((var_77) <> ("OK"))) Then
    var_7 = ("Disclaimer")
    var_7 = ("Setting permissions to parts of the Registry can be ") & (vbCrLf)
    var_104 = (var_7) & ("Although care has been given to utilize the functions of the third party programs used, KillBox cannot be responsible for unexpected results")
    var_158 = MsgBox(var_104, 33, var_7)
    
    If (    CInt(var_158) = 1) Then
    var_77 = ("OK")
    var_11 = ("Disclm")
    var_29 = ("Software\KillBox")
    Call sub_443490()
    
End If
Set var_24 = 1

If (0 < 0) Then
    
End If

'ERROR: Two many next close:
End If

End Sub


'Event for OptNormal
Private Sub OptNormal_Click()
Set var_18 = Me
Set var_18 = var_18
Set var_18 = var_18
Set var_18 = var_18
Set var_18 = var_18
Set var_18 = var_18

End Sub


'Event for mnuRemSel
Private Sub mnuRemSel_Click()
var_num1 = Empty
Set var_8 = Me
var_num2 = Empty

If (Me = -1) Then
    Set var_8 = Nothing
    var_num2 = Empty
    
    If (    Me >= 1) Then
    Set var_8 = 
    Set var_10 = Nothing
    Set var_8 = Nothing
    Set var_8 = 
    var_num2 = Empty
    
    If (    Me = var_8) Then
    Set var_8 = var_8
    var_num2 = Empty
    
    If (    Me > Me) Then
    Set var_8 = Me
    
End If
Set var_8 = Me
Set var_8 = var_8
Set var_10 = var_8

'ERROR: Two many next close:
End If

End Sub


'Event for OptRepReboot
Private Sub OptRepReboot_Click()
var_num1 = Empty
Set var_18 = Me
Set var_18 = var_18
Set var_18 = var_18
Set var_18 = var_18
Set var_18 = var_18
var_num2 = Empty

If (Me = 1) Then
    Set var_18 = Nothing
    
End If
Set var_18 = Nothing
Set var_18 = Nothing

End Sub


