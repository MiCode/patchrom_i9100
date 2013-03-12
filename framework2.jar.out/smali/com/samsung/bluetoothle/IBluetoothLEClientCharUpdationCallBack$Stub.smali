.class public abstract Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLEClientCharUpdationCallBack.java"

# interfaces
.implements Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

.field static final TRANSACTION_onDiscoverCharacteristics:I = 0x4

.field static final TRANSACTION_onDiscoverCharacteristicsFailed:I = 0x5

.field static final TRANSACTION_onReadCharValue:I = 0x1

.field static final TRANSACTION_onWatcherValueChanged:I = 0x6

.field static final TRANSACTION_onWriteCharValue:I = 0x2

.field static final TRANSACTION_onWriteClientConfigDesc:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;
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
    const-string v1, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v3, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;->onReadCharValue(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;->onWriteCharValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;->onWriteClientConfigDesc(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;->onDiscoverCharacteristics(Ljava/lang/String;[Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[Ljava/lang/String;
    :sswitch_5
    const-string v3, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;->onDiscoverCharacteristicsFailed(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 103
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.samsung.bluetoothle.IBluetoothLEClientCharUpdationCallBack"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;->onWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
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
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
