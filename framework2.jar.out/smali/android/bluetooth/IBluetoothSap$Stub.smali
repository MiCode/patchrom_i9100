.class public abstract Landroid/bluetooth/IBluetoothSap$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSap.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothSap$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothSap"

.field static final TRANSACTION_disconnect:I = 0x3

.field static final TRANSACTION_disconnectImmediate:I = 0x4

.field static final TRANSACTION_getClient:I = 0x2

.field static final TRANSACTION_getConnectionState:I = 0x1

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_isConnected:I = 0x5

.field static final TRANSACTION_setPriority:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothSap"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothSap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSap;
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
    const-string v1, "android.bluetooth.IBluetoothSap"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothSap;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothSap$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothSap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v3, "android.bluetooth.IBluetoothSap"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "android.bluetooth.IBluetoothSap"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSap$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 61
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 67
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string v5, "android.bluetooth.IBluetoothSap"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSap$Stub;->getClient()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 69
    .local v2, _result:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v2, p3, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v2           #_result:Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string v3, "android.bluetooth.IBluetoothSap"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 89
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSap$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 95
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string v3, "android.bluetooth.IBluetoothSap"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 103
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSap$Stub;->disconnectImmediate(Landroid/bluetooth/BluetoothDevice;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .line 109
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string v5, "android.bluetooth.IBluetoothSap"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 112
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 117
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSap$Stub;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 118
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 124
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v5, "android.bluetooth.IBluetoothSap"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 127
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 133
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothSap$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    .line 135
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 141
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_7
    const-string v3, "android.bluetooth.IBluetoothSap"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 144
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 149
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSap$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 150
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
