.class Lcom/android/server/BackupManagerService$FullBackupParams;
.super Lcom/android/server/BackupManagerService$FullParams;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupParams"
.end annotation


# instance fields
.field public allApps:Z

.field public includeApks:Z

.field public includeShared:Z

.field public includeSystem:Z

.field public packages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "output"
    .parameter "saveApks"
    .parameter "saveShared"
    .parameter "doAllApps"
    .parameter "doSystem"
    .parameter "pkgList"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$FullParams;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 397
    iput-object p2, p0, Lcom/android/server/BackupManagerService$FullParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 398
    iput-boolean p3, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeApks:Z

    .line 399
    iput-boolean p4, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeShared:Z

    .line 400
    iput-boolean p5, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->allApps:Z

    .line 401
    iput-boolean p6, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeSystem:Z

    .line 402
    iput-object p7, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    .line 403
    return-void
.end method
