.class public abstract Landroid/bluetooth/IAvrcpProxy$Stub;
.super Landroid/os/Binder;
.source "IAvrcpProxy.java"

# interfaces
.implements Landroid/bluetooth/IAvrcpProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IAvrcpProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IAvrcpProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IAvrcpProxy"

.field static final TRANSACTION_applicationSettingsChangeEvent:I = 0x5

.field static final TRANSACTION_playbackStatusChangeEvent:I = 0x4

.field static final TRANSACTION_startAvrcp:I = 0x1

.field static final TRANSACTION_stopAvrcp:I = 0x2

.field static final TRANSACTION_trackChangeEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IAvrcpProxy"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IAvrcpProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IAvrcpProxy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.bluetooth.IAvrcpProxy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IAvrcpProxy;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IAvrcpProxy;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/bluetooth/IAvrcpProxy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IAvrcpProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v4, "android.bluetooth.IAvrcpProxy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v4, "android.bluetooth.IAvrcpProxy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IAvrcpProxyCallback;

    move-result-object v0

    .line 55
    .local v0, _arg0:Landroid/bluetooth/IAvrcpProxyCallback;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IAvrcpProxy$Stub;->startAvrcp(Landroid/bluetooth/IAvrcpProxyCallback;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:Landroid/bluetooth/IAvrcpProxyCallback;
    :sswitch_2
    const-string v4, "android.bluetooth.IAvrcpProxy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/IAvrcpProxy$Stub;->stopAvrcp()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v4, "android.bluetooth.IAvrcpProxy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 71
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IAvrcpProxy$Stub;->trackChangeEvent(J)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v0           #_arg0:J
    :sswitch_4
    const-string v4, "android.bluetooth.IAvrcpProxy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 80
    .local v0, _arg0:B
    invoke-virtual {p0, v0}, Landroid/bluetooth/IAvrcpProxy$Stub;->playbackStatusChangeEvent(B)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:B
    :sswitch_5
    const-string v4, "android.bluetooth.IAvrcpProxy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 90
    .restart local v0       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 91
    .local v2, _arg1:B
    invoke-virtual {p0, v0, v2}, Landroid/bluetooth/IAvrcpProxy$Stub;->applicationSettingsChangeEvent(BB)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
