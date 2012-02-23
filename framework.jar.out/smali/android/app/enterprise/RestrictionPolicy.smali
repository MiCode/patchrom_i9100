.class public Landroid/app/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# static fields
.field public static final ALLOW_SETTINGS_CHANGES:Ljava/lang/String; = "edm.intent.action.allow.settings"

.field public static final EXTERNAL_STORAGE_PATH_SD:Ljava/lang/String; = "/mnt/sdcard/external_sd"

.field public static final MTP_DISABLED:Ljava/lang/String; = "edm.intent.action.disable.mtp"

.field private static TAG:Ljava/lang/String;

.field public static final settingsExceptions:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mService:Landroid/app/enterprise/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-string v0, "RestrictionPolicy"

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x5

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

    const-string v2, "com.android.settings.ChooseLockPassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.settings.DeviceAdminAdd"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/app/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 39
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    .line 41
    return-void
.end method


# virtual methods
.method public allowBluetooth(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 237
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->allowBluetooth(Z)Z

    move-result v0

    return v0
.end method

.method public allowFactoryReset(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 969
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 971
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowFactoryReset(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 976
    :goto_0
    return v1

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowSettingsChanges(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 669
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 671
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowSettingsChanges(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 676
    :goto_0
    return v1

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowWiFi(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 222
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isBackgroundDataEnabled()Z
    .locals 3

    .prologue
    .line 907
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 909
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isBackgroundDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 914
    :goto_0
    return v1

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBackupAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 586
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 588
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isBackupAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 593
    :goto_0
    return v1

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBluetoothEnabled(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public isBluetoothTetheringEnabled()Z
    .locals 3

    .prologue
    .line 351
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 353
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isBluetoothTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 358
    :goto_0
    return v1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCameraEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 151
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isCameraEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCellularDataAllowed()Z
    .locals 3

    .prologue
    .line 625
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 627
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isCellularDataAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 632
    :goto_0
    return v1

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isClipboardAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 745
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 747
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isClipboardAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 752
    :goto_0
    return v1

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isFactoryResetAllowed()Z
    .locals 3

    .prologue
    .line 989
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 991
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isFactoryResetAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 996
    :goto_0
    return v1

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 996
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isHomeKeyEnabled()Z
    .locals 3

    .prologue
    .line 1027
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1029
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isHomeKeyEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1034
    :goto_0
    return v1

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1034
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 200
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 202
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 207
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMockLocationEnabled()Z
    .locals 3

    .prologue
    .line 545
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 547
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isMockLocationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 552
    :goto_0
    return v1

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNFCEnabled()Z
    .locals 3

    .prologue
    .line 945
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 947
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isNFCEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 952
    :goto_0
    return v1

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNonMarketAppAllowed()Z
    .locals 3

    .prologue
    .line 867
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 869
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isNonMarketAppAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 874
    :goto_0
    return v1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 390
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 392
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isScreenCaptureEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    :goto_0
    return v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSdCardEnabled()Z
    .locals 3

    .prologue
    .line 686
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 688
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isSdCardEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 693
    :goto_0
    return v1

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 704
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 706
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 711
    :goto_0
    return v1

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTetheringEnabled()Z
    .locals 3

    .prologue
    .line 465
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 467
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 472
    :goto_0
    return v1

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbDebuggingEnabled()Z
    .locals 3

    .prologue
    .line 428
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 430
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbDebuggingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 435
    :goto_0
    return v1

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbKiesAvailable(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 785
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 787
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbKiesAvailable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 792
    :goto_0
    return v1

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbMassStorageEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 506
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 508
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbMassStorageEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 513
    :goto_0
    return v1

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbMediaPlayerAvailable(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 829
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 831
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 836
    :goto_0
    return v1

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbTetheringEnabled()Z
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 275
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 280
    :goto_0
    return v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWiFiEnabled(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isWifiTetheringEnabled()Z
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isWifiTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 321
    :goto_0
    return v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowNonMarketApps(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 851
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 853
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setAllowNonMarketApps(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 858
    :goto_0
    return v1

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackgroundData(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 890
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 892
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBackgroundData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 897
    :goto_0
    return v1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackup(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 567
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 569
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBackup(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 574
    :goto_0
    return v1

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBluetoothState(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->setBluetoothState(Z)Z

    move-result v0

    return v0
.end method

.method public setBluetoothTethering(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 335
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 337
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBluetoothTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 342
    :goto_0
    return v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCameraState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 130
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setCamera(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCellularData(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 608
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 610
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setCellularData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 615
    :goto_0
    return v1

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setClipboardEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 726
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 728
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setClipboardEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 733
    :goto_0
    return v1

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnableNFC(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 929
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 931
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setEnableNFC(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 936
    :goto_0
    return v1

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeKeyState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1011
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1013
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setHomeKeyState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1018
    :goto_0
    return v1

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1018
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMicrophoneState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 179
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 181
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setMicrophoneState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    :goto_0
    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMockLocation(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 528
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 530
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setMockLocation(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 535
    :goto_0
    return v1

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScreenCapture(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 372
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 374
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setScreenCapture(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 379
    :goto_0
    return v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSdCardState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 647
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 649
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setSdCardState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 654
    :goto_0
    return v1

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTethering(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 449
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 451
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 456
    :goto_0
    return v1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbDebuggingEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 412
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 414
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbDebuggingEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 419
    :goto_0
    return v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbKiesAvailability(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 767
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 769
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbKiesAvailability(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 774
    :goto_0
    return v1

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbMassStorage(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 487
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 489
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbMassStorage(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 494
    :goto_0
    return v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbMediaPlayerAvailability(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 807
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 809
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbMediaPlayerAvailability(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 814
    :goto_0
    return v1

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 814
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbTethering(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 257
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 259
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 264
    :goto_0
    return v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWiFiState(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifi(Z)Z

    move-result v0

    return v0
.end method

.method public setWifiTethering(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 298
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 300
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setWifiTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 305
    :goto_0
    return v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
