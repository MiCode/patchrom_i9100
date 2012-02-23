.class public abstract Landroid/app/enterprise/IBluetoothPolicy$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IBluetoothPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IBluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IBluetoothPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IBluetoothPolicy"

.field static final TRANSACTION_allowBluetooth:I = 0x4

.field static final TRANSACTION_allowOutgoingCalls:I = 0x8

.field static final TRANSACTION_getAllowBluetoothDataTransfer:I = 0x2

.field static final TRANSACTION_isBluetoothEnabled:I = 0x5

.field static final TRANSACTION_isDesktopConnectivityEnabled:I = 0x11

.field static final TRANSACTION_isDiscoverableEnabled:I = 0xf

.field static final TRANSACTION_isLimitedDiscoverableEnabled:I = 0xb

.field static final TRANSACTION_isOutgoingCallsAllowed:I = 0x9

.field static final TRANSACTION_isPairingEnabled:I = 0x7

.field static final TRANSACTION_isProfileEnabled:I = 0xd

.field static final TRANSACTION_setAllowBluetoothDataTransfer:I = 0x1

.field static final TRANSACTION_setBluetooth:I = 0x3

.field static final TRANSACTION_setDesktopConnectivityState:I = 0x10

.field static final TRANSACTION_setDiscoverableState:I = 0xe

.field static final TRANSACTION_setLimitedDiscoverableState:I = 0xa

.field static final TRANSACTION_setPairingState:I = 0x6

.field static final TRANSACTION_setProfileState:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.app.enterprise.IBluetoothPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IBluetoothPolicy;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/app/enterprise/IBluetoothPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v4, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 53
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setAllowBluetoothDataTransfer(Z)Z

    move-result v2

    .line 54
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_1
    move v0, v4

    .line 52
    goto :goto_1

    .line 60
    :sswitch_2
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->getAllowBluetoothDataTransfer()Z

    move-result v2

    .line 62
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v2, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v2           #_result:Z
    :sswitch_3
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    .line 71
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setBluetooth(Z)Z

    move-result v2

    .line 72
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_4
    move v0, v4

    .line 70
    goto :goto_2

    .line 78
    :sswitch_4
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v0, v3

    .line 81
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->allowBluetooth(Z)Z

    move-result v2

    .line 82
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_5

    move v4, v3

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_6
    move v0, v4

    .line 80
    goto :goto_3

    .line 88
    :sswitch_5
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isBluetoothEnabled()Z

    move-result v2

    .line 90
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_7

    move v4, v3

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v2           #_result:Z
    :sswitch_6
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    .line 99
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setPairingState(Z)Z

    move-result v2

    .line 100
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_8

    move v4, v3

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_9
    move v0, v4

    .line 98
    goto :goto_4

    .line 106
    :sswitch_7
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isPairingEnabled()Z

    move-result v2

    .line 108
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v2, :cond_a

    move v4, v3

    :cond_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v2           #_result:Z
    :sswitch_8
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    move v0, v3

    .line 117
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->allowOutgoingCalls(Z)Z

    move-result v2

    .line 118
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v2, :cond_b

    move v4, v3

    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_c
    move v0, v4

    .line 116
    goto :goto_5

    .line 124
    :sswitch_9
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isOutgoingCallsAllowed()Z

    move-result v2

    .line 126
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v2, :cond_d

    move v4, v3

    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v2           #_result:Z
    :sswitch_a
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    move v0, v3

    .line 135
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setLimitedDiscoverableState(Z)Z

    move-result v2

    .line 136
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v2, :cond_e

    move v4, v3

    :cond_e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_f
    move v0, v4

    .line 134
    goto :goto_6

    .line 142
    :sswitch_b
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isLimitedDiscoverableEnabled()Z

    move-result v2

    .line 144
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v2, :cond_10

    move v4, v3

    :cond_10
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v2           #_result:Z
    :sswitch_c
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    move v0, v3

    .line 154
    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setProfileState(ZI)Z

    move-result v2

    .line 156
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v2, :cond_11

    move v4, v3

    :cond_11
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :cond_12
    move v0, v4

    .line 152
    goto :goto_7

    .line 162
    :sswitch_d
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isProfileEnabled(I)Z

    move-result v2

    .line 166
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v2, :cond_13

    move v4, v3

    :cond_13
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_e
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    move v0, v3

    .line 175
    .local v0, _arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setDiscoverableState(Z)Z

    move-result v2

    .line 176
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v2, :cond_14

    move v4, v3

    :cond_14
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_15
    move v0, v4

    .line 174
    goto :goto_8

    .line 182
    :sswitch_f
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isDiscoverableEnabled()Z

    move-result v2

    .line 184
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v2, :cond_16

    move v4, v3

    :cond_16
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 190
    .end local v2           #_result:Z
    :sswitch_10
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    move v0, v3

    .line 193
    .restart local v0       #_arg0:Z
    :goto_9
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->setDesktopConnectivityState(Z)Z

    move-result v2

    .line 194
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v2, :cond_17

    move v4, v3

    :cond_17
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_18
    move v0, v4

    .line 192
    goto :goto_9

    .line 200
    :sswitch_11
    const-string v5, "android.app.enterprise.IBluetoothPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->isDesktopConnectivityEnabled()Z

    move-result v2

    .line 202
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v2, :cond_19

    move v4, v3

    :cond_19
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
