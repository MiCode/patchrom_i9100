.class Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;
.super Ljava/lang/Thread;
.source "DeleteFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/DeleteFileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteFileThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/DeleteFileActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/fm/DeleteFileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/fm/DeleteFileActivity;Lcom/sec/android/app/fm/DeleteFileActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;-><init>(Lcom/sec/android/app/fm/DeleteFileActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 50
    iget-object v7, p0, Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressThreadHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 52
    iget-object v7, p0, Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$100(Lcom/sec/android/app/fm/DeleteFileActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 53
    .local v5, seletedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 54
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/fm/DeleteFileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    .local v0, cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 58
    .local v2, id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    .local v1, filePath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v6, target:Ljava/io/File;
    if-eqz v6, :cond_0

    .line 62
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 63
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #id:J
    .end local v6           #target:Ljava/io/File;
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$100(Lcom/sec/android/app/fm/DeleteFileActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 67
    iget-object v7, p0, Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressThreadHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$000(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    invoke-static {}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Delete complete"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
