.class Lcom/android/sec_settings/wifi/AdvancedWifiSettings$SwitchHandler;
.super Landroid/os/Handler;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/AdvancedWifiSettings;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 735
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 743
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 744
    return-void

    .line 737
    :pswitch_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings$SwitchHandler;->this$0:Lcom/android/sec_settings/wifi/AdvancedWifiSettings;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/sec_settings/SettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 740
    :pswitch_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings$SwitchHandler;->this$0:Lcom/android/sec_settings/wifi/AdvancedWifiSettings;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/sec_settings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
