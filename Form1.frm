VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Label Kedap-Kedip (Blank)"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Left            =   720
      Top             =   1560
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   255
      Left            =   720
      TabIndex        =   0
      Top             =   840
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Long                       'Deklarasi
Dim merah, hijau, biru As Integer   'Variabel global

Private Sub Form_Load()
   i = 0     'Inisialisasi detik
   Timer1.Interval = 500   'Kalau 1000 biasanya lompat
                           '1 detik
End Sub

Private Sub Timer1_Timer()
   i = i + 1
   If i = 1000000 Then i = 0 'Supaya tdk overflow.
   merah = Int(255 * Rnd)    'Bangkitkan angka random
      'untuk merah
   hijau = Int(255 * Rnd)    'Bangkitkan angka random
   'untuk hijau
   biru = Int(255 * Rnd)     'Bangkitkan angka random
   'untuk biru
   Label1.ForeColor = RGB(merah, hijau, biru)   'Campur
   'tiga warna
   If i Mod 2 = 0 Then     'Jika counter habis dibagi 2
      Label1.Visible = True  'Tampilkan label
   Else          'Jika counter tidak habis dibagi 2
      Label1.Visible = False 'Sembunyikan label
   End If                    'Akhir pemeriksaan
End Sub

