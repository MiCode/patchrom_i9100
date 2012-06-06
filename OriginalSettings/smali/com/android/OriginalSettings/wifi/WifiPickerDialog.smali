.class public Lcom/android/OriginalSettings/wifi/WifiPickerDialog;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "WifiPickerDialog.java"


# instance fields
.field mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f0400ad

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080248

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    .line 25
    const v0, 0x7f0b023f

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;->setTitle(I)V

    .line 26
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 31
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 39
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 40
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 42
    :cond_0
    return-void
.end method
