.class Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 201
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void

    .line 200
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
