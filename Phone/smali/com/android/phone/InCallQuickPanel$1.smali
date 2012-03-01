.class final Lcom/android/phone/InCallQuickPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "InCallQuickPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallQuickPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    const-string v10, "InCallQuickPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 58
    .local v4, phoneApp:Lcom/android/phone/PhoneApp;
    iget-object v3, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 60
    .local v3, cm:Lcom/android/internal/telephony/CallManager;
    const-string v10, "com.android.phone.SHOW_SCREEN"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 62
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 63
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInVTCallIntent()Landroid/content/Intent;

    move-result-object v8

    .line 67
    .local v8, showScreenIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v4, v8}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 106
    .end local v8           #showScreenIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v8

    .restart local v8       #showScreenIntent:Landroid/content/Intent;
    goto :goto_0

    .line 68
    .end local v8           #showScreenIntent:Landroid/content/Intent;
    :cond_2
    const-string v10, "com.android.phone.MUTE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 69
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v10

    if-nez v10, :cond_4

    .line 70
    .local v6, requestedMuteState:Z
    :goto_2
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 73
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 74
    :cond_3
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_1

    .end local v6           #requestedMuteState:Z
    :cond_4
    move v6, v9

    .line 69
    goto :goto_2

    .line 76
    :cond_5
    const-string v10, "com.android.phone.SPEAKER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 77
    const-string v10, "audio"

    invoke-virtual {v4, v10}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 78
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v10

    if-nez v10, :cond_7

    move v7, v6

    .line 80
    .local v7, requestedSpeakerState:Z
    :goto_3
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 81
    .local v2, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v9

    if-ne v9, v6, :cond_6

    .line 82
    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 84
    :cond_6
    invoke-static {v4, v7, v6}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 86
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 87
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_1

    .end local v2           #bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    .end local v7           #requestedSpeakerState:Z
    :cond_7
    move v7, v9

    .line 78
    goto :goto_3

    .line 90
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :cond_8
    const-string v9, "com.android.phone.UNHOLD"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 91
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    .line 92
    :cond_9
    const-string v9, "com.android.phone.END"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 93
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 94
    .local v5, phoneType:I
    const/4 v9, 0x2

    if-ne v5, v9, :cond_a

    .line 95
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_1

    .line 96
    :cond_a
    if-eq v5, v6, :cond_b

    const/4 v9, 0x3

    if-ne v5, v9, :cond_c

    .line 98
    :cond_b
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_1

    .line 99
    :cond_c
    const/4 v9, 0x5

    if-ne v5, v9, :cond_d

    .line 101
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_1

    .line 103
    :cond_d
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
