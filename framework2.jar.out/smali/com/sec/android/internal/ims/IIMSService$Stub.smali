.class public abstract Lcom/sec/android/internal/ims/IIMSService$Stub;
.super Landroid/os/Binder;
.source "IIMSService.java"

# interfaces
.implements Lcom/sec/android/internal/ims/IIMSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IIMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IIMSService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.internal.ims.IIMSService"

.field static final TRANSACTION_captureSurfaceImage:I = 0x11

.field static final TRANSACTION_contactSvcCallFunction:I = 0x24

.field static final TRANSACTION_deinitSurface:I = 0x12

.field static final TRANSACTION_getCurrentLatchedNetwork:I = 0x26

.field static final TRANSACTION_getImsRegStatus:I = 0x5

.field static final TRANSACTION_getMessageEnabler:I = 0x4

.field static final TRANSACTION_isFrontCamInUse:I = 0x9

.field static final TRANSACTION_isIMSEnabledOnWifi:I = 0x27

.field static final TRANSACTION_isImsForbidden:I = 0xc

.field static final TRANSACTION_isOnEHRPD:I = 0xb

.field static final TRANSACTION_isOnLTE:I = 0xa

.field static final TRANSACTION_isRegistered:I = 0x1

.field static final TRANSACTION_mmSS_Svc_Api:I = 0x6

.field static final TRANSACTION_mmTelSvcCallFunc:I = 0x23

.field static final TRANSACTION_mmTelSvcCallFuncAsync:I = 0x22

.field static final TRANSACTION_register:I = 0x1c

.field static final TRANSACTION_registerApp:I = 0x2

.field static final TRANSACTION_registerListener:I = 0x20

.field static final TRANSACTION_registerSSApp:I = 0x7

.field static final TRANSACTION_registerWithISIMResponse:I = 0x1e

.field static final TRANSACTION_resetCameraID:I = 0xe

.field static final TRANSACTION_sendLiveVideo:I = 0x10

.field static final TRANSACTION_sendStillImage:I = 0xf

.field static final TRANSACTION_setAudioMode:I = 0x29

.field static final TRANSACTION_setAudioTuningParameters:I = 0x25

.field static final TRANSACTION_setOrientation:I = 0x18

.field static final TRANSACTION_startAudio:I = 0x15

.field static final TRANSACTION_startCamera:I = 0x1a

.field static final TRANSACTION_startVideo:I = 0x16

.field static final TRANSACTION_startVideoRenderer:I = 0x14

.field static final TRANSACTION_stopCamera:I = 0x1b

.field static final TRANSACTION_stopVideo:I = 0x17

.field static final TRANSACTION_swapVideoSurface:I = 0x13

.field static final TRANSACTION_switchCamera:I = 0xd

.field static final TRANSACTION_unRegisterApp:I = 0x3

.field static final TRANSACTION_unRegisterSSApp:I = 0x8

.field static final TRANSACTION_unregister:I = 0x1d

.field static final TRANSACTION_unregisterListener:I = 0x21

.field static final TRANSACTION_unregisterWithISIMResponse:I = 0x1f

.field static final TRANSACTION_voiceRecord:I = 0x19

.field static final TRANSACTION_writeErrorData:I = 0x28


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.sec.android.internal.ims.IIMSService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/sec/android/internal/ims/IIMSService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/sec/android/internal/ims/IIMSService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/internal/ims/IIMSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 449
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 45
    :sswitch_0
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v10, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->isRegistered()Z

    move-result v8

    .line 52
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v8, :cond_0

    move v0, v9

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v8           #_result:Z
    :sswitch_2
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IImsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/ims/IImsServiceCallback;

    move-result-object v3

    .line 65
    .local v3, _arg2:Lcom/sec/android/ims/IImsServiceCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService$Stub;->registerApp(ILjava/lang/String;Lcom/sec/android/ims/IImsServiceCallback;)I

    move-result v8

    .line 66
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/sec/android/ims/IImsServiceCallback;
    .end local v8           #_result:I
    :sswitch_3
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->unRegisterApp(II)V

    goto :goto_0

    .line 82
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_4
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->getMessageEnabler()Lcom/sec/android/ims/message/IMessageEnabler;

    move-result-object v8

    .line 84
    .local v8, _result:Lcom/sec/android/ims/message/IMessageEnabler;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v8, :cond_1

    invoke-interface {v8}, Lcom/sec/android/ims/message/IMessageEnabler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 90
    .end local v8           #_result:Lcom/sec/android/ims/message/IMessageEnabler;
    :sswitch_5
    const-string v10, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->getImsRegStatus()Z

    move-result v8

    .line 92
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v8, :cond_2

    move v0, v9

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v8           #_result:Z
    :sswitch_6
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/IIMSService$Stub;->mmSS_Svc_Api(IIILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 110
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_7
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IImsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/ims/IImsServiceCallback;

    move-result-object v3

    .line 123
    .local v3, _arg2:Lcom/sec/android/ims/IImsServiceCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService$Stub;->registerSSApp(ILjava/lang/String;Lcom/sec/android/ims/IImsServiceCallback;)I

    move-result v8

    .line 124
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/sec/android/ims/IImsServiceCallback;
    .end local v8           #_result:I
    :sswitch_8
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->unRegisterSSApp(II)V

    goto/16 :goto_0

    .line 140
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_9
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->isFrontCamInUse()I

    move-result v8

    .line 142
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v8           #_result:I
    :sswitch_a
    const-string v10, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->isOnLTE()Z

    move-result v8

    .line 150
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v8, :cond_3

    move v0, v9

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 156
    .end local v8           #_result:Z
    :sswitch_b
    const-string v10, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->isOnEHRPD()Z

    move-result v8

    .line 158
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v8, :cond_4

    move v0, v9

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v8           #_result:Z
    :sswitch_c
    const-string v10, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->isImsForbidden()Z

    move-result v8

    .line 166
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v8, :cond_5

    move v0, v9

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v8           #_result:Z
    :sswitch_d
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->switchCamera()V

    goto/16 :goto_0

    .line 178
    :sswitch_e
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->resetCameraID()V

    goto/16 :goto_0

    .line 184
    :sswitch_f
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->sendStillImage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_10
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->sendLiveVideo()V

    goto/16 :goto_0

    .line 198
    :sswitch_11
    const-string v10, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    move v1, v9

    .line 202
    .local v1, _arg0:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->captureSurfaceImage(ZI)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    :cond_6
    move v1, v0

    .line 200
    goto :goto_2

    .line 208
    :sswitch_12
    const-string v10, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    move v1, v9

    .line 211
    .restart local v1       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->deinitSurface(Z)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_7
    move v1, v0

    .line 210
    goto :goto_3

    .line 217
    :sswitch_13
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->swapVideoSurface()V

    goto/16 :goto_0

    .line 223
    :sswitch_14
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 226
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 232
    .local v1, _arg0:Landroid/view/Surface;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 236
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 237
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/internal/ims/IIMSService$Stub;->startVideoRenderer(Landroid/view/Surface;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 229
    .end local v1           #_arg0:Landroid/view/Surface;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/Surface;
    goto :goto_4

    .line 242
    .end local v1           #_arg0:Landroid/view/Surface;
    :sswitch_15
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->startAudio()V

    goto/16 :goto_0

    .line 248
    :sswitch_16
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->startVideo()V

    goto/16 :goto_0

    .line 254
    :sswitch_17
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->stopVideo()V

    goto/16 :goto_0

    .line 260
    :sswitch_18
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->setOrientation(I)V

    goto/16 :goto_0

    .line 268
    .end local v1           #_arg0:I
    :sswitch_19
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->voiceRecord(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 278
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_1a
    const-string v10, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    .line 281
    sget-object v10, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 287
    .local v1, _arg0:Landroid/view/Surface;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 291
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 293
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    move v5, v9

    .line 295
    .local v5, _arg4:Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b

    move v6, v9

    .line 297
    .local v6, _arg5:Z
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 298
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/internal/ims/IIMSService$Stub;->startCamera(Landroid/view/Surface;IIIZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 284
    .end local v1           #_arg0:Landroid/view/Surface;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Z
    .end local v7           #_arg6:Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/Surface;
    goto :goto_5

    .restart local v2       #_arg1:I
    .restart local v3       #_arg2:I
    .restart local v4       #_arg3:I
    :cond_a
    move v5, v0

    .line 293
    goto :goto_6

    .restart local v5       #_arg4:Z
    :cond_b
    move v6, v0

    .line 295
    goto :goto_7

    .line 303
    .end local v1           #_arg0:Landroid/view/Surface;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    :sswitch_1b
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->stopCamera()V

    goto/16 :goto_0

    .line 309
    :sswitch_1c
    const-string v10, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c

    move v2, v9

    .line 314
    .local v2, _arg1:Z
    :goto_8
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->register(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_c
    move v2, v0

    .line 313
    goto :goto_8

    .line 319
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_1d
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->unregister()V

    goto/16 :goto_0

    .line 325
    :sswitch_1e
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 330
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->registerWithISIMResponse(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 335
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    :sswitch_1f
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 340
    .restart local v2       #_arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->unregisterWithISIMResponse(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 345
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    :sswitch_20
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IIMSEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSEventListener;

    move-result-object v1

    .line 349
    .local v1, _arg0:Lcom/sec/android/internal/ims/IIMSEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 350
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->registerListener(Lcom/sec/android/internal/ims/IIMSEventListener;I)V

    goto/16 :goto_0

    .line 355
    .end local v1           #_arg0:Lcom/sec/android/internal/ims/IIMSEventListener;
    .end local v2           #_arg1:I
    :sswitch_21
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IIMSEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSEventListener;

    move-result-object v1

    .line 358
    .restart local v1       #_arg0:Lcom/sec/android/internal/ims/IIMSEventListener;
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->unregisterListener(Lcom/sec/android/internal/ims/IIMSEventListener;)V

    goto/16 :goto_0

    .line 363
    .end local v1           #_arg0:Lcom/sec/android/internal/ims/IIMSEventListener;
    :sswitch_22
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 367
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 371
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/internal/ims/IIMSService$Stub;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V

    goto/16 :goto_0

    .line 377
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_23
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 381
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 383
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 385
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 386
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/internal/ims/IIMSService$Stub;->mmTelSvcCallFunc(IIILjava/lang/String;)I

    move-result v8

    .line 387
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 393
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_24
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 397
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 399
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 401
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 402
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/internal/ims/IIMSService$Stub;->contactSvcCallFunction(IIILjava/lang/String;)V

    goto/16 :goto_0

    .line 407
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_25
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 410
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->setAudioTuningParameters(I)V

    goto/16 :goto_0

    .line 415
    .end local v1           #_arg0:I
    :sswitch_26
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->getCurrentLatchedNetwork()Ljava/lang/String;

    move-result-object v8

    .line 417
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_27
    const-string v10, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->isIMSEnabledOnWifi()Z

    move-result v8

    .line 425
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v8, :cond_d

    move v0, v9

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 431
    .end local v8           #_result:Z
    :sswitch_28
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 442
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_29
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 445
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->setAudioMode(I)V

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
