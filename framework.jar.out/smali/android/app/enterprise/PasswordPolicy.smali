.class public Landroid/app/enterprise/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field public static final PWD_CHANGE_ENFORCED:I = 0x1

.field public static final PWD_CHANGE_ENFORCED_CANCELLED:I = 0x2

.field public static final PWD_CHANGE_ENFORCED_NEW_PASSWORD:I = 0x3

.field public static final PWD_CHANGE_ENFORCE_CANCELLING:I = -0x1

.field public static final PWD_CHANGE_NOT_ENFORCED:I = 0x0

.field public static final PWD_CHANGE_TIMEOUT:Ljava/lang/String; = "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

.field private static TAG:Ljava/lang/String;

.field public static final enforcePwdExceptions:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mService:Landroid/app/enterprise/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-string v0, "PasswordPolicy"

    sput-object v0, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    .line 28
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.SubSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.ChooseLockPassword"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.gsf.update.SystemUpdateInstallDialog"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.android.gsf.update.SystemUpdateDownloadDialog"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.phone.EmergencyDialer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.phone.OutgoingCallBroadcaster"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.phone.EmergencyOutgoingCallBroadcaster"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.phone.InCallScreen"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.internal.policy.impl.LockScreen"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.internal.policy.impl.PatternUnlockScreen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.internal.policy.impl.PasswordUnlockScreen"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/app/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 44
    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    .line 46
    return-void
.end method


# virtual methods
.method public addRequiredPasswordPattern(Ljava/lang/String;)Z
    .locals 3
    .parameter "regex"

    .prologue
    .line 211
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->addRequiredPasswordPattern(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 218
    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAllRestrictions()Z
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 236
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->deleteAllRestrictions()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 241
    :goto_0
    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enforcePwdChange()Z
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 345
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->enforcePwdChange()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 350
    :goto_0
    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForDeviceDisable()I
    .locals 3

    .prologue
    .line 445
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 447
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->getMaximumFailedPasswordsForDisable()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 452
    :goto_0
    return v1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getMaximumFailedPasswordsForDeviceDisable!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .parameter "admin"

    .prologue
    .line 146
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordChangeTimeout()I
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->getPasswordChangeTimeout()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 316
    :goto_0
    return v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordLockDelay()I
    .locals 3

    .prologue
    .line 408
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 410
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->getPasswordLockDelay()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 415
    :goto_0
    return v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getPasswordLockDelay!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 253
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 255
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChangeRequested()I
    .locals 3

    .prologue
    .line 323
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 325
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->isChangeRequested()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 330
    :goto_0
    return v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPasswordPatternMatched(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 269
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 276
    :goto_0
    return v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reboot(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setMaximumFailedPasswordsForDeviceDisable(I)Z
    .locals 3
    .parameter "num"

    .prologue
    .line 429
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 431
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setMaximumFailedPasswordsForDisable(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 436
    :goto_0
    return v1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setMaximumFailedPasswordsForDeviceDisable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 125
    return-void
.end method

.method public setPasswordChangeTimeout(I)Z
    .locals 3
    .parameter "timeout"

    .prologue
    .line 292
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 294
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setPasswordChangeTimeout(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    :goto_0
    return v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 64
    return-void
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 95
    return-void
.end method

.method public setPasswordLockDelay(I)Z
    .locals 3
    .parameter "time"

    .prologue
    .line 387
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 389
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setPasswordLockDelay(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 394
    :goto_0
    return v1

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setPasswordLockDelay"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPwdChangeRequested(I)Z
    .locals 3
    .parameter "flag"

    .prologue
    .line 361
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 363
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setPwdChangeRequested(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 368
    :goto_0
    return v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequiredPasswordPattern(Ljava/lang/String;)Z
    .locals 3
    .parameter "regex"

    .prologue
    .line 180
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setRequiredPasswordPattern(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    :goto_0
    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
