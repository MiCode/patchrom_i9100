.class Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SdInstallArgs"
.end annotation


# static fields
.field static final RES_FILE_NAME:Ljava/lang/String; = "pkg.apk"


# instance fields
.field cid:Ljava/lang/String;

.field libraryPath:Ljava/lang/String;

.field packagePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "packageURI"
    .parameter "cid"

    .prologue
    const/4 v2, 0x0

    .line 6226
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6227
    const/16 v3, 0x8

    move-object v0, p0

    move-object v1, p2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 6228
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6229
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 6
    .parameter
    .parameter "params"

    .prologue
    .line 6205
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6206
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->manifestDigest:Landroid/content/pm/ManifestDigest;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 6208
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "cid"

    .prologue
    const/4 v1, 0x0

    .line 6220
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6221
    const/16 v3, 0x8

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 6222
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6223
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 6224
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"

    .prologue
    const/4 v1, 0x0

    .line 6210
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6211
    const/16 v3, 0x8

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 6213
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 6214
    .local v6, eidx:I
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 6215
    .local v8, subStr1:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 6216
    .local v7, sidx:I
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v8, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6217
    invoke-direct {p0, v8}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 6218
    return-void
.end method

.method private cleanUp()V
    .locals 1

    .prologue
    .line 6374
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 6375
    return-void
.end method

.method private setCachePath(Ljava/lang/String;)V
    .locals 3
    .parameter "newCachePath"

    .prologue
    .line 6354
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6355
    .local v0, cachePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->libraryPath:Ljava/lang/String;

    .line 6356
    new-instance v1, Ljava/io/File;

    const-string v2, "pkg.apk"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packagePath:Ljava/lang/String;

    .line 6357
    return-void
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 5
    .parameter "imcs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 6237
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.android.defcontainer"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 6239
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/android/internal/app/IMediaContainerService;->checkExternalFreeStorage(Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 6241
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 6239
    return v0

    .line 6241
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v0
.end method

.method cleanUpResourcesLI()V
    .locals 5

    .prologue
    .line 6378
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 6380
    .local v1, sourceFile:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;)I

    move-result v0

    .line 6381
    .local v0, retCode:I
    if-gez v0, :cond_0

    .line 6382
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6387
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cleanUp()V

    .line 6388
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 6
    .parameter "imcs"
    .parameter "temp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 6246
    if-eqz p2, :cond_0

    .line 6247
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->createCopyFile()V

    .line 6258
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.android.defcontainer"

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 6260
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg.apk"

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/internal/app/IMediaContainerService;->copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6263
    .local v0, newCachePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 6266
    if-eqz v0, :cond_1

    .line 6267
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 6270
    :goto_1
    return v1

    .line 6253
    .end local v0           #newCachePath:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_0

    .line 6263
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v2

    .line 6270
    .restart local v0       #newCachePath:Ljava/lang/String;
    :cond_1
    const/16 v1, -0x12

    goto :goto_1
.end method

.method createCopyFile()V
    .locals 1

    .prologue
    .line 6232
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getTempContainerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6233
    return-void
.end method

.method doPostDeleteLI(Z)Z
    .locals 3
    .parameter "delete"

    .prologue
    .line 6406
    const/4 v1, 0x0

    .line 6407
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 6408
    .local v0, mounted:Z
    if-eqz v0, :cond_0

    .line 6410
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v1

    .line 6412
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 6413
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cleanUpResourcesLI()V

    .line 6415
    :cond_1
    return v1
.end method

.method doPostInstall(I)I
    .locals 4
    .parameter "status"

    .prologue
    .line 6360
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 6361
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cleanUp()V

    .line 6369
    :cond_0
    :goto_0
    return p1

    .line 6363
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 6364
    .local v0, mounted:Z
    if-nez v0, :cond_0

    .line 6365
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_0
.end method

.method doPreInstall(I)I
    .locals 5
    .parameter "status"

    .prologue
    .line 6290
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 6292
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 6305
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 6294
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 6295
    .local v0, mounted:Z
    if-nez v0, :cond_0

    .line 6296
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 6298
    .local v1, newCachePath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 6299
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    goto :goto_0

    .line 6301
    :cond_2
    const/16 p1, -0x12

    goto :goto_0
.end method

.method doRename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "status"
    .parameter "pkgName"
    .parameter "oldCodePath"

    .prologue
    const/4 v2, 0x0

    .line 6310
    const-string v3, "/pkg.apk"

    #calls: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2, v3}, Lcom/android/server/pm/PackageManagerService;->access$2700(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6311
    .local v0, newCacheId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 6312
    .local v1, newCachePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6314
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6315
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " before renaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6350
    :goto_0
    return v2

    .line 6319
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6320
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which might be stale. Will try to clean up."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6323
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6324
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Very strange. Cannot clean up stale container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6328
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6329
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inspite of cleaning it up."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6334
    :cond_2
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6335
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mounting container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6336
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v0, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 6341
    :goto_1
    if-nez v1, :cond_4

    .line 6342
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get cache path for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6339
    :cond_3
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 6345
    :cond_4
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Succesfully renamed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at new path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6348
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6349
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 6350
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6276
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6286
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->libraryPath:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6398
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 6399
    .local v0, idx:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6400
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6402
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6281
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method matchContainer(Ljava/lang/String;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 6391
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6392
    const/4 v0, 0x1

    .line 6394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
