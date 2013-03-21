.class Lcom/android/providers/media/MediaProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    const-string v2, "storage_volume"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 396
    .local v0, storage:Landroid/os/storage/StorageVolume;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : action = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], path = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$100(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/ContentApp;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$100(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/ContentApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->destroy()V

    .line 406
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$700()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v3, "content://media/external"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    #calls: Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V

    .line 408
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$900()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 409
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 428
    .end local v0           #storage:Landroid/os/storage/StorageVolume;
    :cond_1
    :goto_0
    return-void

    .line 411
    .restart local v0       #storage:Landroid/os/storage/StorageVolume;
    :cond_2
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$1000()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 412
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$1000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/media/MediaProvider;->access$1100(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V

    .line 414
    :cond_3
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 415
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mUnmountReceiver - we are under ShuttingDown, EJECT intent is skipped!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    :cond_4
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Call CleanerThread "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v1, Lcom/android/providers/media/MediaProvider$CleanerThread;

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {v1, v2, v0, p1}, Lcom/android/providers/media/MediaProvider$CleanerThread;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/os/storage/StorageVolume;Landroid/content/Context;)V

    .line 422
    .local v1, th:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 423
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnmountReceiver finished"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
