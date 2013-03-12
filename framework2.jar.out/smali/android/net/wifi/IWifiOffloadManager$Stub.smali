.class public abstract Landroid/net/wifi/IWifiOffloadManager$Stub;
.super Landroid/os/Binder;
.source "IWifiOffloadManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiOffloadManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiOffloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiOffloadManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiOffloadManager"

.field static final TRANSACTION_blockWifiPopup:I = 0x10

.field static final TRANSACTION_canAppOffload:I = 0x1a

.field static final TRANSACTION_checkAppNeedsMoveToFront:I = 0x1c

.field static final TRANSACTION_clearAllAccessPoints:I = 0xe

.field static final TRANSACTION_deleteNetwork:I = 0x8

.field static final TRANSACTION_doOffloadStuff:I = 0x21

.field static final TRANSACTION_getAvailableSSIDNames:I = 0x9

.field static final TRANSACTION_getCDMABaseStationID:I = 0x7

.field static final TRANSACTION_getIntelligentWifiEnabled:I = 0x13

.field static final TRANSACTION_getLastPkgName:I = 0x1e

.field static final TRANSACTION_getLastWifiScannedTime:I = 0x20

.field static final TRANSACTION_intelScanMode:I = 0x12

.field static final TRANSACTION_isAppInWiFiBlackList:I = 0x4

.field static final TRANSACTION_isAppinWhiteList:I = 0x1b

.field static final TRANSACTION_isDontUseWifiPressed:I = 0x14

.field static final TRANSACTION_isIntelScanModeEnabled:I = 0x1f

.field static final TRANSACTION_isMobileDataActive:I = 0x1

.field static final TRANSACTION_isWifiConnected:I = 0xf

.field static final TRANSACTION_isWifiOnlyApp:I = 0xd

.field static final TRANSACTION_notifyDialogDisplayed:I = 0x1d

.field static final TRANSACTION_resetCurrentTestBaseStationID:I = 0xc

.field static final TRANSACTION_resetNeverTurnOnWifi:I = 0x18

.field static final TRANSACTION_setAppRunOverWiFiResult:I = 0x16

.field static final TRANSACTION_setCurrentTestBaseStationID:I = 0xa

.field static final TRANSACTION_setDontuseWifiPressed:I = 0x15

.field static final TRANSACTION_setNeverTurnOnWifi:I = 0x19

.field static final TRANSACTION_startDataActivityTimer:I = 0x5

.field static final TRANSACTION_startDontUseWiFiPressedTimer:I = 0x17

.field static final TRANSACTION_stopDataActivityTimer:I = 0x6

.field static final TRANSACTION_tryToTurnOnWifi:I = 0x2

.field static final TRANSACTION_updateBaseStationIDs:I = 0xb

.field static final TRANSACTION_updateDialogStatus:I = 0x3

.field static final TRANSACTION_wasWiFiReallyOn:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiOffloadManager;
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
    const-string v1, "android.net.wifi.IWifiOffloadManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiOffloadManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiOffloadManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiOffloadManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiOffloadManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 343
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isMobileDataActive()I

    move-result v2

    .line 54
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v2           #_result:I
    :sswitch_2
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 65
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiOffloadManager$Stub;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    move-result v2

    .line 66
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v2, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_1
    move v1, v5

    .line 64
    goto :goto_1

    .line 72
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->updateDialogStatus(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isAppInWiFiBlackList(Ljava/lang/String;)Z

    move-result v2

    .line 85
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v2, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_5
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->startDataActivityTimer()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    :sswitch_6
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->stopDataActivityTimer()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    :sswitch_7
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->getCDMABaseStationID()I

    move-result v2

    .line 107
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v2           #_result:I
    :sswitch_8
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->deleteNetwork(Ljava/lang/String;)I

    move-result v2

    .line 117
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_9
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->getAvailableSSIDNames()[Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    .end local v2           #_result:[Ljava/lang/String;
    :sswitch_a
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->setCurrentTestBaseStationID(I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:I
    :sswitch_b
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiOffloadManager$Stub;->updateBaseStationIDs(Ljava/lang/String;I)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_c
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->resetCurrentTestBaseStationID()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    :sswitch_d
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isWifiOnlyApp(Ljava/lang/String;)Z

    move-result v2

    .line 162
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v2, :cond_3

    move v5, v4

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_e
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->clearAllAccessPoints()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    :sswitch_f
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isWifiConnected()Z

    move-result v2

    .line 177
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v2, :cond_4

    move v5, v4

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v2           #_result:Z
    :sswitch_10
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    move v1, v4

    .line 188
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiOffloadManager$Stub;->blockWifiPopup(IZ)Z

    move-result v2

    .line 189
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v2, :cond_5

    move v5, v4

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_6
    move v1, v5

    .line 187
    goto :goto_2

    .line 195
    .end local v0           #_arg0:I
    :sswitch_11
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->wasWiFiReallyOn()Z

    move-result v2

    .line 197
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v2, :cond_7

    move v5, v4

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v2           #_result:Z
    :sswitch_12
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    move v0, v4

    .line 206
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->intelScanMode(Z)Z

    move-result v2

    .line 207
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v2, :cond_8

    move v5, v4

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_9
    move v0, v5

    .line 205
    goto :goto_3

    .line 213
    :sswitch_13
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->getIntelligentWifiEnabled()Z

    move-result v2

    .line 215
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v2, :cond_a

    move v5, v4

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    .end local v2           #_result:Z
    :sswitch_14
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isDontUseWifiPressed()Z

    move-result v2

    .line 223
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v2, :cond_b

    move v5, v4

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v2           #_result:Z
    :sswitch_15
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    move v0, v4

    .line 232
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->setDontuseWifiPressed(Z)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_c
    move v0, v5

    .line 231
    goto :goto_4

    .line 238
    :sswitch_16
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    move v1, v4

    .line 243
    .restart local v1       #_arg1:Z
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiOffloadManager$Stub;->setAppRunOverWiFiResult(IZ)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_d
    move v1, v5

    .line 242
    goto :goto_5

    .line 249
    .end local v0           #_arg0:I
    :sswitch_17
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->startDontUseWiFiPressedTimer()V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 256
    :sswitch_18
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->resetNeverTurnOnWifi()V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 263
    :sswitch_19
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->setNeverTurnOnWifi()V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 270
    :sswitch_1a
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->canAppOffload(Ljava/lang/String;)Z

    move-result v2

    .line 274
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v2, :cond_e

    move v5, v4

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 280
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_1b
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isAppinWhiteList(Ljava/lang/String;)Z

    move-result v2

    .line 284
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v2, :cond_f

    move v5, v4

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 290
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_1c
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->checkAppNeedsMoveToFront(I)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 299
    .end local v0           #_arg0:I
    :sswitch_1d
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 302
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->notifyDialogDisplayed(I)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 308
    .end local v0           #_arg0:I
    :sswitch_1e
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->getLastPkgName()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1f
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isIntelScanModeEnabled()Z

    move-result v2

    .line 318
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v2, :cond_10

    move v5, v4

    :cond_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 324
    .end local v2           #_result:Z
    :sswitch_20
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->getLastWifiScannedTime()J

    move-result-wide v2

    .line 326
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 332
    .end local v2           #_result:J
    :sswitch_21
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiOffloadManager$Stub;->doOffloadStuff(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 338
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
