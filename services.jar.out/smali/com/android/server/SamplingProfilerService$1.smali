.class Lcom/android/server/SamplingProfilerService$1;
.super Landroid/os/FileObserver;
.source "SamplingProfilerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SamplingProfilerService;->startWorking(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SamplingProfilerService;

.field final synthetic val$dropbox:Landroid/os/DropBoxManager;


# direct methods
.method constructor <init>(Lcom/android/server/SamplingProfilerService;Ljava/lang/String;ILandroid/os/DropBoxManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/SamplingProfilerService$1;->this$0:Lcom/android/server/SamplingProfilerService;

    iput-object p4, p0, Lcom/android/server/SamplingProfilerService$1;->val$dropbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .parameter "event"
    .parameter "path"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/SamplingProfilerService$1;->this$0:Lcom/android/server/SamplingProfilerService;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/snapshots"

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SamplingProfilerService$1;->val$dropbox:Landroid/os/DropBoxManager;

    #calls: Lcom/android/server/SamplingProfilerService;->handleSnapshotFile(Ljava/io/File;Landroid/os/DropBoxManager;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/SamplingProfilerService;->access$000(Lcom/android/server/SamplingProfilerService;Ljava/io/File;Landroid/os/DropBoxManager;)V

    .line 72
    return-void
.end method
