.class public Lcom/android/sec_settings/wifi/WifiPickerDialog;
.super Landroid/app/Activity;
.source "WifiPickerDialog.java"


# instance fields
.field private mLastOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    iget v0, p0, Lcom/android/sec_settings/wifi/WifiPickerDialog;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 90
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/sec_settings/wifi/WifiPickerDialog;->mLastOrientation:I

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f04012d

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/wifi/WifiPickerDialog;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    const v1, 0x7f090226

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/wifi/WifiPickerDialog;->setTitle(I)V

    .line 42
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiPickerDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured from wifi_picker_dialog.xml, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiPickerDialog;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 77
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 79
    :cond_0
    return-void
.end method
