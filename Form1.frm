VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "T.A.S. Swish Game Unit"
   ClientHeight    =   6285
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   8280
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6285
   ScaleWidth      =   8280
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   1485
      Top             =   6060
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   2640
      Left            =   -15
      TabIndex        =   0
      Top             =   -15
      Width           =   2190
      ExtentX         =   3863
      ExtentY         =   4657
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim bargone As Boolean
Private Sub Form_Load()
WebBrowser1.Top = Form1.ScaleTop
WebBrowser1.Left = Form1.ScaleLeft
WebBrowser1.Height = Form1.Height
WebBrowser1.Width = Form1.Width
WebBrowser1.Navigate App.Path & "\BeerDude2.swf"
End Sub
Private Sub Form_Unload(Cancel As Integer)
TaskBarShow
End Sub
Private Sub Timer1_Timer()
Me.Visible = True
WebBrowser1.Top = Form1.ScaleTop
WebBrowser1.Left = Form1.ScaleLeft
WebBrowser1.Height = Form1.Height
WebBrowser1.Width = Form1.Width
If Me.WindowState = 2 Then
If bargone = False Then
TaskBarHide
bargone = True
End If
Else
TaskBarShow
bargone = False
End If
End Sub
