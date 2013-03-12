.class Lcom/android/internal/os/storage/ExternalStorageFormatter$2;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 255
    const/4 v5, 0x0

    .line 257
    .local v5, success:Z
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    const/4 v5, 0x1

    .line 268
    :goto_0
    if-eqz v5, :cond_2

    .line 269
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 270
    const-string v6, "ATT"

    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    const-string v6, "ExternalStorageFormatter"

    const-string v7, "Send android.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI INTENT!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_1
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 304
    :goto_2
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    #calls: Lcom/android/internal/os/storage/ExternalStorageFormatter;->isSDCard(Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v7, 0x10405e0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v7, 0x10405df

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 274
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    const-string v6, "ExternalStorageFormatter"

    const-string v7, "Send android.intent.action.MASTER_CLEAR INTENT!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 284
    :cond_2
    if-nez v5, :cond_4

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 285
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_2

    .line 288
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, primary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 290
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 291
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, paths:[Ljava/lang/String;
    array-length v6, v3

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_4
    if-ltz v1, :cond_3

    .line 293
    aget-object v2, v3, v1

    .line 294
    .local v2, path:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 295
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-interface {v6, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 299
    .end local v1           #i:I
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #paths:[Ljava/lang/String;
    .end local v4           #primary:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 300
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "ExternalStorageFormatter"

    const-string v7, "Failed talking with mount service"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
