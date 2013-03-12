.class public abstract Landroid/app/IBarBeamService$Stub;
.super Landroid/os/Binder;
.source "IBarBeamService.java"

# interfaces
.implements Landroid/app/IBarBeamService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBarBeamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBarBeamService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IBarBeamService"

.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_getCurrentStatus:I = 0x9

.field static final TRANSACTION_isImplementationCompatible:I = 0x1

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_setBarcode:I = 0x8

.field static final TRANSACTION_setHopSequence:I = 0x7

.field static final TRANSACTION_startBeaming:I = 0x4

.field static final TRANSACTION_startBeaming_repeat:I = 0x5

.field static final TRANSACTION_stopBeaming:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.app.IBarBeamService"

    invoke-virtual {p0, p0, v0}, Landroid/app/IBarBeamService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamService;
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
    const-string v1, "android.app.IBarBeamService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IBarBeamService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/app/IBarBeamService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/app/IBarBeamService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IBarBeamService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "android.app.IBarBeamService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "android.app.IBarBeamService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/IBarBeamService$Stub;->isImplementationCompatible()Z

    move-result v3

    .line 49
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v3           #_result:Z
    :sswitch_2
    const-string v4, "android.app.IBarBeamService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 58
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/app/IBarBeamService$Stub;->addListener(Landroid/os/IBinder;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_3
    const-string v4, "android.app.IBarBeamService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 67
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/app/IBarBeamService$Stub;->removeListener(Landroid/os/IBinder;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_4
    const-string v4, "android.app.IBarBeamService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/IBarBeamService$Stub;->startBeaming()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    :sswitch_5
    const-string v4, "android.app.IBarBeamService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/IBarBeamService$Stub;->startBeaming_repeat(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v4, "android.app.IBarBeamService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/IBarBeamService$Stub;->stopBeaming()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    :sswitch_7
    const-string v4, "android.app.IBarBeamService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 100
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IBarBeamService$Stub;->setHopSequence([BII)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_8
    const-string v4, "android.app.IBarBeamService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 112
    .restart local v0       #_arg0:[B
    invoke-virtual {p0, v0}, Landroid/app/IBarBeamService$Stub;->setBarcode([B)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:[B
    :sswitch_9
    const-string v6, "android.app.IBarBeamService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/IBarBeamService$Stub;->getCurrentStatus()Z

    move-result v3

    .line 120
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

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
