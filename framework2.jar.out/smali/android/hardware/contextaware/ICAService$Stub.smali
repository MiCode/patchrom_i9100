.class public abstract Landroid/hardware/contextaware/ICAService$Stub;
.super Landroid/os/Binder;
.source "ICAService.java"

# interfaces
.implements Landroid/hardware/contextaware/ICAService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/ICAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/ICAService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.contextaware.ICAService"

.field static final TRANSACTION_isRunCAAutoTest:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_resetCAService:I = 0x3

.field static final TRANSACTION_setCALogger:I = 0x5

.field static final TRANSACTION_setCAProperty:I = 0x4

.field static final TRANSACTION_setPacketListForCAAutoTest:I = 0x8

.field static final TRANSACTION_startCAAutoTest:I = 0x6

.field static final TRANSACTION_stopCAAutoTest:I = 0x7

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.hardware.contextaware.ICAService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/contextaware/ICAService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/contextaware/ICAService;
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
    const-string v1, "android.hardware.contextaware.ICAService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/contextaware/ICAService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/hardware/contextaware/ICAService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/hardware/contextaware/ICAService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/contextaware/ICAService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "android.hardware.contextaware.ICAService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "android.hardware.contextaware.ICAService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 51
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/ICAService$Stub;->registerCallback(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_2
    const-string v7, "android.hardware.contextaware.ICAService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/ICAService$Stub;->unregisterCallback(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    .line 64
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_3
    const-string v5, "android.hardware.contextaware.ICAService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/ICAService$Stub;->resetCAService(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v5, "android.hardware.contextaware.ICAService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    sget-object v5, Landroid/hardware/contextaware/CAPropertyBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/CAPropertyBundle;

    .line 91
    .local v2, _arg2:Landroid/hardware/contextaware/CAPropertyBundle;
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/contextaware/ICAService$Stub;->setCAProperty(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v2           #_arg2:Landroid/hardware/contextaware/CAPropertyBundle;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/hardware/contextaware/CAPropertyBundle;
    goto :goto_1

    .line 97
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/hardware/contextaware/CAPropertyBundle;
    :sswitch_5
    const-string v7, "android.hardware.contextaware.ICAService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v6

    .line 101
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v1, v6

    .line 103
    .local v1, _arg1:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v3, v6

    .line 106
    .local v3, _arg3:Z
    :goto_4
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/contextaware/ICAService$Stub;->setCALogger(ZZIZ)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Z
    :cond_2
    move v0, v5

    .line 99
    goto :goto_2

    .restart local v0       #_arg0:Z
    :cond_3
    move v1, v5

    .line 101
    goto :goto_3

    .restart local v1       #_arg1:Z
    .restart local v2       #_arg2:I
    :cond_4
    move v3, v5

    .line 105
    goto :goto_4

    .line 112
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:I
    :sswitch_6
    const-string v5, "android.hardware.contextaware.ICAService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/ICAService$Stub;->startCAAutoTest(I)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v5, "android.hardware.contextaware.ICAService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/hardware/contextaware/ICAService$Stub;->stopCAAutoTest()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 128
    :sswitch_8
    const-string v5, "android.hardware.contextaware.ICAService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 132
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/ICAService$Stub;->setPacketListForCAAutoTest([BI)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    :sswitch_9
    const-string v7, "android.hardware.contextaware.ICAService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/hardware/contextaware/ICAService$Stub;->isRunCAAutoTest()Z

    move-result v4

    .line 141
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
