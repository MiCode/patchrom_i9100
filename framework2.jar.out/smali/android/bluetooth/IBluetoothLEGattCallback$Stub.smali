.class public abstract Landroid/bluetooth/IBluetoothLEGattCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLEGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLEGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLEGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLEGattCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothLEGattCallback"

.field static final TRANSACTION_onDiscoverCharResult:I = 0x5

.field static final TRANSACTION_onGattCharPropertyChanged:I = 0x4

.field static final TRANSACTION_onGattConnect:I = 0x1

.field static final TRANSACTION_onGattDisconnect:I = 0x2

.field static final TRANSACTION_onGattLinkLoss:I = 0x7

.field static final TRANSACTION_onGattReadCharValue:I = 0x3

.field static final TRANSACTION_onGetRssiValue:I = 0x8

.field static final TRANSACTION_onWatcherValueChanged:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.bluetooth.IBluetoothLEGattCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLEGattCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.bluetooth.IBluetoothLEGattCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLEGattCallback;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/bluetooth/IBluetoothLEGattCallback;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothLEGattCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 48
    :sswitch_0
    const-string v4, "android.bluetooth.IBluetoothLEGattCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v4, "android.bluetooth.IBluetoothLEGattCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->onGattConnect(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v4, "android.bluetooth.IBluetoothLEGattCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->onGattDisconnect(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v4, "android.bluetooth.IBluetoothLEGattCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->onGattReadCharValue(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v4, "android.bluetooth.IBluetoothLEGattCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->onGattCharPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_5
    const-string v4, "android.bluetooth.IBluetoothLEGattCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->onDiscoverCharResult(Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[Ljava/lang/String;
    :sswitch_6
    const-string v4, "android.bluetooth.IBluetoothLEGattCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->onWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 115
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_7
    const-string v4, "android.bluetooth.IBluetoothLEGattCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->onGattLinkLoss(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 124
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v4, "android.bluetooth.IBluetoothLEGattCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->onGetRssiValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
