.class Lcom/android/server/am/ActivityManagerService$5$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$5;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$5;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3802
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5$1;->this$1:Lcom/android/server/am/ActivityManagerService$5;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$5$1;->val$d:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3805
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5$1;->this$1:Lcom/android/server/am/ActivityManagerService$5;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 3806
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5$1;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3807
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5$1;->this$1:Lcom/android/server/am/ActivityManagerService$5;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mLaunchWarningShown:Z

    .line 3808
    monitor-exit v1

    .line 3809
    return-void

    .line 3808
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
