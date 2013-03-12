.class Lcom/android/server/DirEncryptService$MountCallBackBinderListener;
.super Landroid/os/storage/IMountCallBackListener$Stub;
.source "DirEncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MountCallBackBinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptService;


# direct methods
.method private constructor <init>(Lcom/android/server/DirEncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/DirEncryptService$MountCallBackBinderListener;->this$0:Lcom/android/server/DirEncryptService;

    invoke-direct {p0}, Landroid/os/storage/IMountCallBackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DirEncryptService;Lcom/android/server/DirEncryptService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/DirEncryptService$MountCallBackBinderListener;-><init>(Lcom/android/server/DirEncryptService;)V

    return-void
.end method


# virtual methods
.method public onBeforeActionMassStorage(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 110
    invoke-static {}, Lcom/android/server/DirEncryptService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onBeforeActionMassStorage path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method

.method public onReleasedMassStorage(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 113
    invoke-static {}, Lcom/android/server/DirEncryptService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onReleasedMassStorage path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method

.method public onStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "path"
    .parameter "state"

    .prologue
    .line 101
    const-string v0, "DirEncryptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onStorageAskPermission path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "decrypt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/server/DirEncryptService$MountCallBackBinderListener;->this$0:Lcom/android/server/DirEncryptService;

    #getter for: Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;
    invoke-static {v0}, Lcom/android/server/DirEncryptService;->access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/DirEncryptServiceHelper;->onStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x64

    goto :goto_0
.end method
