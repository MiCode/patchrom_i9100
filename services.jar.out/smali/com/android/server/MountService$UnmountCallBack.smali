.class Lcom/android/server/MountService$UnmountCallBack;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountCallBack"
.end annotation


# instance fields
.field final force:Z

.field final path:Ljava/lang/String;

.field final removeEncryption:Z

.field retries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    .line 384
    iput-object p2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 385
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    .line 386
    iput-boolean p4, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    .line 387
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 4

    .prologue
    .line 390
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFinished :: UnmountCallBack -> Unmounting path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    #calls: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I

    .line 392
    return-void
.end method
