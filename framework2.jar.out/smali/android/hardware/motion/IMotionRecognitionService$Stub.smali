.class public abstract Landroid/hardware/motion/IMotionRecognitionService$Stub;
.super Landroid/os/Binder;
.source "IMotionRecognitionService.java"

# interfaces
.implements Landroid/hardware/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/IMotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/IMotionRecognitionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.motion.IMotionRecognitionService"

.field static final TRANSACTION_getMotionStatus:I = 0x3

.field static final TRANSACTION_getSSPstatus:I = 0x2

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_resetMotionEngine:I = 0x9

.field static final TRANSACTION_setLogPath:I = 0x5

.field static final TRANSACTION_setMotionAngle:I = 0x7

.field static final TRANSACTION_setMotionTiltLevel:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x4

.field static final TRANSACTION_useMotionAlways:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionService;
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
    const-string v1, "android.hardware.motion.IMotionRecognitionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/motion/IMotionRecognitionService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/hardware/motion/IMotionRecognitionService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/hardware/motion/IMotionRecognitionService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/motion/IMotionRecognitionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v0, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 51
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->registerCallback(Landroid/os/IBinder;I)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_2
    const-string v9, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->getSSPstatus()Z

    move-result v7

    .line 60
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v7, :cond_0

    move v0, v8

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v7           #_result:Z
    :sswitch_3
    const-string v9, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->getMotionStatus()Z

    move-result v7

    .line 68
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v7, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v7           #_result:Z
    :sswitch_4
    const-string v0, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 77
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->unregisterCallback(Landroid/os/IBinder;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_5
    const-string v0, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->setLogPath(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v9, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 96
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    move v2, v8

    .line 97
    .local v2, _arg1:Z
    :goto_1
    invoke-virtual {p0, v1, v2}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->useMotionAlways(Landroid/os/IBinder;Z)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2           #_arg1:Z
    :cond_2
    move v2, v0

    .line 96
    goto :goto_1

    .line 103
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_7
    const-string v0, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 107
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->setMotionAngle(Landroid/os/IBinder;I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 114
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_8
    const-string v0, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 124
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 126
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 127
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->setMotionTiltLevel(IIIIII)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 133
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    :sswitch_9
    const-string v0, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->resetMotionEngine()I

    move-result v7

    .line 135
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
