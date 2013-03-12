.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_checkPassword:I = 0x1b

.field static final TRANSACTION_getActiveAdmins:I = 0x44

.field static final TRANSACTION_getAllowBluetoothMode:I = 0x16

.field static final TRANSACTION_getAllowBrowser:I = 0x12

.field static final TRANSACTION_getAllowCamera:I = 0x3f

.field static final TRANSACTION_getAllowDesktopSync:I = 0x18

.field static final TRANSACTION_getAllowInternetSharing:I = 0x14

.field static final TRANSACTION_getAllowIrDA:I = 0x1a

.field static final TRANSACTION_getAllowPOPIMAPEmail:I = 0x10

.field static final TRANSACTION_getAllowStorageCard:I = 0x8

.field static final TRANSACTION_getAllowTextMessaging:I = 0xe

.field static final TRANSACTION_getAllowWifi:I = 0xc

.field static final TRANSACTION_getCameraDisabled:I = 0x41

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x30

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x39

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x32

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x35

.field static final TRANSACTION_getMinPasswordComplexChars:I = 0x57

.field static final TRANSACTION_getPassword:I = 0x51

.field static final TRANSACTION_getPasswordExpiration:I = 0x2e

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x2d

.field static final TRANSACTION_getPasswordExpires:I = 0x53

.field static final TRANSACTION_getPasswordHistory:I = 0x55

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x2b

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0x23

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x21

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x29

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0x25

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0x27

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x1f

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPasswordRecoverable:I = 0x6

.field static final TRANSACTION_getRemoveWarning:I = 0x46

.field static final TRANSACTION_getRequireStorageCardEncryption:I = 0x1d

.field static final TRANSACTION_getSimplePasswordEnabled:I = 0xa

.field static final TRANSACTION_getStorageEncryption:I = 0x3b

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x3c

.field static final TRANSACTION_hasGrantedPolicy:I = 0x48

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x2f

.field static final TRANSACTION_isAdminActive:I = 0x43

.field static final TRANSACTION_lockNow:I = 0x36

.field static final TRANSACTION_notifyChanges:I = 0x4e

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x45

.field static final TRANSACTION_reboot:I = 0x50

.field static final TRANSACTION_recoverPassword:I = 0x4a

.field static final TRANSACTION_removeActiveAdmin:I = 0x47

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x4c

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x4d

.field static final TRANSACTION_resetPassword:I = 0x33

.field static final TRANSACTION_satisfyFIPSPassword:I = 0x3d

.field static final TRANSACTION_setActiveAdmin:I = 0x42

.field static final TRANSACTION_setActivePasswordState:I = 0x49

.field static final TRANSACTION_setAdminPermissions:I = 0x4f

.field static final TRANSACTION_setAllowBluetoothMode:I = 0x15

.field static final TRANSACTION_setAllowBrowser:I = 0x11

.field static final TRANSACTION_setAllowCamera:I = 0x3e

.field static final TRANSACTION_setAllowDesktopSync:I = 0x17

.field static final TRANSACTION_setAllowInternetSharing:I = 0x13

.field static final TRANSACTION_setAllowIrDA:I = 0x19

.field static final TRANSACTION_setAllowPOPIMAPEmail:I = 0xf

.field static final TRANSACTION_setAllowStorageCard:I = 0x7

.field static final TRANSACTION_setAllowTextMessaging:I = 0xd

.field static final TRANSACTION_setAllowWifi:I = 0xb

.field static final TRANSACTION_setCameraDisabled:I = 0x40

.field static final TRANSACTION_setGlobalProxy:I = 0x38

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x31

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x34

.field static final TRANSACTION_setMinPasswordComplexChars:I = 0x56

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x2c

.field static final TRANSACTION_setPasswordExpires:I = 0x52

.field static final TRANSACTION_setPasswordHistory:I = 0x54

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x2a

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x22

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x20

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0x28

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0x24

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0x26

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x1e

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPasswordRecoverable:I = 0x5

.field static final TRANSACTION_setRecoveryPasswordState:I = 0x4b

.field static final TRANSACTION_setRequireStorageCardEncryption:I = 0x1c

.field static final TRANSACTION_setSimplePasswordEnabled:I = 0x9

.field static final TRANSACTION_setStorageEncryption:I = 0x3a

.field static final TRANSACTION_wipeData:I = 0x37


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 1327
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 60
    .local v2, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 61
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 57
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    .line 67
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_2
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 75
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v12

    .line 76
    .local v12, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_2

    .line 82
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 91
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 92
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v1, 0x1

    goto :goto_0

    .line 88
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .line 98
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 106
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v12

    .line 107
    .restart local v12       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 104
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .line 113
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_5
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 122
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    .line 123
    .local v3, _arg1:Z
    :goto_6
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 119
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_5

    .line 122
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 129
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_6
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 132
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 137
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v12

    .line 138
    .local v12, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v12, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 135
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .line 139
    .restart local v12       #_result:Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 144
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_7
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 147
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 153
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v3, 0x1

    .line 154
    .restart local v3       #_arg1:Z
    :goto_a
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 150
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_9

    .line 153
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 160
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_8
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 163
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 168
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v12

    .line 169
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v12, :cond_b

    const/4 v1, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 166
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_a
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    .line 170
    .restart local v12       #_result:Z
    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    .line 175
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_9
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 178
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 184
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v3, 0x1

    .line 185
    .restart local v3       #_arg1:Z
    :goto_e
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSimplePasswordEnabled(Landroid/content/ComponentName;Z)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 181
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_c
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_d

    .line 184
    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    .line 191
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_a
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 194
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 199
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v12

    .line 200
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v12, :cond_f

    const/4 v1, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 197
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_e
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    .line 201
    .restart local v12       #_result:Z
    :cond_f
    const/4 v1, 0x0

    goto :goto_10

    .line 206
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_b
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 209
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 215
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v3, 0x1

    .line 216
    .restart local v3       #_arg1:Z
    :goto_12
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 212
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_10
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .line 215
    :cond_11
    const/4 v3, 0x0

    goto :goto_12

    .line 222
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_c
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 225
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 230
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_13
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v12

    .line 231
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v12, :cond_13

    const/4 v1, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 228
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_12
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_13

    .line 232
    .restart local v12       #_result:Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_14

    .line 237
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_d
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 240
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 246
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v3, 0x1

    .line 247
    .restart local v3       #_arg1:Z
    :goto_16
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 243
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_14
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_15

    .line 246
    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    .line 253
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_e
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 256
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 261
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_17
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v12

    .line 262
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v12, :cond_17

    const/4 v1, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 259
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_16
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_17

    .line 263
    .restart local v12       #_result:Z
    :cond_17
    const/4 v1, 0x0

    goto :goto_18

    .line 268
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_f
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    .line 271
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 277
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v3, 0x1

    .line 278
    .restart local v3       #_arg1:Z
    :goto_1a
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 274
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_18
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_19

    .line 277
    :cond_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 284
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_10
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 287
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 292
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_1b
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v12

    .line 293
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v12, :cond_1b

    const/4 v1, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 290
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_1a
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_1b

    .line 294
    .restart local v12       #_result:Z
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 299
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_11
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 302
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 308
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v3, 0x1

    .line 309
    .restart local v3       #_arg1:Z
    :goto_1e
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 305
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_1c
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_1d

    .line 308
    :cond_1d
    const/4 v3, 0x0

    goto :goto_1e

    .line 315
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_12
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 318
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 323
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v12

    .line 324
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v12, :cond_1f

    const/4 v1, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 321
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_1e
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_1f

    .line 325
    .restart local v12       #_result:Z
    :cond_1f
    const/4 v1, 0x0

    goto :goto_20

    .line 330
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_13
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    .line 333
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 339
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    const/4 v3, 0x1

    .line 340
    .restart local v3       #_arg1:Z
    :goto_22
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 336
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_20
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_21

    .line 339
    :cond_21
    const/4 v3, 0x0

    goto :goto_22

    .line 346
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_14
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    .line 349
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 354
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_23
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v12

    .line 355
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v12, :cond_23

    const/4 v1, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 352
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_22
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_23

    .line 356
    .restart local v12       #_result:Z
    :cond_23
    const/4 v1, 0x0

    goto :goto_24

    .line 361
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_15
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    .line 364
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 370
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 371
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 367
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_24
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_25

    .line 377
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_16
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    .line 380
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 385
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_26
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v12

    .line 386
    .local v12, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 383
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_25
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_26

    .line 392
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_17
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    .line 395
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 401
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    const/4 v3, 0x1

    .line 402
    .local v3, _arg1:Z
    :goto_28
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 398
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_26
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_27

    .line 401
    :cond_27
    const/4 v3, 0x0

    goto :goto_28

    .line 408
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_18
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    .line 411
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 416
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_29
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v12

    .line 417
    .local v12, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v12, :cond_29

    const/4 v1, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 414
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_28
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_29

    .line 418
    .restart local v12       #_result:Z
    :cond_29
    const/4 v1, 0x0

    goto :goto_2a

    .line 423
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_19
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 426
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 432
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v3, 0x1

    .line 433
    .restart local v3       #_arg1:Z
    :goto_2c
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowIrDA(Landroid/content/ComponentName;Z)V

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 429
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_2a
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_2b

    .line 432
    :cond_2b
    const/4 v3, 0x0

    goto :goto_2c

    .line 439
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_1a
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    .line 442
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 447
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_2d
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowIrDA(Landroid/content/ComponentName;)Z

    move-result v12

    .line 448
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    if-eqz v12, :cond_2d

    const/4 v1, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 445
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_2c
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_2d

    .line 449
    .restart local v12       #_result:Z
    :cond_2d
    const/4 v1, 0x0

    goto :goto_2e

    .line 454
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_1b
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    .line 457
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 463
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkPassword(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v12

    .line 465
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    if-eqz v12, :cond_2f

    const/4 v1, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 460
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v12           #_result:Z
    :cond_2e
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_2f

    .line 466
    .restart local v3       #_arg1:Ljava/lang/String;
    .restart local v12       #_result:Z
    :cond_2f
    const/4 v1, 0x0

    goto :goto_30

    .line 471
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v12           #_result:Z
    :sswitch_1c
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    .line 474
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 480
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    const/4 v3, 0x1

    .line 481
    .local v3, _arg1:Z
    :goto_32
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 477
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_30
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_31

    .line 480
    :cond_31
    const/4 v3, 0x0

    goto :goto_32

    .line 487
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_1d
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    .line 490
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 495
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_33
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v12

    .line 496
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v12, :cond_33

    const/4 v1, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 493
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_32
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_33

    .line 497
    .restart local v12       #_result:Z
    :cond_33
    const/4 v1, 0x0

    goto :goto_34

    .line 502
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_1e
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_34

    .line 505
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 511
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 512
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 508
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_34
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_35

    .line 518
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_1f
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35

    .line 521
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 526
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_36
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v12

    .line 527
    .local v12, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 524
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_35
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_36

    .line 533
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_20
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_36

    .line 536
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 542
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 543
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 539
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_36
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_37

    .line 549
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_21
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_37

    .line 552
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 557
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_38
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v12

    .line 558
    .restart local v12       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 555
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_37
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_38

    .line 564
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_22
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_38

    .line 567
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 573
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 574
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 570
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_38
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_39

    .line 580
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_23
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_39

    .line 583
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 588
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_3a
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v12

    .line 589
    .restart local v12       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 586
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_39
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_3a

    .line 595
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_24
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3a

    .line 598
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 604
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 605
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 601
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_3a
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_3b

    .line 611
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_25
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3b

    .line 614
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 619
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_3c
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v12

    .line 620
    .restart local v12       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 617
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_3b
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_3c

    .line 626
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_26
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 629
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 635
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 636
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 632
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_3c
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_3d

    .line 642
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_27
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3d

    .line 645
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 650
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_3e
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v12

    .line 651
    .restart local v12       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 648
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_3d
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_3e

    .line 657
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_28
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 660
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 666
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 667
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 663
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_3e
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_3f

    .line 673
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_29
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f

    .line 676
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 681
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_40
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v12

    .line 682
    .restart local v12       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 679
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_3f
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_40

    .line 688
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_2a
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_40

    .line 691
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 697
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 698
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 694
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_40
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_41

    .line 704
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_2b
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    .line 707
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 712
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_42
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v12

    .line 713
    .restart local v12       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 710
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_41
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_42

    .line 719
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_2c
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_42

    .line 722
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 728
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 729
    .local v10, _arg1:J
    invoke-virtual {p0, v2, v10, v11}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 725
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v10           #_arg1:J
    :cond_42
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_43

    .line 735
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_2d
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_43

    .line 738
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 743
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_44
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v12

    .line 744
    .local v12, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 746
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 741
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:J
    :cond_43
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_44

    .line 750
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_2e
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_44

    .line 753
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 758
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_45
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v12

    .line 759
    .restart local v12       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 761
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 756
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:J
    :cond_44
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_45

    .line 765
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_2f
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v12

    .line 767
    .local v12, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    if-eqz v12, :cond_45

    const/4 v1, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 768
    :cond_45
    const/4 v1, 0x0

    goto :goto_46

    .line 773
    .end local v12           #_result:Z
    :sswitch_30
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts()I

    move-result v12

    .line 775
    .local v12, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 781
    .end local v12           #_result:I
    :sswitch_31
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_46

    .line 784
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 790
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 791
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 787
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_46
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_47

    .line 797
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_32
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_47

    .line 800
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 805
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_48
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v12

    .line 806
    .restart local v12       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 803
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_47
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_48

    .line 812
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_33
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 817
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v12

    .line 818
    .local v12, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    if-eqz v12, :cond_48

    const/4 v1, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 819
    :cond_48
    const/4 v1, 0x0

    goto :goto_49

    .line 824
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v12           #_result:Z
    :sswitch_34
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_49

    .line 827
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 833
    .local v2, _arg0:Landroid/content/ComponentName;
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 834
    .restart local v10       #_arg1:J
    invoke-virtual {p0, v2, v10, v11}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 830
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v10           #_arg1:J
    :cond_49
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_4a

    .line 840
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_35
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4a

    .line 843
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 848
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_4b
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v12

    .line 849
    .local v12, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 851
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 846
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:J
    :cond_4a
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_4b

    .line 855
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_36
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 862
    :sswitch_37
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 865
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 871
    .end local v2           #_arg0:I
    :sswitch_38
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4b

    .line 874
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 880
    .local v2, _arg0:Landroid/content/ComponentName;
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 882
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 883
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 884
    .local v12, _result:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    if-eqz v12, :cond_4c

    .line 886
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 892
    :goto_4d
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 877
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v12           #_result:Landroid/content/ComponentName;
    :cond_4b
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_4c

    .line 890
    .restart local v3       #_arg1:Ljava/lang/String;
    .restart local v4       #_arg2:Ljava/lang/String;
    .restart local v12       #_result:Landroid/content/ComponentName;
    :cond_4c
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4d

    .line 896
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v12           #_result:Landroid/content/ComponentName;
    :sswitch_39
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v12

    .line 898
    .restart local v12       #_result:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    if-eqz v12, :cond_4d

    .line 900
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 906
    :goto_4e
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 904
    :cond_4d
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e

    .line 910
    .end local v12           #_result:Landroid/content/ComponentName;
    :sswitch_3a
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4e

    .line 913
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 919
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v3, 0x1

    .line 920
    .local v3, _arg1:Z
    :goto_50
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v12

    .line 921
    .local v12, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 916
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    .end local v12           #_result:I
    :cond_4e
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_4f

    .line 919
    :cond_4f
    const/4 v3, 0x0

    goto :goto_50

    .line 927
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_3b
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_50

    .line 930
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 935
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_51
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v12

    .line 936
    .local v12, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    if-eqz v12, :cond_51

    const/4 v1, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 933
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_50
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_51

    .line 937
    .restart local v12       #_result:Z
    :cond_51
    const/4 v1, 0x0

    goto :goto_52

    .line 942
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_3c
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus()I

    move-result v12

    .line 944
    .local v12, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 950
    .end local v12           #_result:I
    :sswitch_3d
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->satisfyFIPSPassword()Z

    move-result v12

    .line 952
    .local v12, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    if-eqz v12, :cond_52

    const/4 v1, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 953
    :cond_52
    const/4 v1, 0x0

    goto :goto_53

    .line 958
    .end local v12           #_result:Z
    :sswitch_3e
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_53

    .line 961
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 967
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_54

    const/4 v3, 0x1

    .line 968
    .restart local v3       #_arg1:Z
    :goto_55
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 969
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 964
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_53
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_54

    .line 967
    :cond_54
    const/4 v3, 0x0

    goto :goto_55

    .line 974
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_3f
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_55

    .line 977
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 982
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_56
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v12

    .line 983
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    if-eqz v12, :cond_56

    const/4 v1, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 980
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_55
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_56

    .line 984
    .restart local v12       #_result:Z
    :cond_56
    const/4 v1, 0x0

    goto :goto_57

    .line 989
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_40
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_57

    .line 992
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 998
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_58

    const/4 v3, 0x1

    .line 999
    .restart local v3       #_arg1:Z
    :goto_59
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 995
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_57
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_58

    .line 998
    :cond_58
    const/4 v3, 0x0

    goto :goto_59

    .line 1005
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_41
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_59

    .line 1008
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1013
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_5a
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v12

    .line 1014
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    if-eqz v12, :cond_5a

    const/4 v1, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1011
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_59
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_5a

    .line 1015
    .restart local v12       #_result:Z
    :cond_5a
    const/4 v1, 0x0

    goto :goto_5b

    .line 1020
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_42
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5b

    .line 1023
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1029
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v3, 0x1

    .line 1030
    .restart local v3       #_arg1:Z
    :goto_5d
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 1031
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1026
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_5b
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_5c

    .line 1029
    :cond_5c
    const/4 v3, 0x0

    goto :goto_5d

    .line 1036
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_43
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5d

    .line 1039
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1044
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_5e
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v12

    .line 1045
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    if-eqz v12, :cond_5e

    const/4 v1, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1042
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :cond_5d
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_5e

    .line 1046
    .restart local v12       #_result:Z
    :cond_5e
    const/4 v1, 0x0

    goto :goto_5f

    .line 1051
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Z
    :sswitch_44
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v14

    .line 1053
    .local v14, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1055
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1059
    .end local v14           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_45
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1062
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v12

    .line 1063
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    if-eqz v12, :cond_5f

    const/4 v1, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1064
    :cond_5f
    const/4 v1, 0x0

    goto :goto_60

    .line 1069
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v12           #_result:Z
    :sswitch_46
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_60

    .line 1072
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1078
    .local v2, _arg0:Landroid/content/ComponentName;
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_61

    .line 1079
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 1084
    .local v3, _arg1:Landroid/os/RemoteCallback;
    :goto_62
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1075
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Landroid/os/RemoteCallback;
    :cond_60
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_61

    .line 1082
    :cond_61
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_62

    .line 1090
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_47
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_62

    .line 1093
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1098
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_63
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1096
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :cond_62
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_63

    .line 1104
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_48
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_63

    .line 1107
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1113
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1114
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v12

    .line 1115
    .restart local v12       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    if-eqz v12, :cond_64

    const/4 v1, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1110
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    .end local v12           #_result:Z
    :cond_63
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_64

    .line 1116
    .restart local v3       #_arg1:I
    .restart local v12       #_result:Z
    :cond_64
    const/4 v1, 0x0

    goto :goto_65

    .line 1121
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    .end local v12           #_result:Z
    :sswitch_49
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1125
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1127
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1129
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1131
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1133
    .local v6, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1135
    .local v7, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1137
    .local v8, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg7:I
    move-object v1, p0

    .line 1138
    invoke-virtual/range {v1 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIII)V

    .line 1139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1144
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v7           #_arg5:I
    .end local v8           #_arg6:I
    .end local v9           #_arg7:I
    :sswitch_4a
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->recoverPassword()V

    .line 1146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1151
    :sswitch_4b
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_65

    .line 1154
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1160
    .local v2, _arg0:Landroid/content/ComponentName;
    :goto_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_66

    const/4 v3, 0x1

    .line 1161
    .local v3, _arg1:Z
    :goto_67
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    .line 1162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1157
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_65
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_66

    .line 1160
    :cond_66
    const/4 v3, 0x0

    goto :goto_67

    .line 1167
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_4c
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt()V

    .line 1169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1174
    :sswitch_4d
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt()V

    .line 1176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1181
    :sswitch_4e
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_67

    .line 1184
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1190
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_68

    const/4 v3, 0x1

    .line 1191
    .restart local v3       #_arg1:Z
    :goto_69
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyChanges(Landroid/content/ComponentName;Z)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1187
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:Z
    :cond_67
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_68

    .line 1190
    :cond_68
    const/4 v3, 0x0

    goto :goto_69

    .line 1197
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_4f
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_69

    .line 1200
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1205
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_6a
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAdminPermissions(Landroid/content/ComponentName;)V

    .line 1206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1203
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :cond_69
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_6a

    .line 1211
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_50
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1214
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Ljava/lang/String;)V

    .line 1215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1220
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_51
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6a

    .line 1223
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1228
    .local v2, _arg0:Landroid/content/ComponentName;
    :goto_6b
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v12

    .line 1229
    .local v12, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1231
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1226
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:Ljava/lang/String;
    :cond_6a
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_6b

    .line 1235
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_52
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6b

    .line 1238
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1244
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1245
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1241
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_6b
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_6c

    .line 1251
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_53
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6c

    .line 1254
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1259
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_6d
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v12

    .line 1260
    .local v12, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1257
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_6c
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_6d

    .line 1266
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_54
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6d

    .line 1269
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1275
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1276
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 1277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1272
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_6d
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_6e

    .line 1282
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_55
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6e

    .line 1285
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1290
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_6f
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v12

    .line 1291
    .restart local v12       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1288
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_6e
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_6f

    .line 1297
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_56
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6f

    .line 1300
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1306
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1307
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 1308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1303
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_arg1:I
    :cond_6f
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_70

    .line 1313
    .end local v2           #_arg0:Landroid/content/ComponentName;
    :sswitch_57
    const-string v1, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_70

    .line 1316
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1321
    .restart local v2       #_arg0:Landroid/content/ComponentName;
    :goto_71
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v12

    .line 1322
    .restart local v12       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1319
    .end local v2           #_arg0:Landroid/content/ComponentName;
    .end local v12           #_result:I
    :cond_70
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/ComponentName;
    goto :goto_71

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
