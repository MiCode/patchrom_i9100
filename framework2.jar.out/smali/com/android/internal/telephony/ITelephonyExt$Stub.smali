.class public abstract Lcom/android/internal/telephony/ITelephonyExt$Stub;
.super Landroid/os/Binder;
.source "ITelephonyExt.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyExt"

.field static final TRANSACTION_getActiveCallsCount:I = 0x11

.field static final TRANSACTION_getCallBaseTime:I = 0x15

.field static final TRANSACTION_getCallTime:I = 0x14

.field static final TRANSACTION_getCallerName:I = 0x13

.field static final TRANSACTION_getCurrentUATI:I = 0x28

.field static final TRANSACTION_getHoldCallsCount:I = 0x12

.field static final TRANSACTION_getLteCellInfo:I = 0x27

.field static final TRANSACTION_getMobileQualityInformation:I = 0x22

.field static final TRANSACTION_getMsisdnavailable:I = 0x3

.field static final TRANSACTION_getMute:I = 0xe

.field static final TRANSACTION_getPin2LockKey:I = 0x9

.field static final TRANSACTION_getPinLockKey:I = 0x8

.field static final TRANSACTION_getSimPin2Retry:I = 0x6

.field static final TRANSACTION_getSimPinRetry:I = 0x4

.field static final TRANSACTION_getSimPuk2Retry:I = 0x7

.field static final TRANSACTION_getSimPukRetry:I = 0x5

.field static final TRANSACTION_getTelephonyFeature:I = 0xa

.field static final TRANSACTION_getTimeInfo:I = 0x25

.field static final TRANSACTION_getWipiSysInfo:I = 0x26

.field static final TRANSACTION_isBluetoothAudioConnected:I = 0x21

.field static final TRANSACTION_isConferenceCall:I = 0x18

.field static final TRANSACTION_isFirstCallDialingAndSecondCallActive:I = 0x1a

.field static final TRANSACTION_isHeadsetConnected:I = 0x1f

.field static final TRANSACTION_isIdle:I = 0x17

.field static final TRANSACTION_isMultiCall:I = 0x19

.field static final TRANSACTION_isSimFDNEnabled:I = 0xb

.field static final TRANSACTION_isVideoCall:I = 0x2b

.field static final TRANSACTION_notifyVoIPCallStateChangeIntoBT:I = 0x20

.field static final TRANSACTION_sendDtmf:I = 0x2a

.field static final TRANSACTION_sendRequestRawToRIL:I = 0x29

.field static final TRANSACTION_sendRequestToRIL:I = 0x1c

.field static final TRANSACTION_setBTUserWantsAudioOn:I = 0x1e

.field static final TRANSACTION_setMute:I = 0xd

.field static final TRANSACTION_showPopupCallScreen:I = 0x16

.field static final TRANSACTION_startMobileQualityInformation:I = 0x23

.field static final TRANSACTION_stopMobileQualityInformation:I = 0x24

.field static final TRANSACTION_supplyPerso:I = 0x1d

.field static final TRANSACTION_supplyPin2:I = 0x2

.field static final TRANSACTION_supplyPuk:I = 0x1

.field static final TRANSACTION_switchHoldingAndActive:I = 0xc

.field static final TRANSACTION_turnOnBluetooth:I = 0x10

.field static final TRANSACTION_turnOnSpeaker:I = 0xf

.field static final TRANSACTION_updateRAFTproximity:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephonyExt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyExt;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephonyExt;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 422
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 49
    :sswitch_0
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 60
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_2
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPin2(Ljava/lang/String;)Z

    move-result v3

    .line 70
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_3
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMsisdnavailable()Z

    move-result v3

    .line 78
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v3           #_result:Z
    :sswitch_4
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPinRetry()I

    move-result v3

    .line 86
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v3           #_result:I
    :sswitch_5
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPukRetry()I

    move-result v3

    .line 94
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v3           #_result:I
    :sswitch_6
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPin2Retry()I

    move-result v3

    .line 102
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 108
    .end local v3           #_result:I
    :sswitch_7
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPuk2Retry()I

    move-result v3

    .line 110
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v3           #_result:I
    :sswitch_8
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getPinLockKey()I

    move-result v3

    .line 118
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v3           #_result:I
    :sswitch_9
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getPin2LockKey()I

    move-result v3

    .line 126
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v3           #_result:I
    :sswitch_a
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getTelephonyFeature()Ljava/util/Map;

    move-result-object v3

    .line 134
    .local v3, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 140
    .end local v3           #_result:Ljava/util/Map;
    :sswitch_b
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isSimFDNEnabled()Z

    move-result v3

    .line 142
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v3           #_result:Z
    :sswitch_c
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->switchHoldingAndActive()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 155
    :sswitch_d
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v0, v6

    .line 158
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->setMute(Z)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v5

    .line 157
    goto :goto_1

    .line 164
    :sswitch_e
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMute()Z

    move-result v3

    .line 166
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v3           #_result:Z
    :sswitch_f
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v0, v6

    .line 175
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnSpeaker(Z)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v5

    .line 174
    goto :goto_2

    .line 181
    :sswitch_10
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnBluetooth()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 188
    :sswitch_11
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getActiveCallsCount()I

    move-result v3

    .line 190
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v3           #_result:I
    :sswitch_12
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getHoldCallsCount()I

    move-result v3

    .line 198
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 204
    .end local v3           #_result:I
    :sswitch_13
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallerName()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallTime()J

    move-result-wide v3

    .line 214
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 220
    .end local v3           #_result:J
    :sswitch_15
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallBaseTime()J

    move-result-wide v3

    .line 222
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 228
    .end local v3           #_result:J
    :sswitch_16
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->showPopupCallScreen()Z

    move-result v3

    .line 230
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v3           #_result:Z
    :sswitch_17
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isIdle()Z

    move-result v3

    .line 238
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    .end local v3           #_result:Z
    :sswitch_18
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isConferenceCall()Z

    move-result v3

    .line 246
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v3, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 252
    .end local v3           #_result:Z
    :sswitch_19
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isMultiCall()Z

    move-result v3

    .line 254
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 260
    .end local v3           #_result:Z
    :sswitch_1a
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isFirstCallDialingAndSecondCallActive()Z

    move-result v3

    .line 262
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v3, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 268
    .end local v3           #_result:Z
    :sswitch_1b
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->updateRAFTproximity(I)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 277
    .end local v0           #_arg0:I
    :sswitch_1c
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 281
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 283
    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->sendRequestToRIL([B[BI)I

    move-result v3

    .line 285
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 292
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:I
    .end local v3           #_result:I
    :sswitch_1d
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPerso(Ljava/lang/String;)Z

    move-result v3

    .line 296
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v3, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 302
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_1e
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    move v0, v6

    .line 305
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->setBTUserWantsAudioOn(Z)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_d
    move v0, v5

    .line 304
    goto :goto_3

    .line 311
    :sswitch_1f
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isHeadsetConnected()Z

    move-result v3

    .line 313
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v3, :cond_e

    move v5, v6

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 319
    .end local v3           #_result:Z
    :sswitch_20
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->notifyVoIPCallStateChangeIntoBT()V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 326
    :sswitch_21
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isBluetoothAudioConnected()Z

    move-result v3

    .line 328
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v3, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 334
    .end local v3           #_result:Z
    :sswitch_22
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMobileQualityInformation()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_23
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->startMobileQualityInformation()V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 349
    :sswitch_24
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->stopMobileQualityInformation()V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 356
    :sswitch_25
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getTimeInfo()Ljava/lang/String;

    move-result-object v3

    .line 358
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_26
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getWipiSysInfo()Ljava/lang/String;

    move-result-object v3

    .line 366
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 372
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_27
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getLteCellInfo()Ljava/lang/String;

    move-result-object v3

    .line 374
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_28
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCurrentUATI()[B

    move-result-object v3

    .line 382
    .local v3, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 388
    .end local v3           #_result:[B
    :sswitch_29
    const-string v5, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 392
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 393
    sget-object v5, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 398
    .local v1, _arg1:Landroid/os/Message;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->sendRequestRawToRIL([BLandroid/os/Message;)I

    move-result v3

    .line 399
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 396
    .end local v1           #_arg1:Landroid/os/Message;
    .end local v3           #_result:I
    :cond_10
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Message;
    goto :goto_4

    .line 405
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:Landroid/os/Message;
    :sswitch_2a
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v0, v7

    .line 408
    .local v0, _arg0:C
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->sendDtmf(C)Z

    move-result v3

    .line 409
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v3, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 415
    .end local v0           #_arg0:C
    .end local v3           #_result:Z
    :sswitch_2b
    const-string v7, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isVideoCall()Z

    move-result v3

    .line 417
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v3, :cond_12

    move v5, v6

    :cond_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
