.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final encryptionParams:Landroid/content/pm/ContainerEncryptionParams;

.field flags:I

.field final installerPackageName:Ljava/lang/String;

.field final installerSourcePackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private final mPackageURI:Landroid/net/Uri;

.field private mRet:I

.field private mTempPackage:Ljava/io/File;

.field final manifestDigest:Landroid/content/pm/ManifestDigest;

.field final observer:Landroid/content/pm/IPackageInstallObserver;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationURI:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 1
    .parameter
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"
    .parameter "verificationURI"
    .parameter "manifestDigest"
    .parameter "encryptionParams"

    .prologue
    const/4 v0, 0x0

    .line 7200
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V

    .line 7201
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    .line 7202
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    .line 7203
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    .line 7204
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 7206
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    .line 7208
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationURI:Landroid/net/Uri;

    .line 7209
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->manifestDigest:Landroid/content/pm/ManifestDigest;

    .line 7210
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->encryptionParams:Landroid/content/pm/ContainerEncryptionParams;

    .line 7211
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 1
    .parameter
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"
    .parameter "installerSourcePackageName"
    .parameter "verificationURI"
    .parameter "manifestDigest"
    .parameter "encryptionParams"

    .prologue
    const/4 v0, 0x0

    .line 7217
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V

    .line 7218
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    .line 7219
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    .line 7220
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    .line 7221
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 7222
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    .line 7223
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationURI:Landroid/net/Uri;

    .line 7224
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->manifestDigest:Landroid/content/pm/ManifestDigest;

    .line 7225
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->encryptionParams:Landroid/content/pm/ContainerEncryptionParams;

    .line 7226
    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/pm/PackageManagerService$InstallParams;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7183
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    return-object v0
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I
    .locals 8
    .parameter "pkgLite"
    .parameter "flags"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 7232
    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 7233
    .local v2, packageName:Ljava/lang/String;
    iget v0, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 7234
    .local v0, installLocation:I
    and-int/lit8 v6, p2, 0x8

    if-eqz v6, :cond_0

    move v1, v4

    .line 7236
    .local v1, onSd:Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 7237
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 7238
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_5

    .line 7239
    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_8

    .line 7241
    iget-object v7, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 7242
    if-eqz v1, :cond_1

    .line 7243
    const-string v4, "PackageManager"

    const-string v5, "Cannot install update to system app on sdcard"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7244
    const/4 v4, -0x3

    monitor-exit v6

    .line 7277
    :goto_1
    return v4

    .line 7234
    .end local v1           #onSd:Z
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 7246
    .restart local v1       #onSd:Z
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_1
    monitor-exit v6

    goto :goto_1

    .line 7271
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 7248
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_2
    if-eqz v1, :cond_3

    .line 7250
    :try_start_1
    monitor-exit v6

    move v4, v5

    goto :goto_1

    .line 7253
    :cond_3
    if-ne v0, v4, :cond_4

    .line 7255
    monitor-exit v6

    goto :goto_1

    .line 7256
    :cond_4
    if-ne v0, v5, :cond_6

    .line 7271
    :cond_5
    monitor-exit v6

    .line 7274
    if-eqz v1, :cond_9

    move v4, v5

    .line 7275
    goto :goto_1

    .line 7260
    :cond_6
    #calls: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2000(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 7261
    monitor-exit v6

    move v4, v5

    goto :goto_1

    .line 7263
    :cond_7
    monitor-exit v6

    goto :goto_1

    .line 7268
    :cond_8
    const/4 v4, -0x4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7277
    :cond_9
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_1
.end method


# virtual methods
.method public getPackageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 7556
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 7557
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 7559
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    goto :goto_0
.end method

.method handleReturnCode()V
    .locals 3

    .prologue
    .line 7533
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 7534
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 7537
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 7538
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7539
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t delete temporary file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7543
    :cond_1
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 7547
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$2200(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 7548
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 7549
    return-void
.end method

.method public handleStartCopy()V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7287
    const/16 v30, 0x1

    .line 7288
    .local v30, ret:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    const/16 v21, 0x1

    .line 7289
    .local v21, onSd:Z
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    const/16 v20, 0x1

    .line 7290
    .local v20, onInt:Z
    :goto_1
    const/16 v25, 0x0

    .line 7292
    .local v25, pkgLite:Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 7294
    .local v15, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7295
    .local v24, packageFileTemp:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    const-wide/16 v7, 0x0

    invoke-interface {v3, v5, v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;IJ)Landroid/content/pm/PackageInfoLite;

    move-result-object v26

    .line 7298
    .local v26, pkgLiteTemp:Landroid/content/pm/PackageInfoLite;
    const-string v3, "PackageManager"

    const-string v5, "verifying app can be installed or not"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7299
    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v3

    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/ApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 7301
    const-string v3, "PackageManager"

    const-string v5, "This app installation is not allowed"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7302
    const/16 v30, -0x6e

    .line 7401
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    #calls: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->access$2200(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v12

    .line 7402
    .local v12, args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 7404
    const/4 v3, 0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_3

    .line 7409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    const/16 v28, -0x1

    .line 7411
    .local v28, requiredUid:I
    :goto_3
    const/4 v3, -0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled()Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 7412
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7414
    .local v4, verification:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getPackageUri()Landroid/net/Uri;

    move-result-object v3

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 7415
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x0

    const/16 v6, 0x200

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v27

    .line 7426
    .local v27, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2508(Lcom/android/server/pm/PackageManagerService;)I

    move-result v33

    .line 7428
    .local v33, verificationId:I
    const-string v3, "android.content.pm.extra.VERIFICATION_ID"

    move/from16 v0, v33

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7430
    const-string v3, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7433
    const-string v3, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationURI:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 7436
    const-string v3, "android.content.pm.extra.VERIFICATION_URI"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationURI:Landroid/net/Uri;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7440
    :cond_1
    new-instance v34, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-direct {v0, v1, v12}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 7443
    .local v34, verificationState:Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 7445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v34

    #calls: Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    invoke-static {v3, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v32

    .line 7452
    .local v32, sufficientVerifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v32, :cond_2

    .line 7453
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v11

    .line 7454
    .local v11, N:I
    if-nez v11, :cond_15

    .line 7455
    const-string v3, "PackageManager"

    const-string v5, "Additional verifiers required, but none installed."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7456
    const/16 v30, -0x16

    .line 7469
    .end local v11           #N:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    #calls: Lcom/android/server/pm/PackageManagerService;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    invoke-static {v3, v5, v0}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v29

    .line 7471
    .local v29, requiredVerifierComponent:Landroid/content/ComponentName;
    const/4 v3, 0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7478
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.PACKAGE_VERIFICATION_AGENT"

    new-instance v6, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v6, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 7495
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 7525
    .end local v4           #verification:Landroid/content/Intent;
    .end local v27           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v28           #requiredUid:I
    .end local v29           #requiredVerifierComponent:Landroid/content/ComponentName;
    .end local v32           #sufficientVerifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33           #verificationId:I
    .end local v34           #verificationState:Lcom/android/server/pm/PackageVerificationState;
    :cond_3
    :goto_4
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 7526
    return-void

    .line 7288
    .end local v12           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v15           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v20           #onInt:Z
    .end local v21           #onSd:Z
    .end local v24           #packageFileTemp:Ljava/io/File;
    .end local v25           #pkgLite:Landroid/content/pm/PackageInfoLite;
    .end local v26           #pkgLiteTemp:Landroid/content/pm/PackageInfoLite;
    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 7289
    .restart local v21       #onSd:Z
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 7307
    .restart local v15       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v20       #onInt:Z
    .restart local v24       #packageFileTemp:Ljava/io/File;
    .restart local v25       #pkgLite:Landroid/content/pm/PackageInfoLite;
    .restart local v26       #pkgLiteTemp:Landroid/content/pm/PackageInfoLite;
    :cond_6
    if-eqz v20, :cond_7

    if-eqz v21, :cond_7

    .line 7309
    const-string v3, "PackageManager"

    const-string v5, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7310
    const/16 v30, -0x13

    .line 7367
    :goto_5
    const/4 v3, 0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_0

    .line 7368
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v17, v0

    .line 7369
    .local v17, loc:I
    const/4 v3, -0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_d

    .line 7370
    const/16 v30, -0x13

    goto/16 :goto_2

    .line 7314
    .end local v17           #loc:I
    :cond_7
    const-string v3, "devicestoragemonitor"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    check-cast v13, Lcom/android/server/DeviceStorageMonitorService;

    .line 7316
    .local v13, dsm:Lcom/android/server/DeviceStorageMonitorService;
    if-nez v13, :cond_a

    .line 7317
    const-string v3, "PackageManager"

    const-string v5, "Couldn\'t get low memory threshold; no free limit imposed"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7318
    const-wide/16 v18, 0x0

    .line 7324
    .local v18, lowThreshold:J
    :goto_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.android.defcontainer"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 7328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->encryptionParams:Landroid/content/pm/ContainerEncryptionParams;

    if-nez v3, :cond_8

    const-string v3, "file"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 7329
    :cond_8
    const/16 v22, 0x0

    .line 7331
    .local v22, out:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    #calls: Lcom/android/server/pm/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    .line 7332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_b

    .line 7334
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    const/high16 v5, 0x3000

    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    .line 7341
    :goto_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->encryptionParams:Landroid/content/pm/ContainerEncryptionParams;

    move-object/from16 v0, v22

    invoke-interface {v3, v5, v6, v0}, Lcom/android/internal/app/IMediaContainerService;->copyResource(Landroid/net/Uri;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/ParcelFileDescriptor;)I

    move-result v30

    .line 7344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    move-object/from16 v23, v0

    .line 7346
    .local v23, packageFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x184

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v3, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 7356
    .end local v22           #out:Landroid/os/ParcelFileDescriptor;
    :goto_8
    if-eqz v23, :cond_9

    .line 7358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    move-wide/from16 v0, v18

    invoke-interface {v3, v5, v6, v0, v1}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;IJ)Landroid/content/pm/PackageInfoLite;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v25

    .line 7362
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto/16 :goto_5

    .line 7320
    .end local v18           #lowThreshold:J
    .end local v23           #packageFile:Ljava/io/File;
    :cond_a
    invoke-virtual {v13}, Lcom/android/server/DeviceStorageMonitorService;->getMemoryLowThreshold()J

    move-result-wide v18

    .restart local v18       #lowThreshold:J
    goto/16 :goto_6

    .line 7336
    .restart local v22       #out:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v14

    .line 7337
    .local v14, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create temporary file for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 7362
    .end local v14           #e:Ljava/io/FileNotFoundException;
    .end local v22           #out:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v3

    .line 7350
    .restart local v22       #out:Landroid/os/ParcelFileDescriptor;
    :cond_b
    const/16 v23, 0x0

    .restart local v23       #packageFile:Ljava/io/File;
    goto :goto_8

    .line 7353
    .end local v22           #out:Landroid/os/ParcelFileDescriptor;
    .end local v23           #packageFile:Ljava/io/File;
    :cond_c
    :try_start_4
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v23       #packageFile:Ljava/io/File;
    goto :goto_8

    .line 7371
    .end local v13           #dsm:Lcom/android/server/DeviceStorageMonitorService;
    .end local v18           #lowThreshold:J
    .end local v23           #packageFile:Ljava/io/File;
    .restart local v17       #loc:I
    :cond_d
    const/4 v3, -0x4

    move/from16 v0, v17

    if-ne v0, v3, :cond_e

    .line 7372
    const/16 v30, -0x1

    goto/16 :goto_2

    .line 7373
    :cond_e
    const/4 v3, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_f

    .line 7374
    const/16 v30, -0x4

    goto/16 :goto_2

    .line 7375
    :cond_f
    const/4 v3, -0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_10

    .line 7376
    const/16 v30, -0x2

    goto/16 :goto_2

    .line 7377
    :cond_10
    const/4 v3, -0x6

    move/from16 v0, v17

    if-ne v0, v3, :cond_11

    .line 7378
    const/16 v30, -0x3

    goto/16 :goto_2

    .line 7379
    :cond_11
    const/4 v3, -0x5

    move/from16 v0, v17

    if-ne v0, v3, :cond_12

    .line 7380
    const/16 v30, -0x14

    goto/16 :goto_2

    .line 7383
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I

    move-result v17

    .line 7384
    if-nez v21, :cond_0

    if-nez v20, :cond_0

    .line 7386
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_13

    .line 7388
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    .line 7389
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v3, v3, -0x11

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_2

    .line 7393
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    .line 7394
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v3, v3, -0x9

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_2

    .line 7409
    .end local v17           #loc:I
    .restart local v12       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v28

    goto/16 :goto_3

    .line 7458
    .restart local v4       #verification:Landroid/content/Intent;
    .restart local v11       #N:I
    .restart local v27       #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v28       #requiredUid:I
    .restart local v32       #sufficientVerifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v33       #verificationId:I
    .restart local v34       #verificationState:Lcom/android/server/pm/PackageVerificationState;
    :cond_15
    const/16 v16, 0x0

    .local v16, i:I
    :goto_9
    move/from16 v0, v16

    if-ge v0, v11, :cond_2

    .line 7459
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/ComponentName;

    .line 7461
    .local v35, verifierComponent:Landroid/content/ComponentName;
    new-instance v31, Landroid/content/Intent;

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7462
    .local v31, sufficientIntent:Landroid/content/Intent;
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7458
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 7520
    .end local v4           #verification:Landroid/content/Intent;
    .end local v11           #N:I
    .end local v16           #i:I
    .end local v27           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31           #sufficientIntent:Landroid/content/Intent;
    .end local v32           #sufficientVerifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33           #verificationId:I
    .end local v34           #verificationState:Lcom/android/server/pm/PackageVerificationState;
    .end local v35           #verifierComponent:Landroid/content/ComponentName;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v12, v3, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v30

    goto/16 :goto_4
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    .line 7552
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
