.class public abstract Landroid/os/IVoIPInterface$Stub;
.super Landroid/os/Binder;
.source "IVoIPInterface.java"

# interfaces
.implements Landroid/os/IVoIPInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoIPInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoIPInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVoIPInterface"

.field static final TRANSACTION_answerVoIPCall:I = 0x4

.field static final TRANSACTION_callInVoIP:I = 0x2c

.field static final TRANSACTION_canUseBTInVoIP:I = 0x16

.field static final TRANSACTION_canUseHoldInVoIP:I = 0x19

.field static final TRANSACTION_createCallSession:I = 0x1

.field static final TRANSACTION_destroyCallSession:I = 0x2

.field static final TRANSACTION_disableStatusBarforVoIP:I = 0x30

.field static final TRANSACTION_dumpCallSessionInfoDB:I = 0x2e

.field static final TRANSACTION_getActiveCallIndex:I = 0x27

.field static final TRANSACTION_getActiveFgCallState:I = 0x29

.field static final TRANSACTION_getCurrentRemoteCallNumber:I = 0x25

.field static final TRANSACTION_getCurrentVoIPNumber:I = 0x24

.field static final TRANSACTION_getFirstActiveBgCallState:I = 0x2a

.field static final TRANSACTION_getFirstActiveRingingCallState:I = 0x2b

.field static final TRANSACTION_getSessionCount:I = 0x2d

.field static final TRANSACTION_getState:I = 0x26

.field static final TRANSACTION_getVoIPCallCount:I = 0xa

.field static final TRANSACTION_getVoIPInCallAlert:I = 0x35

.field static final TRANSACTION_hangupVoIPCall:I = 0x5

.field static final TRANSACTION_holdVoIPCall:I = 0x6

.field static final TRANSACTION_isIncoming:I = 0x28

.field static final TRANSACTION_isVoIPActivated:I = 0x1e

.field static final TRANSACTION_isVoIPAlerting:I = 0x20

.field static final TRANSACTION_isVoIPDialing:I = 0x1d

.field static final TRANSACTION_isVoIPDisconnecting:I = 0x23

.field static final TRANSACTION_isVoIPHolding:I = 0x1f

.field static final TRANSACTION_isVoIPIdle:I = 0x1a

.field static final TRANSACTION_isVoIPIncoming:I = 0x21

.field static final TRANSACTION_isVoIPRingOrDialing:I = 0x1b

.field static final TRANSACTION_isVoIPRinging:I = 0x1c

.field static final TRANSACTION_isVoIPWaiting:I = 0x22

.field static final TRANSACTION_moveVoIPToTop:I = 0x3

.field static final TRANSACTION_muteVoIPCall:I = 0x8

.field static final TRANSACTION_notifyCallStateforVoIP:I = 0x33

.field static final TRANSACTION_notifyMissedCallforVoIP:I = 0x32

.field static final TRANSACTION_reenableStatusBarforVoIP:I = 0x31

.field static final TRANSACTION_resumeVoIPCall:I = 0x7

.field static final TRANSACTION_setBTUserWantsAudioOn:I = 0x17

.field static final TRANSACTION_setEngMode:I = 0x2f

.field static final TRANSACTION_setUseBTInVoIP:I = 0x15

.field static final TRANSACTION_setUseHoldInVoIP:I = 0x18

.field static final TRANSACTION_setVoIPActive:I = 0xe

.field static final TRANSACTION_setVoIPAlerting:I = 0x10

.field static final TRANSACTION_setVoIPCallCount:I = 0x9

.field static final TRANSACTION_setVoIPDialing:I = 0xd

.field static final TRANSACTION_setVoIPDisconnected:I = 0x14

.field static final TRANSACTION_setVoIPDisconnecting:I = 0x13

.field static final TRANSACTION_setVoIPHolding:I = 0xf

.field static final TRANSACTION_setVoIPIdle:I = 0xb

.field static final TRANSACTION_setVoIPInCallAlert:I = 0x34

.field static final TRANSACTION_setVoIPIncoming:I = 0x11

.field static final TRANSACTION_setVoIPRinging:I = 0xc

.field static final TRANSACTION_setVoIPWaiting:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVoIPInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.os.IVoIPInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/os/IVoIPInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/os/IVoIPInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IVoIPInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 550
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IVoIPCallbackInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    .line 56
    .local v4, _arg3:Landroid/os/IVoIPCallbackInterface;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IVoIPInterface$Stub;->createCallSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)Z

    move-result v6

    .line 57
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v6, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Landroid/os/IVoIPCallbackInterface;
    .end local v6           #_result:Z
    :sswitch_2
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVoIPInterface$Stub;->destroyCallSession(Ljava/lang/String;)Z

    move-result v6

    .line 67
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v6, :cond_1

    move v0, v7

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_3
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->moveVoIPToTop()Z

    move-result v6

    .line 75
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v6, :cond_2

    move v0, v7

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v6           #_result:Z
    :sswitch_4
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->answerVoIPCall()Z

    move-result v6

    .line 83
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v6, :cond_3

    move v0, v7

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v6           #_result:Z
    :sswitch_5
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->hangupVoIPCall()Z

    move-result v6

    .line 91
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v6, :cond_4

    move v0, v7

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v6           #_result:Z
    :sswitch_6
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->holdVoIPCall()Z

    move-result v6

    .line 99
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v6, :cond_5

    move v0, v7

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 105
    .end local v6           #_result:Z
    :sswitch_7
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->resumeVoIPCall()Z

    move-result v6

    .line 107
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v6, :cond_6

    move v0, v7

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v6           #_result:Z
    :sswitch_8
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->muteVoIPCall()Z

    move-result v6

    .line 115
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v6, :cond_7

    move v0, v7

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v6           #_result:Z
    :sswitch_9
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setVoIPCallCount(Ljava/lang/String;I)Z

    move-result v6

    .line 127
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v6, :cond_8

    move v0, v7

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_a
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVoIPInterface$Stub;->getVoIPCallCount(Ljava/lang/String;)I

    move-result v6

    .line 137
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_b
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVoIPInterface$Stub;->setVoIPIdle(Ljava/lang/String;)Z

    move-result v6

    .line 147
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v6, :cond_9

    move v0, v7

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_c
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setVoIPRinging(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 159
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v6, :cond_a

    move v0, v7

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_d
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setVoIPDialing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 171
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v6, :cond_b

    move v0, v7

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_e
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setVoIPActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 183
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v6, :cond_c

    move v0, v7

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 189
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_f
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setVoIPHolding(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 195
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v6, :cond_d

    move v0, v7

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_10
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setVoIPAlerting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 207
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v6, :cond_e

    move v0, v7

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_11
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setVoIPIncoming(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 219
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v6, :cond_f

    move v0, v7

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 225
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_12
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setVoIPWaiting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 231
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v6, :cond_10

    move v0, v7

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_13
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setVoIPDisconnecting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 243
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v6, :cond_11

    move v0, v7

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_14
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setVoIPDisconnected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 255
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v6, :cond_12

    move v0, v7

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 261
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_15
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_14

    move v2, v7

    .line 266
    .local v2, _arg1:Z
    :goto_1
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setUseBTInVoIP(Ljava/lang/String;Z)Z

    move-result v6

    .line 267
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v6, :cond_13

    move v0, v7

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_14
    move v2, v0

    .line 265
    goto :goto_1

    .line 273
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_16
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 276
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVoIPInterface$Stub;->canUseBTInVoIP(Ljava/lang/String;)Z

    move-result v6

    .line 277
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v6, :cond_15

    move v0, v7

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 283
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_17
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_17

    move v1, v7

    .line 286
    .local v1, _arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Landroid/os/IVoIPInterface$Stub;->setBTUserWantsAudioOn(Z)Z

    move-result v6

    .line 287
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v6, :cond_16

    move v0, v7

    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_17
    move v1, v0

    .line 285
    goto :goto_2

    .line 293
    :sswitch_18
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_19

    move v2, v7

    .line 298
    .restart local v2       #_arg1:Z
    :goto_3
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setUseHoldInVoIP(Ljava/lang/String;Z)Z

    move-result v6

    .line 299
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v6, :cond_18

    move v0, v7

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_19
    move v2, v0

    .line 297
    goto :goto_3

    .line 305
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_19
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->canUseHoldInVoIP()Z

    move-result v6

    .line 307
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v6, :cond_1a

    move v0, v7

    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 313
    .end local v6           #_result:Z
    :sswitch_1a
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPIdle()Z

    move-result v6

    .line 315
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v6, :cond_1b

    move v0, v7

    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 321
    .end local v6           #_result:Z
    :sswitch_1b
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPRingOrDialing()Z

    move-result v6

    .line 323
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v6, :cond_1c

    move v0, v7

    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 329
    .end local v6           #_result:Z
    :sswitch_1c
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPRinging()Z

    move-result v6

    .line 331
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v6, :cond_1d

    move v0, v7

    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 337
    .end local v6           #_result:Z
    :sswitch_1d
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPDialing()Z

    move-result v6

    .line 339
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v6, :cond_1e

    move v0, v7

    :cond_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 345
    .end local v6           #_result:Z
    :sswitch_1e
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPActivated()Z

    move-result v6

    .line 347
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v6, :cond_1f

    move v0, v7

    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 353
    .end local v6           #_result:Z
    :sswitch_1f
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPHolding()Z

    move-result v6

    .line 355
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v6, :cond_20

    move v0, v7

    :cond_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 361
    .end local v6           #_result:Z
    :sswitch_20
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPAlerting()Z

    move-result v6

    .line 363
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v6, :cond_21

    move v0, v7

    :cond_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 369
    .end local v6           #_result:Z
    :sswitch_21
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPIncoming()Z

    move-result v6

    .line 371
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v6, :cond_22

    move v0, v7

    :cond_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 377
    .end local v6           #_result:Z
    :sswitch_22
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPWaiting()Z

    move-result v6

    .line 379
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v6, :cond_23

    move v0, v7

    :cond_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v6           #_result:Z
    :sswitch_23
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPDisconnecting()Z

    move-result v6

    .line 387
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v6, :cond_24

    move v0, v7

    :cond_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 393
    .end local v6           #_result:Z
    :sswitch_24
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->getCurrentVoIPNumber()Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_25
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->getCurrentRemoteCallNumber()Ljava/lang/String;

    move-result-object v6

    .line 403
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_26
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->getState()I

    move-result v6

    .line 411
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 417
    .end local v6           #_result:I
    :sswitch_27
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->getActiveCallIndex()I

    move-result v6

    .line 419
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 425
    .end local v6           #_result:I
    :sswitch_28
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->isIncoming()Z

    move-result v6

    .line 427
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v6, :cond_25

    move v0, v7

    :cond_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 433
    .end local v6           #_result:Z
    :sswitch_29
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->getActiveFgCallState()I

    move-result v6

    .line 435
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 441
    .end local v6           #_result:I
    :sswitch_2a
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->getFirstActiveBgCallState()I

    move-result v6

    .line 443
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v6           #_result:I
    :sswitch_2b
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->getFirstActiveRingingCallState()I

    move-result v6

    .line 451
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 457
    .end local v6           #_result:I
    :sswitch_2c
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 460
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVoIPInterface$Stub;->callInVoIP(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 466
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2d
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->getSessionCount()I

    move-result v6

    .line 468
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 474
    .end local v6           #_result:I
    :sswitch_2e
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 477
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVoIPInterface$Stub;->dumpCallSessionInfoDB(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 483
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2f
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 488
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->setEngMode(Ljava/lang/String;I)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 494
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_30
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->disableStatusBarforVoIP()V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 501
    :sswitch_31
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->reenableStatusBarforVoIP()V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 508
    :sswitch_32
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 516
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg3:J
    move-object v0, p0

    .line 517
    invoke-virtual/range {v0 .. v5}, Landroid/os/IVoIPInterface$Stub;->notifyMissedCallforVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 523
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:J
    :sswitch_33
    const-string v0, "android.os.IVoIPInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 527
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 528
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoIPInterface$Stub;->notifyCallStateforVoIP(ILjava/lang/String;)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 534
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_34
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_26

    move v1, v7

    .line 537
    .local v1, _arg0:Z
    :goto_4
    invoke-virtual {p0, v1}, Landroid/os/IVoIPInterface$Stub;->setVoIPInCallAlert(Z)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_26
    move v1, v0

    .line 536
    goto :goto_4

    .line 543
    :sswitch_35
    const-string v8, "android.os.IVoIPInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Landroid/os/IVoIPInterface$Stub;->getVoIPInCallAlert()Z

    move-result v6

    .line 545
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v6, :cond_27

    move v0, v7

    :cond_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
