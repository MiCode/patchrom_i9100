.class Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageMoveObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageMoved(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 208
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 209
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    return-void
.end method
