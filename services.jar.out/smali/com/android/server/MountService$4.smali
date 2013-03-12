.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 935
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x6

    if-ge v2, v5, :cond_2

    .line 936
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 937
    .local v3, isPending:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;
    invoke-static {v5}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;
    invoke-static {v5}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    .line 939
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 941
    const-string v5, "MountService"

    const-string v6, "\'%s\' waiting over pending state "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 935
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 951
    .end local v3           #isPending:Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 952
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "MountService"

    const-string v6, "Failed to mount media on insertion"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 948
    :cond_2
    :try_start_5
    iget-object v5, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static {v5}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v6, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v5, v6}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v4

    .local v4, rc:I
    if-eqz v4, :cond_1

    .line 949
    const-string v5, "MountService"

    const-string v6, "Insertion mount failed (%d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method
