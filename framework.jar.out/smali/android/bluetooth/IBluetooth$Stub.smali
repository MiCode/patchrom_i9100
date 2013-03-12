.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_addRfcommServiceRecord:I = 0x30

.field static final TRANSACTION_allowIncomingProfileConnect:I = 0x32

.field static final TRANSACTION_cancelBondProcess:I = 0x18

.field static final TRANSACTION_cancelDiscovery:I = 0x10

.field static final TRANSACTION_cancelPairingUserInput:I = 0x28

.field static final TRANSACTION_changeApplicationBluetoothState:I = 0x15

.field static final TRANSACTION_connectChannelToSink:I = 0x4b

.field static final TRANSACTION_connectChannelToSource:I = 0x4a

.field static final TRANSACTION_connectHeadset:I = 0x33

.field static final TRANSACTION_connectInputDevice:I = 0x36

.field static final TRANSACTION_connectPanDevice:I = 0x46

.field static final TRANSACTION_createBond:I = 0x16

.field static final TRANSACTION_createBondOutOfBand:I = 0x17

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_disconnectChannel:I = 0x4c

.field static final TRANSACTION_disconnectHeadset:I = 0x34

.field static final TRANSACTION_disconnectInputDevice:I = 0x37

.field static final TRANSACTION_disconnectPanDevice:I = 0x47

.field static final TRANSACTION_disconnectSimAccessClient:I = 0x3d

.field static final TRANSACTION_disconnectSimAccessClientImmediate:I = 0x3f

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_enableNoAutoConnect:I = 0x4

.field static final TRANSACTION_fetchRemoteUuids:I = 0x22

.field static final TRANSACTION_gattDeviceConnect:I = 0x59

.field static final TRANSACTION_gattDeviceDisconnect:I = 0x5a

.field static final TRANSACTION_gattDeviceDiscoverPrimary:I = 0x60

.field static final TRANSACTION_gattDiscoveryCharacteristics:I = 0x5d

.field static final TRANSACTION_gattGetCharProperties:I = 0x5e

.field static final TRANSACTION_gattRegisterCharWatcher:I = 0x61

.field static final TRANSACTION_gattSetCharProperty:I = 0x5f

.field static final TRANSACTION_gattUnregisterCharWatcher:I = 0x62

.field static final TRANSACTION_getAdapterConnectionState:I = 0x13

.field static final TRANSACTION_getAddress:I = 0x6

.field static final TRANSACTION_getAddressFromObjectPathForLE:I = 0x63

.field static final TRANSACTION_getBluetoothState:I = 0x2

.field static final TRANSACTION_getBondState:I = 0x1b

.field static final TRANSACTION_getConnectedHealthDevices:I = 0x4e

.field static final TRANSACTION_getConnectedInputDevices:I = 0x38

.field static final TRANSACTION_getConnectedPanDevices:I = 0x44

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xd

.field static final TRANSACTION_getGattConnectionState:I = 0x64

.field static final TRANSACTION_getHealthDeviceConnectionState:I = 0x50

.field static final TRANSACTION_getHealthDevicesMatchingConnectionStates:I = 0x4f

.field static final TRANSACTION_getInputDeviceConnectionState:I = 0x3a

.field static final TRANSACTION_getInputDevicePriority:I = 0x3c

.field static final TRANSACTION_getInputDevicesMatchingConnectionStates:I = 0x39

.field static final TRANSACTION_getMainChannelFd:I = 0x4d

.field static final TRANSACTION_getMapTrustState:I = 0x2d

.field static final TRANSACTION_getName:I = 0x7

.field static final TRANSACTION_getPanDeviceConnectionState:I = 0x43

.field static final TRANSACTION_getPanDevicesMatchingConnectionStates:I = 0x45

.field static final TRANSACTION_getProfileConnectionState:I = 0x14

.field static final TRANSACTION_getRemoteAlias:I = 0x1e

.field static final TRANSACTION_getRemoteClass:I = 0x20

.field static final TRANSACTION_getRemoteDeviceType:I = 0x55

.field static final TRANSACTION_getRemoteHDPDataTypeList:I = 0x67

.field static final TRANSACTION_getRemoteName:I = 0x1d

.field static final TRANSACTION_getRemotePrimaryService:I = 0x54

.field static final TRANSACTION_getRemoteServiceChannel:I = 0x23

.field static final TRANSACTION_getRemoteServiceCharPaths:I = 0x58

.field static final TRANSACTION_getRemoteServicePaths:I = 0x56

.field static final TRANSACTION_getRemoteServiceUUID:I = 0x57

.field static final TRANSACTION_getRemoteUuids:I = 0x21

.field static final TRANSACTION_getRssiValue:I = 0x66

.field static final TRANSACTION_getSapTrustState:I = 0x2f

.field static final TRANSACTION_getScanMode:I = 0xa

.field static final TRANSACTION_getTrustState:I = 0x2a

.field static final TRANSACTION_getUuids:I = 0x9

.field static final TRANSACTION_isBluetoothDock:I = 0x2b

.field static final TRANSACTION_isDiscovering:I = 0x11

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isTetheringOn:I = 0x41

.field static final TRANSACTION_leTestEnd:I = 0xb

.field static final TRANSACTION_listBonds:I = 0x1a

.field static final TRANSACTION_notifyIncomingConnection:I = 0x35

.field static final TRANSACTION_notifyIncomingSapConnection:I = 0x40

.field static final TRANSACTION_notifySimCardRemovedAction:I = 0x3e

.field static final TRANSACTION_readOutOfBandData:I = 0x12

.field static final TRANSACTION_registerAppConfiguration:I = 0x48

.field static final TRANSACTION_registerGattCallback:I = 0x5b

.field static final TRANSACTION_removeBond:I = 0x19

.field static final TRANSACTION_removeServiceRecord:I = 0x31

.field static final TRANSACTION_sendConnectionStateChange:I = 0x51

.field static final TRANSACTION_setBluetoothTethering:I = 0x42

.field static final TRANSACTION_setContentProtection:I = 0x52

.field static final TRANSACTION_setDeviceOutOfBandData:I = 0x1c

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xe

.field static final TRANSACTION_setInputDevicePriority:I = 0x3b

.field static final TRANSACTION_setMapTrust:I = 0x2c

.field static final TRANSACTION_setName:I = 0x8

.field static final TRANSACTION_setNbParameters:I = 0x69

.field static final TRANSACTION_setPairingConfirmation:I = 0x26

.field static final TRANSACTION_setPasskey:I = 0x25

.field static final TRANSACTION_setPin:I = 0x24

.field static final TRANSACTION_setRemoteAlias:I = 0x1f

.field static final TRANSACTION_setRemoteOutOfBandData:I = 0x27

.field static final TRANSACTION_setSapTrust:I = 0x2e

.field static final TRANSACTION_setScanLE:I = 0x65

.field static final TRANSACTION_setScanMode:I = 0xc

.field static final TRANSACTION_setScoPathChange:I = 0x53

.field static final TRANSACTION_setTrust:I = 0x29

.field static final TRANSACTION_setWbsParameters:I = 0x68

.field static final TRANSACTION_startDiscovery:I = 0xf

.field static final TRANSACTION_unregisterAppConfiguration:I = 0x49

.field static final TRANSACTION_unregisterGattCallback:I = 0x5c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
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
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1256
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 47
    :sswitch_0
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v6

    .line 54
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v6, :cond_0

    move v0, v8

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v6           #_result:Z
    :sswitch_2
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothState()I

    move-result v6

    .line 62
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v6           #_result:I
    :sswitch_3
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v6

    .line 70
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v6, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v6           #_result:Z
    :sswitch_4
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enableNoAutoConnect()Z

    move-result v6

    .line 78
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v6, :cond_2

    move v0, v8

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v6           #_result:Z
    :sswitch_5
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    move v1, v8

    .line 87
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->disable(Z)Z

    move-result v6

    .line 88
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v6, :cond_3

    move v0, v8

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_4
    move v1, v0

    .line 86
    goto :goto_1

    .line 94
    :sswitch_6
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v6

    .line 104
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v6

    .line 114
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v6, :cond_5

    move v0, v8

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_9
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 122
    .local v6, _result:[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 128
    .end local v6           #_result:[Landroid/os/ParcelUuid;
    :sswitch_a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v6

    .line 130
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v6           #_result:I
    :sswitch_b
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->leTestEnd()Z

    move-result v6

    .line 138
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v6, :cond_6

    move v0, v8

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v6           #_result:Z
    :sswitch_c
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v6

    .line 150
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v6, :cond_7

    move v0, v8

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 156
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v6

    .line 158
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v6           #_result:I
    :sswitch_e
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v6

    .line 168
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v6, :cond_8

    move v0, v8

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_f
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v6

    .line 176
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v6, :cond_9

    move v0, v8

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v6           #_result:Z
    :sswitch_10
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v6

    .line 184
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v6, :cond_a

    move v0, v8

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 190
    .end local v6           #_result:Z
    :sswitch_11
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v6

    .line 192
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v6, :cond_b

    move v0, v8

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 198
    .end local v6           #_result:Z
    :sswitch_12
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->readOutOfBandData()[B

    move-result-object v6

    .line 200
    .local v6, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 206
    .end local v6           #_result:[B
    :sswitch_13
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v6

    .line 208
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v6           #_result:I
    :sswitch_14
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v6

    .line 218
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_15
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    move v1, v8

    .line 228
    .local v1, _arg0:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v2

    .line 230
    .local v2, _arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 231
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z

    move-result v6

    .line 232
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v6, :cond_c

    move v0, v8

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v6           #_result:Z
    :cond_d
    move v1, v0

    .line 226
    goto :goto_2

    .line 238
    :sswitch_16
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Ljava/lang/String;)Z

    move-result v6

    .line 242
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v6, :cond_e

    move v0, v8

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 248
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_17
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 254
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 255
    .local v3, _arg2:[B
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Ljava/lang/String;[B[B)Z

    move-result v6

    .line 256
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v6, :cond_f

    move v0, v8

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 262
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[B
    .end local v6           #_result:Z
    :sswitch_18
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Ljava/lang/String;)Z

    move-result v6

    .line 266
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v6, :cond_10

    move v0, v8

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 272
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_19
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Ljava/lang/String;)Z

    move-result v6

    .line 276
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v6, :cond_11

    move v0, v8

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_1a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->listBonds()[Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_1b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Ljava/lang/String;)I

    move-result v6

    .line 294
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 300
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_1c
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 306
    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 307
    .restart local v3       #_arg2:[B
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    move-result v6

    .line 308
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v6, :cond_12

    move v0, v8

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 314
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[B
    .end local v6           #_result:Z
    :sswitch_1d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_1e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 328
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_1f
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 340
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v6, :cond_13

    move v0, v8

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 346
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Ljava/lang/String;)I

    move-result v6

    .line 350
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 356
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_21
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 360
    .local v6, _result:[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 366
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:[Landroid/os/ParcelUuid;
    :sswitch_22
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_15

    .line 371
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 377
    .local v2, _arg1:Landroid/os/ParcelUuid;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v3

    .line 378
    .local v3, _arg2:Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z

    move-result v6

    .line 379
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v6, :cond_14

    move v0, v8

    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 374
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    .end local v3           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v6           #_result:Z
    :cond_15
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_3

    .line 385
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_23
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 390
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 395
    .restart local v2       #_arg1:Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v6

    .line 396
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 393
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    .end local v6           #_result:I
    :cond_16
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_4

    .line 402
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_24
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 406
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 407
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Ljava/lang/String;[B)Z

    move-result v6

    .line 408
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v6, :cond_17

    move v0, v8

    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 414
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v6           #_result:Z
    :sswitch_25
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 419
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Ljava/lang/String;I)Z

    move-result v6

    .line 420
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v6, :cond_18

    move v0, v8

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 426
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_26
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 430
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1a

    move v2, v8

    .line 431
    .local v2, _arg1:Z
    :goto_5
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Ljava/lang/String;Z)Z

    move-result v6

    .line 432
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    if-eqz v6, :cond_19

    move v0, v8

    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_1a
    move v2, v0

    .line 430
    goto :goto_5

    .line 438
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_27
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteOutOfBandData(Ljava/lang/String;)Z

    move-result v6

    .line 442
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v6, :cond_1b

    move v0, v8

    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 448
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_28
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 451
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-result v6

    .line 452
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v6, :cond_1c

    move v0, v8

    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 458
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_29
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 462
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1e

    move v2, v8

    .line 463
    .restart local v2       #_arg1:Z
    :goto_6
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setTrust(Ljava/lang/String;Z)Z

    move-result v6

    .line 464
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v6, :cond_1d

    move v0, v8

    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_1e
    move v2, v0

    .line 462
    goto :goto_6

    .line 470
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2a
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getTrustState(Ljava/lang/String;)Z

    move-result v6

    .line 474
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v6, :cond_1f

    move v0, v8

    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 480
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_2b
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v6

    .line 484
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v6, :cond_20

    move v0, v8

    :cond_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 490
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_2c
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 494
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_22

    move v2, v8

    .line 495
    .restart local v2       #_arg1:Z
    :goto_7
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setMapTrust(Ljava/lang/String;Z)Z

    move-result v6

    .line 496
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v6, :cond_21

    move v0, v8

    :cond_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_22
    move v2, v0

    .line 494
    goto :goto_7

    .line 502
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2d
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getMapTrustState(Ljava/lang/String;)Z

    move-result v6

    .line 506
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v6, :cond_23

    move v0, v8

    :cond_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 512
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_2e
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_25

    move v2, v8

    .line 517
    .restart local v2       #_arg1:Z
    :goto_8
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setSapTrust(Ljava/lang/String;Z)Z

    move-result v6

    .line 518
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v6, :cond_24

    move v0, v8

    :cond_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_25
    move v2, v0

    .line 516
    goto :goto_8

    .line 524
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2f
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 527
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getSapTrustState(Ljava/lang/String;)Z

    move-result v6

    .line 528
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    if-eqz v6, :cond_26

    move v0, v8

    :cond_26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 534
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_30
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 538
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    .line 539
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 545
    .local v2, _arg1:Landroid/os/ParcelUuid;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 547
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 548
    .local v4, _arg3:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I

    move-result v6

    .line 549
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 542
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Landroid/os/IBinder;
    .end local v6           #_result:I
    :cond_27
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_9

    .line 555
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_31
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 558
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->removeServiceRecord(I)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 564
    .end local v1           #_arg0:I
    :sswitch_32
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_29

    .line 567
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 573
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2a

    move v2, v8

    .line 574
    .local v2, _arg1:Z
    :goto_b
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v6

    .line 575
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    if-eqz v6, :cond_28

    move v0, v8

    :cond_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 570
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_29
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    :cond_2a
    move v2, v0

    .line 573
    goto :goto_b

    .line 581
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_33
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->connectHeadset(Ljava/lang/String;)Z

    move-result v6

    .line 585
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    if-eqz v6, :cond_2b

    move v0, v8

    :cond_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 591
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_34
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 594
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->disconnectHeadset(Ljava/lang/String;)Z

    move-result v6

    .line 595
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    if-eqz v6, :cond_2c

    move v0, v8

    :cond_2c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 601
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_35
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 605
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2e

    move v2, v8

    .line 606
    .restart local v2       #_arg1:Z
    :goto_c
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->notifyIncomingConnection(Ljava/lang/String;Z)Z

    move-result v6

    .line 607
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    if-eqz v6, :cond_2d

    move v0, v8

    :cond_2d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_2e
    move v2, v0

    .line 605
    goto :goto_c

    .line 613
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_36
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_30

    .line 616
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 621
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_d
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 622
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    if-eqz v6, :cond_2f

    move v0, v8

    :cond_2f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 619
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:Z
    :cond_30
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 628
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_37
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_32

    .line 631
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 636
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_e
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 637
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    if-eqz v6, :cond_31

    move v0, v8

    :cond_31
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 634
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:Z
    :cond_32
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .line 643
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_38
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v7

    .line 645
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 651
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_39
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 654
    .local v1, _arg0:[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v7

    .line 655
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 661
    .end local v1           #_arg0:[I
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    .line 664
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 669
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_f
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 670
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 667
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:I
    :cond_33
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .line 676
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_3b
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_35

    .line 679
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 685
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 686
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 687
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    if-eqz v6, :cond_34

    move v0, v8

    :cond_34
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 682
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :cond_35
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .line 693
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_3c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    .line 696
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 701
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_11
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 702
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 699
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:I
    :cond_36
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    .line 708
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_3d
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectSimAccessClient()Z

    move-result v6

    .line 710
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v6, :cond_37

    move v0, v8

    :cond_37
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 716
    .end local v6           #_result:Z
    :sswitch_3e
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->notifySimCardRemovedAction()Z

    move-result v6

    .line 718
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    if-eqz v6, :cond_38

    move v0, v8

    :cond_38
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 724
    .end local v6           #_result:Z
    :sswitch_3f
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectSimAccessClientImmediate()Z

    move-result v6

    .line 726
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    if-eqz v6, :cond_39

    move v0, v8

    :cond_39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 732
    .end local v6           #_result:Z
    :sswitch_40
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->notifyIncomingSapConnection(Ljava/lang/String;)Z

    move-result v6

    .line 736
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    if-eqz v6, :cond_3a

    move v0, v8

    :cond_3a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 742
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_41
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isTetheringOn()Z

    move-result v6

    .line 744
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v6, :cond_3b

    move v0, v8

    :cond_3b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 750
    .end local v6           #_result:Z
    :sswitch_42
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3c

    move v1, v8

    .line 753
    .local v1, _arg0:Z
    :goto_12
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setBluetoothTethering(Z)V

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_3c
    move v1, v0

    .line 752
    goto :goto_12

    .line 759
    :sswitch_43
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 762
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 767
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_13
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 768
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 765
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:I
    :cond_3d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .line 774
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_44
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v7

    .line 776
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 782
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_45
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 785
    .local v1, _arg0:[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getPanDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v7

    .line 786
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 792
    .end local v1           #_arg0:[I
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_46
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3f

    .line 795
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 800
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_14
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 801
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    if-eqz v6, :cond_3e

    move v0, v8

    :cond_3e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 798
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:Z
    :cond_3f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    .line 807
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_47
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_41

    .line 810
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 815
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_15
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 816
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    if-eqz v6, :cond_40

    move v0, v8

    :cond_40
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 813
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:Z
    :cond_41
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    .line 822
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_48
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_43

    .line 825
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 831
    .local v1, _arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v2

    .line 832
    .local v2, _arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v6

    .line 833
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    if-eqz v6, :cond_42

    move v0, v8

    :cond_42
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 828
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v2           #_arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    .end local v6           #_result:Z
    :cond_43
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_16

    .line 839
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_49
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_45

    .line 842
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 847
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_17
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v6

    .line 848
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    if-eqz v6, :cond_44

    move v0, v8

    :cond_44
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 845
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v6           #_result:Z
    :cond_45
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_17

    .line 854
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_4a
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_47

    .line 857
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 863
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_48

    .line 864
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 869
    .local v2, _arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_19
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v6

    .line 870
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    if-eqz v6, :cond_46

    move v0, v8

    :cond_46
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 860
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v6           #_result:Z
    :cond_47
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_18

    .line 867
    :cond_48
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_19

    .line 876
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_4b
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4a

    .line 879
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 885
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4b

    .line 886
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 892
    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 893
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v6

    .line 894
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    if-eqz v6, :cond_49

    move v0, v8

    :cond_49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 882
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v3           #_arg2:I
    .end local v6           #_result:Z
    :cond_4a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1a

    .line 889
    :cond_4b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_1b

    .line 900
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_4c
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4d

    .line 903
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 909
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4e

    .line 910
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 916
    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 917
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v6

    .line 918
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    if-eqz v6, :cond_4c

    move v0, v8

    :cond_4c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 906
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v3           #_arg2:I
    .end local v6           #_result:Z
    :cond_4d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1c

    .line 913
    :cond_4e
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_1d

    .line 924
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_4d
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4f

    .line 927
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 933
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_50

    .line 934
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 939
    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_1f
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 940
    .local v6, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    if-eqz v6, :cond_51

    .line 942
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    invoke-virtual {v6, p3, v8}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 930
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v6           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_4f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1e

    .line 937
    :cond_50
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_1f

    .line 946
    .restart local v6       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_51
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 952
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v6           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_4e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v7

    .line 954
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 960
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_4f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 963
    .local v1, _arg0:[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v7

    .line 964
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 970
    .end local v1           #_arg0:[I
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_50
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    .line 973
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 978
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_20
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 979
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 976
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:I
    :cond_52
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_20

    .line 985
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_51
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53

    .line 988
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 994
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 996
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 998
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 999
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 991
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :cond_53
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_21

    .line 1005
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_52
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_55

    move v1, v8

    .line 1008
    .local v1, _arg0:Z
    :goto_22
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setContentProtection(Z)Z

    move-result v6

    .line 1009
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    if-eqz v6, :cond_54

    move v0, v8

    :cond_54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_55
    move v1, v0

    .line 1007
    goto :goto_22

    .line 1015
    :sswitch_53
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1018
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setScoPathChange(I)V

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1024
    .end local v1           #_arg0:I
    :sswitch_54
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1029
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemotePrimaryService(Ljava/lang/String;I)Z

    move-result v6

    .line 1030
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    if-eqz v6, :cond_56

    move v0, v8

    :cond_56
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1036
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_55
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1039
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1040
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1046
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_56
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1049
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServicePaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1050
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1056
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_57
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1059
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1060
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1066
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_58
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceCharPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1070
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1076
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_59
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1079
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->gattDeviceConnect(Ljava/lang/String;)Z

    move-result v6

    .line 1080
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    if-eqz v6, :cond_57

    move v0, v8

    :cond_57
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1086
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_5a
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1089
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->gattDeviceDisconnect(Ljava/lang/String;)Z

    move-result v6

    .line 1090
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    if-eqz v6, :cond_58

    move v0, v8

    :cond_58
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1096
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_5b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLEGattCallback;

    move-result-object v1

    .line 1099
    .local v1, _arg0:Landroid/bluetooth/IBluetoothLEGattCallback;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->registerGattCallback(Landroid/bluetooth/IBluetoothLEGattCallback;)V

    .line 1100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1105
    .end local v1           #_arg0:Landroid/bluetooth/IBluetoothLEGattCallback;
    :sswitch_5c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLEGattCallback;

    move-result-object v1

    .line 1108
    .restart local v1       #_arg0:Landroid/bluetooth/IBluetoothLEGattCallback;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterGattCallback(Landroid/bluetooth/IBluetoothLEGattCallback;)V

    .line 1109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1114
    .end local v1           #_arg0:Landroid/bluetooth/IBluetoothLEGattCallback;
    :sswitch_5d
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1120
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1121
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->gattDiscoveryCharacteristics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1122
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    if-eqz v6, :cond_59

    move v0, v8

    :cond_59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1128
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_5e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1132
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1133
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->gattGetCharProperties(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1134
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1140
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_5f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1144
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1146
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1148
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1150
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, _arg4:[B
    move-object v0, p0

    .line 1151
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->gattSetCharProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1157
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:[B
    :sswitch_60
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1160
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->gattDeviceDiscoverPrimary(Ljava/lang/String;)Z

    move-result v6

    .line 1161
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    if-eqz v6, :cond_5a

    move v0, v8

    :cond_5a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1167
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_61
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1170
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->gattRegisterCharWatcher(Ljava/lang/String;)Z

    move-result v6

    .line 1171
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    if-eqz v6, :cond_5b

    move v0, v8

    :cond_5b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1177
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_62
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1180
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->gattUnregisterCharWatcher(Ljava/lang/String;)Z

    move-result v6

    .line 1181
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    if-eqz v6, :cond_5c

    move v0, v8

    :cond_5c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1187
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_63
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1190
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getAddressFromObjectPathForLE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1191
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1197
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_64
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1200
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getGattConnectionState(Ljava/lang/String;)Z

    move-result v6

    .line 1201
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    if-eqz v6, :cond_5d

    move v0, v8

    :cond_5d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1207
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_65
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5f

    move v1, v8

    .line 1210
    .local v1, _arg0:Z
    :goto_23
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setScanLE(Z)Z

    move-result v6

    .line 1211
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    if-eqz v6, :cond_5e

    move v0, v8

    :cond_5e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_5f
    move v1, v0

    .line 1209
    goto :goto_23

    .line 1217
    :sswitch_66
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1220
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRssiValue(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1226
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_67
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60

    .line 1229
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1234
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_24
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteHDPDataTypeList(Landroid/bluetooth/BluetoothDevice;)[I

    move-result-object v6

    .line 1235
    .local v6, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 1232
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:[I
    :cond_60
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_24

    .line 1241
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_68
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->setWbsParameters()Z

    move-result v6

    .line 1243
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    if-eqz v6, :cond_61

    move v0, v8

    :cond_61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1249
    .end local v6           #_result:Z
    :sswitch_69
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->setNbParameters()Z

    move-result v6

    .line 1251
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    if-eqz v6, :cond_62

    move v0, v8

    :cond_62
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
