.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canEndCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canRejectWithMsg:Z

.field public canSwap:Z

.field public canTransfer:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 93
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 94
    return-void
.end method


# virtual methods
.method public update()V
    .locals 14

    .prologue
    .line 101
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    .line 102
    .local v11, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v5, 0x1

    .line 103
    .local v5, hasRingingCall:Z
    :goto_0
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 104
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 105
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v12, :cond_7

    const/4 v3, 0x1

    .line 106
    .local v3, hasActiveForegroundCall:Z
    :goto_1
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 109
    .local v4, hasHoldingCall:Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 113
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 114
    iget-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v12

    if-nez v12, :cond_8

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 123
    :goto_3
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 130
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    .line 132
    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 134
    .local v0, c:Lcom/android/internal/telephony/Connection;
    iget-boolean v13, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x1

    :goto_4
    and-int/2addr v12, v13

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 137
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 138
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 139
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    .line 144
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v12

    if-nez v12, :cond_b

    const/4 v12, 0x1

    :goto_5
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 145
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 146
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 153
    :goto_6
    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v11, v12, :cond_d

    const/4 v12, 0x1

    :goto_7
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 154
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 160
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 161
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    const/4 v7, 0x0

    .line 162
    .local v7, isEmergencyCall:Z
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    .line 165
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    .line 166
    .local v6, isECM:Z
    if-nez v7, :cond_2

    if-eqz v6, :cond_e

    .line 167
    :cond_2
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 168
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 176
    :goto_8
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 180
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 183
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 185
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 189
    if-eqz v4, :cond_f

    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v12, :cond_f

    const/4 v12, 0x1

    :goto_9
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 192
    if-eqz v3, :cond_10

    if-nez v4, :cond_10

    const/4 v8, 0x1

    .line 193
    .local v8, okToHold:Z
    :goto_a
    iget-boolean v9, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 194
    .local v9, okToUnhold:Z
    if-nez v8, :cond_3

    if-eqz v9, :cond_11

    :cond_3
    const/4 v12, 0x1

    :goto_b
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 207
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :cond_4
    :goto_c
    if-eqz v5, :cond_14

    .line 208
    iget-object v12, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 209
    .local v10, presentation:I
    sget v12, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v10, v12, :cond_5

    sget v12, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v10, v12, :cond_13

    .line 210
    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    .line 218
    .end local v10           #presentation:I
    :goto_d
    return-void

    .line 102
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v3           #hasActiveForegroundCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    .end local v6           #isECM:Z
    .end local v7           #isEmergencyCall:Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 105
    .restart local v1       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v5       #hasRingingCall:Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 114
    .restart local v3       #hasActiveForegroundCall:Z
    .restart local v4       #hasHoldingCall:Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 118
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 119
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_3

    .line 134
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 144
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 148
    :cond_c
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_6

    .line 153
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 170
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v6       #isECM:Z
    .restart local v7       #isEmergencyCall:Z
    :cond_e
    iput-boolean v3, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 171
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto :goto_8

    .line 189
    :cond_f
    const/4 v12, 0x0

    goto :goto_9

    .line 192
    :cond_10
    const/4 v8, 0x0

    goto :goto_a

    .line 194
    .restart local v8       #okToHold:Z
    .restart local v9       #okToUnhold:Z
    :cond_11
    const/4 v12, 0x0

    goto :goto_b

    .line 197
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :cond_12
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 198
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 199
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 201
    const-string v12, "support_multi_call"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 202
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setMultiCallState()V

    goto :goto_c

    .line 212
    .restart local v10       #presentation:I
    :cond_13
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    goto :goto_d

    .line 214
    .end local v10           #presentation:I
    :cond_14
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    goto :goto_d
.end method
