.class public abstract Landroid/sec/enterprise/IEDMProxy$Stub;
.super Landroid/os/Binder;
.source "IEDMProxy.java"

# interfaces
.implements Landroid/sec/enterprise/IEDMProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/IEDMProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.enterprise.IEDMProxy"

.field static final TRANSACTION_addCallsCount:I = 0x1

.field static final TRANSACTION_addNumberOfIncomingCalls:I = 0x1f

.field static final TRANSACTION_addNumberOfIncomingSms:I = 0x23

.field static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x20

.field static final TRANSACTION_addNumberOfOutgoingSms:I = 0x24

.field static final TRANSACTION_bluetoothLog:I = 0x42

.field static final TRANSACTION_canIncomingCall:I = 0x1c

.field static final TRANSACTION_canIncomingSms:I = 0x27

.field static final TRANSACTION_canOutgoingCall:I = 0x1d

.field static final TRANSACTION_canOutgoingSms:I = 0x26

.field static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x25

.field static final TRANSACTION_edmAddOrUpdate:I = 0x2f

.field static final TRANSACTION_getAllowBluetoothDataTransfer:I = 0x9

.field static final TRANSACTION_getAllowUserPolicyChanges:I = 0x2a

.field static final TRANSACTION_getAllowUserProfiles:I = 0x2b

.field static final TRANSACTION_getApplicationIconFromDb:I = 0x7

.field static final TRANSACTION_getApplicationNotificationMode:I = 0x3e

.field static final TRANSACTION_getBackupData:I = 0x47

.field static final TRANSACTION_getBlockedNetworks:I = 0x29

.field static final TRANSACTION_getBluetoothLog:I = 0x41

.field static final TRANSACTION_getBrowserSettingStatus:I = 0x12

.field static final TRANSACTION_getEmergencyCallOnly:I = 0x1e

.field static final TRANSACTION_getIncomingSmsRestriction:I = 0x3a

.field static final TRANSACTION_getMinimumRequiredSecurity:I = 0x2e

.field static final TRANSACTION_getNetworkSSIDList:I = 0x28

.field static final TRANSACTION_getOutgoingSmsRestriction:I = 0x39

.field static final TRANSACTION_getPromptCredentialsEnabled:I = 0x2d

.field static final TRANSACTION_isApplicationForceStopDisabled:I = 0x43

.field static final TRANSACTION_isBackupAllowed:I = 0x48

.field static final TRANSACTION_isBluetoothDeviceAllowed:I = 0xd

.field static final TRANSACTION_isBluetoothEnabled:I = 0x11

.field static final TRANSACTION_isBluetoothLogEnabled:I = 0x40

.field static final TRANSACTION_isBluetoothUUIDAllowed:I = 0xb

.field static final TRANSACTION_isCallingCaptureEnabled:I = 0x2

.field static final TRANSACTION_isCameraEnabled:I = 0x18

.field static final TRANSACTION_isChangeRequested:I = 0x13

.field static final TRANSACTION_isClipboardAllowed:I = 0x1a

.field static final TRANSACTION_isDateTimeChangeEnabled:I = 0x31

.field static final TRANSACTION_isDesktopConnectivityEnabled:I = 0x49

.field static final TRANSACTION_isDiscoverableEnabled:I = 0xf

.field static final TRANSACTION_isGoogleCrashReportAllowed:I = 0x34

.field static final TRANSACTION_isHardwareKeyAllowed:I = 0x36

.field static final TRANSACTION_isIncomingMmsAllowed:I = 0x44

.field static final TRANSACTION_isIncomingSmsAllowed:I = 0x3b

.field static final TRANSACTION_isIntentDisabled:I = 0x8

.field static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x22

.field static final TRANSACTION_isLimitedDiscoverableEnabled:I = 0x10

.field static final TRANSACTION_isLocationProviderBlocked:I = 0x6

.field static final TRANSACTION_isMicrophoneEnabled:I = 0x1b

.field static final TRANSACTION_isNFCEnabled:I = 0x19

.field static final TRANSACTION_isNonMarketAppAllowed:I = 0x17

.field static final TRANSACTION_isOutgoingCallsAllowed:I = 0xa

.field static final TRANSACTION_isOutgoingMmsAllowed:I = 0x45

.field static final TRANSACTION_isOutgoingSmsAllowed:I = 0x3c

.field static final TRANSACTION_isPairingEnabled:I = 0xe

.field static final TRANSACTION_isPowerOffAllowed:I = 0x38

.field static final TRANSACTION_isProfileEnabled:I = 0xc

.field static final TRANSACTION_isRoamingPushEnabled:I = 0x14

.field static final TRANSACTION_isRoamingSyncEnabled:I = 0x15

.field static final TRANSACTION_isSMSCaptureEnabled:I = 0x4

.field static final TRANSACTION_isScreenCaptureEnabled:I = 0x33

.field static final TRANSACTION_isScreenLockPatternVisibilityEnabled:I = 0x32

.field static final TRANSACTION_isSettingsChangesAllowed:I = 0x16

.field static final TRANSACTION_isStatusBarExpansionAllowed:I = 0x21

.field static final TRANSACTION_isStatusBarNotificationAllowed:I = 0x3f

.field static final TRANSACTION_isTaskManagerAllowed:I = 0x37

.field static final TRANSACTION_isUrlBlocked:I = 0x3d

.field static final TRANSACTION_isWifiAllowed:I = 0x2c

.field static final TRANSACTION_isWifiStateChangeAllowed:I = 0x35

.field static final TRANSACTION_removeNetworkConfiguration:I = 0x30

.field static final TRANSACTION_setBackupData:I = 0x46

.field static final TRANSACTION_storeCalling:I = 0x3

.field static final TRANSACTION_storeSMS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p0, p0, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/IEDMProxy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "android.sec.enterprise.IEDMProxy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Landroid/sec/enterprise/IEDMProxy;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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

    const/4 v9, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 734
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 44
    :sswitch_0
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->addCallsCount(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCallingCaptureEnabled()Z

    move-result v6

    .line 60
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_0

    move v0, v9

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v6           #_result:Z
    :sswitch_3
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    move v5, v9

    .local v5, _arg4:Z
    :goto_1
    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v5           #_arg4:Z
    :cond_1
    move v5, v0

    .line 76
    goto :goto_1

    .line 83
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_4
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSMSCaptureEnabled()Z

    move-result v6

    .line 85
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v6, :cond_2

    move v0, v9

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v6           #_result:Z
    :sswitch_5
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v4, v9

    .line 100
    .local v4, _arg3:Z
    :goto_2
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v4           #_arg3:Z
    :cond_3
    move v4, v0

    .line 99
    goto :goto_2

    .line 106
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_6
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v6

    .line 110
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v6, :cond_4

    move v0, v9

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_7
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationIconFromDb(Ljava/lang/String;)[B

    move-result-object v6

    .line 120
    .local v6, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 126
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:[B
    :sswitch_8
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    .line 129
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 134
    .local v1, _arg0:Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v6

    .line 135
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v6, :cond_5

    move v0, v9

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v1           #_arg0:Landroid/content/Intent;
    .end local v6           #_result:Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/Intent;
    goto :goto_3

    .line 141
    .end local v1           #_arg0:Landroid/content/Intent;
    :sswitch_9
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowBluetoothDataTransfer()Z

    move-result v6

    .line 143
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v6, :cond_7

    move v0, v9

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v6           #_result:Z
    :sswitch_a
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingCallsAllowed()Z

    move-result v6

    .line 151
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v6, :cond_8

    move v0, v9

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v6           #_result:Z
    :sswitch_b
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v6

    .line 161
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v6, :cond_9

    move v0, v9

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_c
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isProfileEnabled(I)Z

    move-result v6

    .line 171
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v6, :cond_a

    move v0, v9

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_d
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v6

    .line 181
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v6, :cond_b

    move v0, v9

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_e
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPairingEnabled()Z

    move-result v6

    .line 189
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v6, :cond_c

    move v0, v9

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 195
    .end local v6           #_result:Z
    :sswitch_f
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDiscoverableEnabled()Z

    move-result v6

    .line 197
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v6, :cond_d

    move v0, v9

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v6           #_result:Z
    :sswitch_10
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitedDiscoverableEnabled()Z

    move-result v6

    .line 205
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v6, :cond_e

    move v0, v9

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    .end local v6           #_result:Z
    :sswitch_11
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothEnabled()Z

    move-result v6

    .line 213
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v6, :cond_f

    move v0, v9

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    .end local v6           #_result:Z
    :sswitch_12
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBrowserSettingStatus(I)Z

    move-result v6

    .line 223
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v6, :cond_10

    move v0, v9

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_13
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isChangeRequested()I

    move-result v6

    .line 231
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v6           #_result:I
    :sswitch_14
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingPushEnabled()Z

    move-result v6

    .line 239
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v6, :cond_11

    move v0, v9

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 245
    .end local v6           #_result:Z
    :sswitch_15
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingSyncEnabled()Z

    move-result v6

    .line 247
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v6, :cond_12

    move v0, v9

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 253
    .end local v6           #_result:Z
    :sswitch_16
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_14

    move v1, v9

    .line 256
    .local v1, _arg0:Z
    :goto_4
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSettingsChangesAllowed(Z)Z

    move-result v6

    .line 257
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v6, :cond_13

    move v0, v9

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_14
    move v1, v0

    .line 255
    goto :goto_4

    .line 263
    :sswitch_17
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNonMarketAppAllowed()Z

    move-result v6

    .line 265
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v6, :cond_15

    move v0, v9

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v6           #_result:Z
    :sswitch_18
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_17

    move v1, v9

    .line 274
    .restart local v1       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCameraEnabled(Z)Z

    move-result v6

    .line 275
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v6, :cond_16

    move v0, v9

    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_17
    move v1, v0

    .line 273
    goto :goto_5

    .line 281
    :sswitch_19
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNFCEnabled()Z

    move-result v6

    .line 283
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v6, :cond_18

    move v0, v9

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 289
    .end local v6           #_result:Z
    :sswitch_1a
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1a

    move v1, v9

    .line 292
    .restart local v1       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardAllowed(Z)Z

    move-result v6

    .line 293
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v6, :cond_19

    move v0, v9

    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_1a
    move v1, v0

    .line 291
    goto :goto_6

    .line 299
    :sswitch_1b
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1c

    move v1, v9

    .line 302
    .restart local v1       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMicrophoneEnabled(Z)Z

    move-result v6

    .line 303
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v6, :cond_1b

    move v0, v9

    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_1c
    move v1, v0

    .line 301
    goto :goto_7

    .line 309
    :sswitch_1c
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingCall(Ljava/lang/String;)Z

    move-result v6

    .line 313
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v6, :cond_1d

    move v0, v9

    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 319
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_1d
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v6

    .line 323
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v6, :cond_1e

    move v0, v9

    :cond_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 329
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_1e
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_20

    move v1, v9

    .line 332
    .local v1, _arg0:Z
    :goto_8
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getEmergencyCallOnly(Z)Z

    move-result v6

    .line 333
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v6, :cond_1f

    move v0, v9

    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_20
    move v1, v0

    .line 331
    goto :goto_8

    .line 339
    :sswitch_1f
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingCalls()Z

    move-result v6

    .line 341
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    if-eqz v6, :cond_21

    move v0, v9

    :cond_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 347
    .end local v6           #_result:Z
    :sswitch_20
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingCalls()Z

    move-result v6

    .line 349
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v6, :cond_22

    move v0, v9

    :cond_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 355
    .end local v6           #_result:Z
    :sswitch_21
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_24

    move v1, v9

    .line 358
    .restart local v1       #_arg0:Z
    :goto_9
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isStatusBarExpansionAllowed(Z)Z

    move-result v6

    .line 359
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v6, :cond_23

    move v0, v9

    :cond_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_24
    move v1, v0

    .line 357
    goto :goto_9

    .line 365
    :sswitch_22
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitNumberOfSmsEnabled()Z

    move-result v6

    .line 367
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v6, :cond_25

    move v0, v9

    :cond_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 373
    .end local v6           #_result:Z
    :sswitch_23
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingSms()Z

    move-result v6

    .line 375
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v6, :cond_26

    move v0, v9

    :cond_26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 381
    .end local v6           #_result:Z
    :sswitch_24
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingSms()Z

    move-result v6

    .line 383
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v6, :cond_27

    move v0, v9

    :cond_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 389
    .end local v6           #_result:Z
    :sswitch_25
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->decreaseNumberOfOutgoingSms()Z

    move-result v6

    .line 391
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v6, :cond_28

    move v0, v9

    :cond_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 397
    .end local v6           #_result:Z
    :sswitch_26
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v6

    .line 401
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v6, :cond_29

    move v0, v9

    :cond_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 407
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_27
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingSms(Ljava/lang/String;)Z

    move-result v6

    .line 411
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    if-eqz v6, :cond_2a

    move v0, v9

    :cond_2a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 417
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_28
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v7

    .line 419
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 425
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_29
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBlockedNetworks()Ljava/util/List;

    move-result-object v7

    .line 427
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 433
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2a
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowUserPolicyChanges()Z

    move-result v6

    .line 435
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    if-eqz v6, :cond_2b

    move v0, v9

    :cond_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 441
    .end local v6           #_result:Z
    :sswitch_2b
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2d

    move v1, v9

    .line 444
    .local v1, _arg0:Z
    :goto_a
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowUserProfiles(Z)Z

    move-result v6

    .line 445
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v6, :cond_2c

    move v0, v9

    :cond_2c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_2d
    move v1, v0

    .line 443
    goto :goto_a

    .line 451
    :sswitch_2c
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2f

    move v1, v9

    .line 454
    .restart local v1       #_arg0:Z
    :goto_b
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWifiAllowed(Z)Z

    move-result v6

    .line 455
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v6, :cond_2e

    move v0, v9

    :cond_2e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_2f
    move v1, v0

    .line 453
    goto :goto_b

    .line 461
    :sswitch_2d
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getPromptCredentialsEnabled()Z

    move-result v6

    .line 463
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v6, :cond_30

    move v0, v9

    :cond_30
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 469
    .end local v6           #_result:Z
    :sswitch_2e
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getMinimumRequiredSecurity()I

    move-result v6

    .line 471
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 477
    .end local v6           #_result:I
    :sswitch_2f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    .line 480
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 486
    .local v1, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 487
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 483
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:Ljava/lang/String;
    :cond_31
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_c

    .line 493
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_30
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v6

    .line 497
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    if-eqz v6, :cond_32

    move v0, v9

    :cond_32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 503
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_31
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDateTimeChangeEnabled()Z

    move-result v6

    .line 505
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    if-eqz v6, :cond_33

    move v0, v9

    :cond_33
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 511
    .end local v6           #_result:Z
    :sswitch_32
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenLockPatternVisibilityEnabled()Z

    move-result v6

    .line 513
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v6, :cond_34

    move v0, v9

    :cond_34
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 519
    .end local v6           #_result:Z
    :sswitch_33
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_36

    move v1, v9

    .line 522
    .local v1, _arg0:Z
    :goto_d
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenCaptureEnabled(Z)Z

    move-result v6

    .line 523
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    if-eqz v6, :cond_35

    move v0, v9

    :cond_35
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_36
    move v1, v0

    .line 521
    goto :goto_d

    .line 529
    :sswitch_34
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isGoogleCrashReportAllowed()Z

    move-result v6

    .line 531
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    if-eqz v6, :cond_37

    move v0, v9

    :cond_37
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 537
    .end local v6           #_result:Z
    :sswitch_35
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWifiStateChangeAllowed()Z

    move-result v6

    .line 539
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    if-eqz v6, :cond_38

    move v0, v9

    :cond_38
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 545
    .end local v6           #_result:Z
    :sswitch_36
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 549
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3a

    move v2, v9

    .line 550
    .local v2, _arg1:Z
    :goto_e
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->isHardwareKeyAllowed(IZ)Z

    move-result v6

    .line 551
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    if-eqz v6, :cond_39

    move v0, v9

    :cond_39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_3a
    move v2, v0

    .line 549
    goto :goto_e

    .line 557
    .end local v1           #_arg0:I
    :sswitch_37
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3c

    move v1, v9

    .line 560
    .local v1, _arg0:Z
    :goto_f
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTaskManagerAllowed(Z)Z

    move-result v6

    .line 561
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    if-eqz v6, :cond_3b

    move v0, v9

    :cond_3b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_3c
    move v1, v0

    .line 559
    goto :goto_f

    .line 567
    :sswitch_38
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3e

    move v1, v9

    .line 570
    .restart local v1       #_arg0:Z
    :goto_10
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPowerOffAllowed(Z)Z

    move-result v6

    .line 571
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    if-eqz v6, :cond_3d

    move v0, v9

    :cond_3d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_3e
    move v1, v0

    .line 569
    goto :goto_10

    .line 577
    :sswitch_39
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3f

    move v1, v9

    .line 580
    .restart local v1       #_arg0:Z
    :goto_11
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getOutgoingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v6

    .line 581
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Ljava/lang/String;
    :cond_3f
    move v1, v0

    .line 579
    goto :goto_11

    .line 587
    :sswitch_3a
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_40

    move v1, v9

    .line 590
    .restart local v1       #_arg0:Z
    :goto_12
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getIncomingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v6

    .line 591
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Ljava/lang/String;
    :cond_40
    move v1, v0

    .line 589
    goto :goto_12

    .line 597
    :sswitch_3b
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingSmsAllowed()Z

    move-result v6

    .line 599
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    if-eqz v6, :cond_41

    move v0, v9

    :cond_41
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 605
    .end local v6           #_result:Z
    :sswitch_3c
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingSmsAllowed()Z

    move-result v6

    .line 607
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    if-eqz v6, :cond_42

    move v0, v9

    :cond_42
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 613
    .end local v6           #_result:Z
    :sswitch_3d
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v6

    .line 617
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    if-eqz v6, :cond_43

    move v0, v9

    :cond_43
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 623
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_3e
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_44

    move v1, v9

    .line 626
    .local v1, _arg0:Z
    :goto_13
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationNotificationMode(Z)I

    move-result v6

    .line 627
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:I
    :cond_44
    move v1, v0

    .line 625
    goto :goto_13

    .line 633
    :sswitch_3f
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isStatusBarNotificationAllowed(Ljava/lang/String;)Z

    move-result v6

    .line 637
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    if-eqz v6, :cond_45

    move v0, v9

    :cond_45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 643
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_40
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothLogEnabled()Z

    move-result v6

    .line 645
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    if-eqz v6, :cond_46

    move v0, v9

    :cond_46
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 651
    .end local v6           #_result:Z
    :sswitch_41
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBluetoothLog()Ljava/util/List;

    move-result-object v7

    .line 653
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 659
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_42
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 670
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_43
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 674
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_48

    move v2, v9

    .line 675
    .local v2, _arg1:Z
    :goto_14
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->isApplicationForceStopDisabled(Ljava/lang/String;Z)Z

    move-result v6

    .line 676
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    if-eqz v6, :cond_47

    move v0, v9

    :cond_47
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_48
    move v2, v0

    .line 674
    goto :goto_14

    .line 682
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_44
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingMmsAllowed()Z

    move-result v6

    .line 684
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    if-eqz v6, :cond_49

    move v0, v9

    :cond_49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 690
    .end local v6           #_result:Z
    :sswitch_45
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingMmsAllowed()Z

    move-result v6

    .line 692
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    if-eqz v6, :cond_4a

    move v0, v9

    :cond_4a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 698
    .end local v6           #_result:Z
    :sswitch_46
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 701
    .local v8, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 702
    .local v1, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->setBackupData(Ljava/util/Map;)Z

    move-result v6

    .line 703
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    if-eqz v6, :cond_4b

    move v0, v9

    :cond_4b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 709
    .end local v1           #_arg0:Ljava/util/Map;
    .end local v6           #_result:Z
    .end local v8           #cl:Ljava/lang/ClassLoader;
    :sswitch_47
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBackupData()Ljava/util/Map;

    move-result-object v6

    .line 711
    .local v6, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 717
    .end local v6           #_result:Ljava/util/Map;
    :sswitch_48
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4d

    move v1, v9

    .line 720
    .local v1, _arg0:Z
    :goto_15
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBackupAllowed(Z)Z

    move-result v6

    .line 721
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    if-eqz v6, :cond_4c

    move v0, v9

    :cond_4c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_4d
    move v1, v0

    .line 719
    goto :goto_15

    .line 727
    :sswitch_49
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDesktopConnectivityEnabled()Z

    move-result v6

    .line 729
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    if-eqz v6, :cond_4e

    move v0, v9

    :cond_4e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 40
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
