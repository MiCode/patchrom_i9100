.class public Landroid/sec/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static final settingsExceptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "RestrictionPolicy"

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 53
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.ActivityPicker"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.AppWidgetPickActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.settings.ChooseLockAdditionalPin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.settings.ChooseLockFaceWarning"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.settings.ChooseLockGeneric"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.settings.ChooseLockMotion"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings.ChooseLockPassword"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings.ChooseLockPattern"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.settings.ConfirmLockPassword"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.settings.ConfirmLockPattern"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.settings.DeviceAdminAdd"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.settings.bluetooth.DevicePickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.settings.wfd.WfdPickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.android.settings.bluetooth.BluetoothPairingDialog"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.android.settings.bluetooth.BluetoothEnableActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    aput-object v2, v0, v1

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBackupAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBackupAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :goto_0
    return v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBackupAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCameraEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isCameraEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 119
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isCameraEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isClipboardAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 146
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isClipboardAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isClipboardAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isGoogleCrashReportAllowed()Z
    .locals 3

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isGoogleCrashReportAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isGoogleCrashReportAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 164
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 168
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isMicrophoneEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNFCEnabled()Z
    .locals 3

    .prologue
    .line 129
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNFCEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isNFCEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNonMarketAppAllowed()Z
    .locals 3

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNonMarketAppAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isNonMarketAppAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 223
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isPowerOffAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 227
    :goto_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isPowerOffAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 178
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isScreenCaptureEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 182
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isScreenCaptureEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSettingsChangesAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isSettingsChangesAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isStatusBarExpansionAllowed()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/sec/enterprise/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isStatusBarExpansionAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isStatusBarExpansionAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 255
    :goto_0
    return v1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isStatusBarExpansionAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v1, 0x1

    goto :goto_0
.end method
