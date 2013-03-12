.class public abstract Landroid/os/IDeviceManager3LM$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager3LM.java"

# interfaces
.implements Landroid/os/IDeviceManager3LM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceManager3LM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceManager3LM$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceManager3LM"

.field static final TRANSACTION_addApn:I = 0x35

.field static final TRANSACTION_blockAdb:I = 0x23

.field static final TRANSACTION_blockScreenshot:I = 0x33

.field static final TRANSACTION_blockTethering:I = 0x32

.field static final TRANSACTION_blockUsb:I = 0x28

.field static final TRANSACTION_checkAppUninstallPolicies:I = 0x12

.field static final TRANSACTION_checkPackagePermission:I = 0x8

.field static final TRANSACTION_checkSignature:I = 0x26

.field static final TRANSACTION_clear:I = 0x1

.field static final TRANSACTION_clearApn:I = 0x36

.field static final TRANSACTION_clearApplicationUserData:I = 0x22

.field static final TRANSACTION_clearPackagePermissions:I = 0x2e

.field static final TRANSACTION_completePackageScan:I = 0x31

.field static final TRANSACTION_deletePackage:I = 0x14

.field static final TRANSACTION_disablePackage:I = 0xa

.field static final TRANSACTION_enablePackage:I = 0xb

.field static final TRANSACTION_getBluetoothEnabled:I = 0x6

.field static final TRANSACTION_getPackageScanner:I = 0x30

.field static final TRANSACTION_getVersion:I = 0x2

.field static final TRANSACTION_installPackage:I = 0x13

.field static final TRANSACTION_isAdminLocked:I = 0x2a

.field static final TRANSACTION_isPackageDisabled:I = 0xd

.field static final TRANSACTION_isSsidAllowed:I = 0x25

.field static final TRANSACTION_keyStoreChangePassword:I = 0x1c

.field static final TRANSACTION_keyStoreContains:I = 0x1a

.field static final TRANSACTION_keyStoreDeleteKey:I = 0x17

.field static final TRANSACTION_keyStoreGetKey:I = 0x16

.field static final TRANSACTION_keyStorePutKey:I = 0x15

.field static final TRANSACTION_keyStoreReset:I = 0x1b

.field static final TRANSACTION_keyStoreSetPassword:I = 0x18

.field static final TRANSACTION_keyStoreUnlock:I = 0x19

.field static final TRANSACTION_lockAdmin:I = 0x29

.field static final TRANSACTION_lockApn:I = 0x34

.field static final TRANSACTION_notification:I = 0x27

.field static final TRANSACTION_putSettingsSecureInt:I = 0x1e

.field static final TRANSACTION_putSettingsSecureString:I = 0x1d

.field static final TRANSACTION_restoreDefaultApns:I = 0x37

.field static final TRANSACTION_setAllowedPackages:I = 0xc

.field static final TRANSACTION_setAppInstallPermissionPolicies:I = 0xf

.field static final TRANSACTION_setAppInstallPkgNamePolicies:I = 0xe

.field static final TRANSACTION_setAppInstallPubkeyPolicies:I = 0x10

.field static final TRANSACTION_setAppUninstallPkgNamePolicies:I = 0x11

.field static final TRANSACTION_setBluetoothEnabled:I = 0x5

.field static final TRANSACTION_setBootLock:I = 0x3

.field static final TRANSACTION_setLocationProviderEnabled:I = 0x2c

.field static final TRANSACTION_setNfcState:I = 0x20

.field static final TRANSACTION_setNotificationText:I = 0x7

.field static final TRANSACTION_setOtaDelay:I = 0x2b

.field static final TRANSACTION_setPackagePermission:I = 0x9

.field static final TRANSACTION_setPackageScanner:I = 0x2f

.field static final TRANSACTION_setSdEncryptionRequired:I = 0x1f

.field static final TRANSACTION_setSecureClipboard:I = 0x2d

.field static final TRANSACTION_setSsidFilter:I = 0x24

.field static final TRANSACTION_setWifiState:I = 0x21

.field static final TRANSACTION_unlock:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.IDeviceManager3LM"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDeviceManager3LM;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IDeviceManager3LM;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IDeviceManager3LM$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IDeviceManager3LM$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 581
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clear()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getVersion()I

    move-result v4

    .line 57
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v4           #_result:I
    :sswitch_3
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v0, v6

    .line 66
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setBootLock(Z)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v7

    .line 65
    goto :goto_1

    .line 72
    :sswitch_4
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->unlock()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 82
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setBluetoothEnabled(Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v7

    .line 81
    goto :goto_2

    .line 88
    :sswitch_6
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getBluetoothEnabled()Z

    move-result v4

    .line 90
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v4, :cond_2

    move v7, v6

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v4           #_result:Z
    :sswitch_7
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setNotificationText(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 111
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v4, :cond_3

    move v7, v6

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_9
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v3, v6

    .line 124
    .local v3, _arg2:Z
    :goto_3
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 125
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v4, :cond_4

    move v7, v6

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    .end local v4           #_result:Z
    :cond_5
    move v3, v7

    .line 123
    goto :goto_3

    .line 131
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_a
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->disablePackage(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_b
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->enablePackage(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_c
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 152
    .local v5, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 153
    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAllowedPackages(Ljava/util/Map;)Z

    move-result v4

    .line 154
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v4, :cond_6

    move v7, v6

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v4           #_result:Z
    .end local v5           #cl:Ljava/lang/ClassLoader;
    :sswitch_d
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v4

    .line 164
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v4, :cond_7

    move v7, v6

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_e
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 173
    .restart local v5       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 174
    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v4

    .line 175
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v4, :cond_8

    move v7, v6

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v4           #_result:Z
    .end local v5           #cl:Ljava/lang/ClassLoader;
    :sswitch_f
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 184
    .restart local v5       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 185
    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPermissionPolicies(Ljava/util/Map;)Z

    move-result v4

    .line 186
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v4, :cond_9

    move v7, v6

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v4           #_result:Z
    .end local v5           #cl:Ljava/lang/ClassLoader;
    :sswitch_10
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 195
    .restart local v5       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 196
    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPubkeyPolicies(Ljava/util/Map;)Z

    move-result v4

    .line 197
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v4, :cond_a

    move v7, v6

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v4           #_result:Z
    .end local v5           #cl:Ljava/lang/ClassLoader;
    :sswitch_11
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 206
    .restart local v5       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 207
    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v4

    .line 208
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v4, :cond_b

    move v7, v6

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v4           #_result:Z
    .end local v5           #cl:Ljava/lang/ClassLoader;
    :sswitch_12
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v4

    .line 218
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_c

    move v7, v6

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_13
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->installPackage(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 233
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_14
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    move v2, v6

    .line 238
    .local v2, _arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->deletePackage(Ljava/lang/String;Z)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_d
    move v2, v7

    .line 237
    goto :goto_4

    .line 244
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_15
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 250
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v4, :cond_e

    move v7, v6

    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_16
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_17
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreDeleteKey(Ljava/lang/String;)Z

    move-result v4

    .line 270
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v4, :cond_f

    move v7, v6

    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 276
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_18
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreSetPassword(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 285
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_19
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreUnlock(Ljava/lang/String;)Z

    move-result v4

    .line 289
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v4, :cond_10

    move v7, v6

    :cond_10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 295
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1a
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreContains(Ljava/lang/String;)Z

    move-result v4

    .line 299
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v4, :cond_11

    move v7, v6

    :cond_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 305
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1b
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreReset()Z

    move-result v4

    .line 307
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v4, :cond_12

    move v7, v6

    :cond_12
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 313
    .end local v4           #_result:Z
    :sswitch_1c
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 319
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v4, :cond_13

    move v7, v6

    :cond_13
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 325
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1d
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 331
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v4, :cond_14

    move v7, v6

    :cond_14
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 337
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1e
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureInt(Ljava/lang/String;I)Z

    move-result v4

    .line 343
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v4, :cond_15

    move v7, v6

    :cond_15
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 349
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_1f
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_16

    move v0, v6

    .line 352
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setSdEncryptionRequired(Z)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_16
    move v0, v7

    .line 351
    goto :goto_5

    .line 358
    :sswitch_20
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setNfcState(I)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 367
    .end local v0           #_arg0:I
    :sswitch_21
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 370
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setWifiState(I)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 376
    .end local v0           #_arg0:I
    :sswitch_22
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->clearApplicationUserData(Ljava/lang/String;)Z

    move-result v4

    .line 380
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    if-eqz v4, :cond_17

    move v7, v6

    :cond_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 386
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_23
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_18

    move v0, v6

    .line 389
    .local v0, _arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockAdb(Z)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_18
    move v0, v7

    .line 388
    goto :goto_6

    .line 395
    :sswitch_24
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 398
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setSsidFilter(Ljava/util/List;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 404
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_25
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v4

    .line 408
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v4, :cond_19

    move v7, v6

    :cond_19
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 414
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_26
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->checkSignature(I)Z

    move-result v4

    .line 418
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    if-eqz v4, :cond_1a

    move v7, v6

    :cond_1a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 424
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_27
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 428
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 430
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 431
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->notification(III)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 437
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_28
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1b

    move v0, v6

    .line 440
    .local v0, _arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockUsb(Z)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_1b
    move v0, v7

    .line 439
    goto :goto_7

    .line 446
    :sswitch_29
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1c

    move v0, v6

    .line 449
    .restart local v0       #_arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->lockAdmin(Z)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_1c
    move v0, v7

    .line 448
    goto :goto_8

    .line 455
    :sswitch_2a
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isAdminLocked()Z

    move-result v4

    .line 457
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v4, :cond_1d

    move v7, v6

    :cond_1d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 463
    .end local v4           #_result:Z
    :sswitch_2b
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 466
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setOtaDelay(I)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 472
    .end local v0           #_arg0:I
    :sswitch_2c
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1e

    move v2, v6

    .line 477
    .local v2, _arg1:Z
    :goto_9
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->setLocationProviderEnabled(Ljava/lang/String;Z)V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_1e
    move v2, v7

    .line 476
    goto :goto_9

    .line 483
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2d
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 486
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setSecureClipboard(Ljava/util/List;)V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 492
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2e
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clearPackagePermissions()V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 499
    :sswitch_2f
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 503
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1f

    move v2, v6

    .line 505
    .restart local v2       #_arg1:Z
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 506
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->setPackageScanner(Ljava/lang/String;ZI)V

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:I
    :cond_1f
    move v2, v7

    .line 503
    goto :goto_a

    .line 512
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_30
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getPackageScanner()[Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_31
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 524
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 525
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->completePackageScan(II)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 531
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_32
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_20

    move v0, v6

    .line 534
    .local v0, _arg0:Z
    :goto_b
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockTethering(Z)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_20
    move v0, v7

    .line 533
    goto :goto_b

    .line 540
    :sswitch_33
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_21

    move v0, v6

    .line 543
    .restart local v0       #_arg0:Z
    :goto_c
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockScreenshot(Z)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_21
    move v0, v7

    .line 542
    goto :goto_c

    .line 549
    :sswitch_34
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_22

    move v0, v6

    .line 552
    .restart local v0       #_arg0:Z
    :goto_d
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->lockApn(Z)V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_22
    move v0, v7

    .line 551
    goto :goto_d

    .line 558
    :sswitch_35
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 561
    .restart local v5       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 562
    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->addApn(Ljava/util/Map;)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 568
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v5           #cl:Ljava/lang/ClassLoader;
    :sswitch_36
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clearApn()V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 575
    :sswitch_37
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->restoreDefaultApns()V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
