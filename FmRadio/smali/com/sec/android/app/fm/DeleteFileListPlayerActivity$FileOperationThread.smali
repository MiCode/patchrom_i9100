.class Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;
.super Ljava/lang/Thread;
.source "DeleteFileListPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileOperationThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    .local p2, checkedIdArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 468
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->mDeleteArrayList:Ljava/util/ArrayList;

    .line 469
    iput-object p3, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->mContext:Landroid/content/Context;

    .line 470
    return-void
.end method

.method private DeleteFiles()V
    .locals 7

    .prologue
    .line 486
    const-string v4, "DeleteFileActivity_T0"

    const-string v5, "DeleteFiles : Start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->mDeleteArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 489
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 501
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_1
    return-void

    .line 493
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 494
    .local v1, id:J
    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->mContext:Landroid/content/Context;

    const-string v6, "_data"

    invoke-static {v5, v1, v2, v6}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getItemString(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v2, v5}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z

    .line 496
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    .end local v1           #id:J
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeleteFileActivity_T0"

    const-string v5, "DeleteFiles : is failed. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->DeleteFiles()V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->mDeleteArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$FileOperationThread;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfff

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 482
    :cond_0
    const-string v0, "DeleteFileActivity_T0"

    const-string v1, "DeleteFiles : Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method
