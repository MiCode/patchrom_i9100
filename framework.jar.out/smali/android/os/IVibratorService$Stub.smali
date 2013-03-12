.class public abstract Landroid/os/IVibratorService$Stub;
.super Landroid/os/Binder;
.source "IVibratorService.java"

# interfaces
.implements Landroid/os/IVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVibratorService"

.field static final TRANSACTION_cancelVibrate:I = 0x8

.field static final TRANSACTION_getMaxMagnitude:I = 0x11

.field static final TRANSACTION_hasVibrator:I = 0x1

.field static final TRANSACTION_resetMagnitude:I = 0x10

.field static final TRANSACTION_setMagnitude:I = 0xf

.field static final TRANSACTION_vibrate:I = 0x2

.field static final TRANSACTION_vibrateCall:I = 0xd

.field static final TRANSACTION_vibrateImmVibe:I = 0x9

.field static final TRANSACTION_vibrateImmVibeMagnitudeType:I = 0xa

.field static final TRANSACTION_vibrateImmVibePattern:I = 0xb

.field static final TRANSACTION_vibrateImmVibePatternMagnitudeType:I = 0xc

.field static final TRANSACTION_vibrateMagnitude:I = 0x3

.field static final TRANSACTION_vibrateMagnitudeType:I = 0x4

.field static final TRANSACTION_vibrateNotification:I = 0xe

.field static final TRANSACTION_vibratePattern:I = 0x5

.field static final TRANSACTION_vibratePatternByMagnitude:I = 0x6

.field static final TRANSACTION_vibratePatternByMagnitudeType:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IVibratorService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;
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
    const-string v1, "android.os.IVibratorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVibratorService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IVibratorService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IVibratorService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IVibratorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/IVibratorService$Stub;->hasVibrator()Z

    move-result v5

    .line 50
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v5, :cond_0

    move v6, v7

    :goto_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 56
    .end local v5           #_result:Z
    :sswitch_2
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 60
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 61
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IVibratorService$Stub;->vibrate(JLandroid/os/IBinder;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_3
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 71
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 73
    .restart local v2       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 74
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/IVibratorService$Stub;->vibrateMagnitude(JLandroid/os/IBinder;I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v3           #_arg2:I
    :sswitch_4
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 84
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 86
    .restart local v2       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/IVibratorService$Stub;->vibrateMagnitudeType(JLandroid/os/IBinder;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_5
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 97
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 100
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IVibratorService$Stub;->vibratePattern([JILandroid/os/IBinder;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 106
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    :sswitch_6
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 110
    .restart local v0       #_arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 114
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .local v4, _arg3:I
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/os/IVibratorService$Stub;->vibratePatternByMagnitude([JILandroid/os/IBinder;I)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v4           #_arg3:I
    :sswitch_7
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 125
    .restart local v0       #_arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 129
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/os/IVibratorService$Stub;->vibratePatternByMagnitudeType([JILandroid/os/IBinder;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_8
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 139
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->cancelVibrate(Landroid/os/IBinder;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_9
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IVibratorService$Stub;->vibrateImmVibe(II)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 156
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_a
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IVibratorService$Stub;->vibrateImmVibeMagnitudeType(ILjava/lang/String;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 167
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_b
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 171
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IVibratorService$Stub;->vibrateImmVibePattern([BI)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 178
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:I
    :sswitch_c
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 182
    .restart local v0       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IVibratorService$Stub;->vibrateImmVibePatternMagnitudeType([BLjava/lang/String;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 189
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_d
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->vibrateCall(I)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 198
    .end local v0           #_arg0:I
    :sswitch_e
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->vibrateNotification(I)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    .end local v0           #_arg0:I
    :sswitch_f
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->setMagnitude(I)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 216
    .end local v0           #_arg0:I
    :sswitch_10
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/os/IVibratorService$Stub;->resetMagnitude()V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 223
    :sswitch_11
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Landroid/os/IVibratorService$Stub;->getMaxMagnitude()I

    move-result v5

    .line 225
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
