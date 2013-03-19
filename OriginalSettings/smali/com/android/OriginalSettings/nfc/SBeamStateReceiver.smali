.class public Lcom/android/settings/nfc/SBeamStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBeamStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 22
    invoke-static {p1, p2}, Lcom/android/settings/nfc/SBeamEnabler;->procAbeamChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 27
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->initPreferenceForSbeam(Landroid/content/Context;)V

    goto :goto_0

    .line 31
    :cond_2
    const-string v5, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 32
    const-string v5, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 33
    .local v2, newState:I
    if-ne v8, v2, :cond_0

    .line 34
    const-string v5, "android.nfc.extra.PREF_ADAPTER_STATE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 36
    :cond_3
    const-string v5, "[SBeam]"

    const-string v6, "SBeamStateReceiver : NFC turn off"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {p1, v7, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 42
    .end local v2           #newState:I
    :cond_4
    const-string v5, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 43
    const-string v5, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 44
    .restart local v2       #newState:I
    if-ne v9, v2, :cond_0

    .line 45
    const-string v5, "[SBeam]"

    const-string v6, "SBeamStateReceiver : R/W P2P turn off"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p1, v7, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 51
    .end local v2           #newState:I
    :cond_5
    const-string v5, "com.android.settings.action.SBEAM_STATE_UPDATED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    const-string v5, "turn_on"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 53
    .local v1, bOn:Z
    const-string v5, "[SBeam]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SBeamStateReceiver : updated ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {p1, v1, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 59
    .local v3, nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 60
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 61
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 64
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    .line 65
    .local v4, state:I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 66
    :cond_6
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 68
    :cond_7
    if-ne v4, v9, :cond_8

    .line 69
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 71
    :cond_8
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto/16 :goto_0
.end method
