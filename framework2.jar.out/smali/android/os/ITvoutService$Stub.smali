.class public abstract Landroid/os/ITvoutService$Stub;
.super Landroid/os/Binder;
.source "ITvoutService.java"

# interfaces
.implements Landroid/os/ITvoutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ITvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ITvoutService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ITvoutService"

.field static final TRANSACTION_TvoutGetAudioChannel:I = 0x13

.field static final TRANSACTION_TvoutGetCableStatus:I = 0x3

.field static final TRANSACTION_TvoutGetResolution:I = 0x6

.field static final TRANSACTION_TvoutGetSmartDockSurfaceStatus:I = 0x1b

.field static final TRANSACTION_TvoutGetStatus:I = 0x1

.field static final TRANSACTION_TvoutGetSubtitleStatus:I = 0x8

.field static final TRANSACTION_TvoutGetSuspendStatus:I = 0xb

.field static final TRANSACTION_TvoutGetVideoMode:I = 0x18

.field static final TRANSACTION_TvoutGetVideoRotation:I = 0xf

.field static final TRANSACTION_TvoutPostSubtitle:I = 0xa

.field static final TRANSACTION_TvoutPostSuspend:I = 0xd

.field static final TRANSACTION_TvoutSetCableStatus:I = 0x4

.field static final TRANSACTION_TvoutSetDefaultString:I = 0xe

.field static final TRANSACTION_TvoutSetForceMirrorMode:I = 0x14

.field static final TRANSACTION_TvoutSetFrontCameraRotation:I = 0x11

.field static final TRANSACTION_TvoutSetGpuLock:I = 0x1a

.field static final TRANSACTION_TvoutSetOrientation:I = 0x19

.field static final TRANSACTION_TvoutSetOutputMode:I = 0x7

.field static final TRANSACTION_TvoutSetRearCameraRotation:I = 0x12

.field static final TRANSACTION_TvoutSetResolution:I = 0x5

.field static final TRANSACTION_TvoutSetStatus:I = 0x2

.field static final TRANSACTION_TvoutSetSubtitleStatus:I = 0x9

.field static final TRANSACTION_TvoutSetSuspendStatus:I = 0xc

.field static final TRANSACTION_TvoutSetVideoMode:I = 0x17

.field static final TRANSACTION_TvoutSetVideoRotation:I = 0x10

.field static final TRANSACTION_TvoutSetWFDStatus:I = 0x16

.field static final TRANSACTION_TvoutVideoPlayingStatus:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ITvoutService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ITvoutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ITvoutService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.ITvoutService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ITvoutService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/ITvoutService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/ITvoutService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ITvoutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetStatus()Z

    move-result v2

    .line 50
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v2           #_result:Z
    :sswitch_2
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 59
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetStatus(Z)Z

    move-result v2

    .line 60
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_2
    move v0, v3

    .line 58
    goto :goto_1

    .line 66
    :sswitch_3
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetCableStatus()Z

    move-result v2

    .line 68
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v2           #_result:Z
    :sswitch_4
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v0, v4

    .line 77
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetCableStatus(Z)Z

    move-result v2

    .line 78
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_5
    move v0, v3

    .line 76
    goto :goto_2

    .line 84
    :sswitch_5
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetResolution(I)Z

    move-result v2

    .line 88
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_6
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetResolution()I

    move-result v2

    .line 96
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 102
    .end local v2           #_result:I
    :sswitch_7
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetOutputMode(I)Z

    move-result v2

    .line 106
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v2, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_8
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetSubtitleStatus()Z

    move-result v2

    .line 114
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v2, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v2           #_result:Z
    :sswitch_9
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v0, v4

    .line 123
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetSubtitleStatus(Z)Z

    move-result v2

    .line 124
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v2, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_a
    move v0, v3

    .line 122
    goto :goto_3

    .line 130
    :sswitch_a
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITvoutService$Stub;->TvoutPostSubtitle(Ljava/lang/String;I)Z

    move-result v2

    .line 136
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v2, :cond_b

    move v3, v4

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_b
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetSuspendStatus()Z

    move-result v2

    .line 144
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v2           #_result:Z
    :sswitch_c
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    move v0, v4

    .line 153
    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetSuspendStatus(Z)Z

    move-result v2

    .line 154
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v2, :cond_d

    move v3, v4

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_e
    move v0, v3

    .line 152
    goto :goto_4

    .line 160
    :sswitch_d
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutPostSuspend(Ljava/lang/String;)Z

    move-result v2

    .line 164
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v2, :cond_f

    move v3, v4

    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_e
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutSetDefaultString()Z

    move-result v2

    .line 172
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v2, :cond_10

    move v3, v4

    :cond_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 178
    .end local v2           #_result:Z
    :sswitch_f
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetVideoRotation()I

    move-result v2

    .line 180
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 186
    .end local v2           #_result:I
    :sswitch_10
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetVideoRotation(I)Z

    move-result v2

    .line 190
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v2, :cond_11

    move v3, v4

    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_11
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetFrontCameraRotation(I)Z

    move-result v2

    .line 200
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v2, :cond_12

    move v3, v4

    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_12
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetRearCameraRotation(I)Z

    move-result v2

    .line 210
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v2, :cond_13

    move v3, v4

    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 216
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_13
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetAudioChannel()I

    move-result v2

    .line 218
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v2           #_result:I
    :sswitch_14
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    move v0, v4

    .line 227
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetForceMirrorMode(Z)Z

    move-result v2

    .line 228
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v2, :cond_14

    move v3, v4

    :cond_14
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_15
    move v0, v3

    .line 226
    goto :goto_5

    .line 234
    :sswitch_15
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    move v0, v4

    .line 237
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutVideoPlayingStatus(Z)Z

    move-result v2

    .line 238
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v2, :cond_16

    move v3, v4

    :cond_16
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_17
    move v0, v3

    .line 236
    goto :goto_6

    .line 244
    :sswitch_16
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    move v0, v4

    .line 247
    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetWFDStatus(Z)Z

    move-result v2

    .line 248
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v2, :cond_18

    move v3, v4

    :cond_18
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_19
    move v0, v3

    .line 246
    goto :goto_7

    .line 254
    :sswitch_17
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetVideoMode(I)Z

    move-result v2

    .line 258
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v2, :cond_1a

    move v3, v4

    :cond_1a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_18
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetVideoMode()I

    move-result v2

    .line 266
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 272
    .end local v2           #_result:I
    :sswitch_19
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetOrientation(I)Z

    move-result v2

    .line 276
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v2, :cond_1b

    move v3, v4

    :cond_1b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_1a
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 287
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITvoutService$Stub;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    move-result v2

    .line 288
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v2, :cond_1c

    move v3, v4

    :cond_1c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 294
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_1b
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetSmartDockSurfaceStatus()I

    move-result v2

    .line 296
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
