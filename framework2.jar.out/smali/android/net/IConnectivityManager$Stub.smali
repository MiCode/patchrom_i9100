.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_ResetCwDefaultService:I = 0x33

.field static final TRANSACTION_SetCwDefaultService:I = 0x32

.field static final TRANSACTION_establishVpn:I = 0x2d

.field static final TRANSACTION_getActiveLinkProperties:I = 0x8

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x4

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0xb

.field static final TRANSACTION_getAllNetworkInfo:I = 0x6

.field static final TRANSACTION_getAllNetworkState:I = 0xa

.field static final TRANSACTION_getDhcpServerConfiguration:I = 0x30

.field static final TRANSACTION_getGlobalProxy:I = 0x27

.field static final TRANSACTION_getLastTetherError:I = 0x1b

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2f

.field static final TRANSACTION_getLinkProperties:I = 0x9

.field static final TRANSACTION_getMobileDataEnabled:I = 0x15

.field static final TRANSACTION_getNetworkInfo:I = 0x5

.field static final TRANSACTION_getNetworkPreference:I = 0x2

.field static final TRANSACTION_getProxy:I = 0x29

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x23

.field static final TRANSACTION_getTetherableIfaces:I = 0x1d

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x21

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x22

.field static final TRANSACTION_getTetheredIfacePairs:I = 0x1f

.field static final TRANSACTION_getTetheredIfaces:I = 0x1e

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x20

.field static final TRANSACTION_isActiveNetworkMetered:I = 0xc

.field static final TRANSACTION_isMobilePolicyDataEnable:I = 0x18

.field static final TRANSACTION_isNetworkSupported:I = 0x7

.field static final TRANSACTION_isTetheringSupported:I = 0x1c

.field static final TRANSACTION_prepareVpn:I = 0x2c

.field static final TRANSACTION_protectVpn:I = 0x2b

.field static final TRANSACTION_removeRouteToHost:I = 0x13

.field static final TRANSACTION_removeRouteToHostAddress:I = 0x14

.field static final TRANSACTION_reportInetCondition:I = 0x26

.field static final TRANSACTION_requestNetworkTransitionWakelock:I = 0x25

.field static final TRANSACTION_requestRouteToHost:I = 0x11

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x12

.field static final TRANSACTION_saveDhcpServerConfiguration:I = 0x31

.field static final TRANSACTION_setDataDependency:I = 0x2a

.field static final TRANSACTION_setGlobalProxy:I = 0x28

.field static final TRANSACTION_setMobileDataEnabled:I = 0x16

.field static final TRANSACTION_setNetworkPreference:I = 0x1

.field static final TRANSACTION_setPolicyDataEnable:I = 0x17

.field static final TRANSACTION_setRadio:I = 0xe

.field static final TRANSACTION_setRadios:I = 0xd

.field static final TRANSACTION_setUsbTethering:I = 0x24

.field static final TRANSACTION_startLegacyVpn:I = 0x2e

.field static final TRANSACTION_startUsingNetworkFeature:I = 0xf

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x10

.field static final TRANSACTION_tether:I = 0x19

.field static final TRANSACTION_untether:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
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
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 634
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 47
    :sswitch_0
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v4

    .line 63
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v4           #_result:I
    :sswitch_3
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 71
    .local v4, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v4           #_result:Landroid/net/NetworkInfo;
    :sswitch_4
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 87
    .restart local v4       #_result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v0           #_arg0:I
    .end local v4           #_result:Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 103
    .restart local v4       #_result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v4, :cond_2

    .line 105
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 115
    .end local v0           #_arg0:I
    .end local v4           #_result:Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 117
    .local v4, _result:[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 123
    .end local v4           #_result:[Landroid/net/NetworkInfo;
    :sswitch_7
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v4

    .line 127
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_8
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 135
    .local v4, _result:Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v4, :cond_4

    .line 137
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 141
    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v4           #_result:Landroid/net/LinkProperties;
    :sswitch_9
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 151
    .restart local v4       #_result:Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v4, :cond_5

    .line 153
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 157
    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 163
    .end local v0           #_arg0:I
    .end local v4           #_result:Landroid/net/LinkProperties;
    :sswitch_a
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v4

    .line 165
    .local v4, _result:[Landroid/net/NetworkState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 171
    .end local v4           #_result:[Landroid/net/NetworkState;
    :sswitch_b
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v4

    .line 173
    .local v4, _result:Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v4, :cond_6

    .line 175
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 179
    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v4           #_result:Landroid/net/NetworkQuotaInfo;
    :sswitch_c
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v4

    .line 187
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v4, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v4           #_result:Z
    :sswitch_d
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    move v0, v6

    .line 196
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v4

    .line 197
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v4, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_9
    move v0, v5

    .line 195
    goto :goto_1

    .line 203
    :sswitch_e
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    move v1, v6

    .line 208
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v4

    .line 209
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v4, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_b
    move v1, v5

    .line 207
    goto :goto_2

    .line 215
    .end local v0           #_arg0:I
    :sswitch_f
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 222
    .local v2, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v4

    .line 223
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/os/IBinder;
    .end local v4           #_result:I
    :sswitch_10
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v4

    .line 235
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_11
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 246
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(II)Z

    move-result v4

    .line 247
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v4, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 253
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_12
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 258
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v4

    .line 259
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v4, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 265
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v4           #_result:Z
    :sswitch_13
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 270
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->removeRouteToHost(II)Z

    move-result v4

    .line 271
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v4, :cond_e

    move v5, v6

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_14
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 282
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->removeRouteToHostAddress(I[B)Z

    move-result v4

    .line 283
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v4, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 289
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v4           #_result:Z
    :sswitch_15
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v4

    .line 291
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v4, :cond_10

    move v5, v6

    :cond_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 297
    .end local v4           #_result:Z
    :sswitch_16
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_11

    move v0, v6

    .line 300
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Z)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_11
    move v0, v5

    .line 299
    goto :goto_3

    .line 306
    :sswitch_17
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    move v1, v6

    .line 311
    .local v1, _arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setPolicyDataEnable(IZ)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_12
    move v1, v5

    .line 310
    goto :goto_4

    .line 317
    .end local v0           #_arg0:I
    :sswitch_18
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isMobilePolicyDataEnable()Z

    move-result v4

    .line 319
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v4, :cond_13

    move v5, v6

    :cond_13
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 325
    .end local v4           #_result:Z
    :sswitch_19
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v4

    .line 329
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 335
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_1a
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v4

    .line 339
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 345
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_1b
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v4

    .line 349
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 355
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_1c
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v4

    .line 357
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v4, :cond_14

    move v5, v6

    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 363
    .end local v4           #_result:Z
    :sswitch_1d
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_1e
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 373
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_1f
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v4

    .line 381
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_20
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 389
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_21
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 397
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_22
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 405
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_23
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 413
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_24
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    move v0, v6

    .line 422
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v4

    .line 423
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:I
    :cond_15
    move v0, v5

    .line 421
    goto :goto_5

    .line 429
    :sswitch_25
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 438
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_26
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 442
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 449
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_27
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 451
    .local v4, _result:Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v4, :cond_16

    .line 453
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    invoke-virtual {v4, p3, v6}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 457
    :cond_16
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 463
    .end local v4           #_result:Landroid/net/ProxyProperties;
    :sswitch_28
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    .line 466
    sget-object v5, Landroid/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    .line 471
    .local v0, _arg0:Landroid/net/ProxyProperties;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 469
    .end local v0           #_arg0:Landroid/net/ProxyProperties;
    :cond_17
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/ProxyProperties;
    goto :goto_6

    .line 477
    .end local v0           #_arg0:Landroid/net/ProxyProperties;
    :sswitch_29
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 479
    .restart local v4       #_result:Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v4, :cond_18

    .line 481
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    invoke-virtual {v4, p3, v6}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 485
    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 491
    .end local v4           #_result:Landroid/net/ProxyProperties;
    :sswitch_2a
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 495
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    move v1, v6

    .line 496
    .local v1, _arg1:Z
    :goto_7
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setDataDependency(IZ)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_19
    move v1, v5

    .line 495
    goto :goto_7

    .line 502
    .end local v0           #_arg0:I
    :sswitch_2b
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b

    .line 505
    sget-object v7, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 510
    .local v0, _arg0:Landroid/os/ParcelFileDescriptor;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->protectVpn(Landroid/os/ParcelFileDescriptor;)Z

    move-result v4

    .line 511
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    if-eqz v4, :cond_1a

    move v5, v6

    :cond_1a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 508
    .end local v0           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v4           #_result:Z
    :cond_1b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    .line 517
    .end local v0           #_arg0:Landroid/os/ParcelFileDescriptor;
    :sswitch_2c
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 523
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    if-eqz v4, :cond_1c

    move v5, v6

    :cond_1c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 529
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2d
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1d

    .line 532
    sget-object v7, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 537
    .local v0, _arg0:Lcom/android/internal/net/VpnConfig;
    :goto_9
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 538
    .local v4, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v4, :cond_1e

    .line 540
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {v4, p3, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 535
    .end local v0           #_arg0:Lcom/android/internal/net/VpnConfig;
    .end local v4           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_1d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/internal/net/VpnConfig;
    goto :goto_9

    .line 544
    .restart local v4       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 550
    .end local v0           #_arg0:Lcom/android/internal/net/VpnConfig;
    .end local v4           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_2e
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    .line 553
    sget-object v5, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 559
    .restart local v0       #_arg0:Lcom/android/internal/net/VpnConfig;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 556
    .end local v0           #_arg0:Lcom/android/internal/net/VpnConfig;
    .end local v1           #_arg1:[Ljava/lang/String;
    .end local v2           #_arg2:[Ljava/lang/String;
    :cond_1f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/internal/net/VpnConfig;
    goto :goto_a

    .line 568
    .end local v0           #_arg0:Lcom/android/internal/net/VpnConfig;
    :sswitch_2f
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v4

    .line 570
    .local v4, _result:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    if-eqz v4, :cond_20

    .line 572
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    invoke-virtual {v4, p3, v6}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 576
    :cond_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 582
    .end local v4           #_result:Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_30
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;

    move-result-object v4

    .line 584
    .local v4, _result:Landroid/net/DhcpServerConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v4, :cond_21

    .line 586
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {v4, p3, v6}, Landroid/net/DhcpServerConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 590
    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 596
    .end local v4           #_result:Landroid/net/DhcpServerConfiguration;
    :sswitch_31
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_23

    .line 599
    sget-object v7, Landroid/net/DhcpServerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DhcpServerConfiguration;

    .line 604
    .local v0, _arg0:Landroid/net/DhcpServerConfiguration;
    :goto_b
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    move-result v4

    .line 605
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    if-eqz v4, :cond_22

    move v5, v6

    :cond_22
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 602
    .end local v0           #_arg0:Landroid/net/DhcpServerConfiguration;
    .end local v4           #_result:Z
    :cond_23
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/DhcpServerConfiguration;
    goto :goto_b

    .line 611
    .end local v0           #_arg0:Landroid/net/DhcpServerConfiguration;
    :sswitch_32
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 619
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->SetCwDefaultService(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 626
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Ljava/lang/String;
    :sswitch_33
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->ResetCwDefaultService(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
