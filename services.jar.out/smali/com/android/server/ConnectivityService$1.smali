.class Lcom/android/server/ConnectivityService$1;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->disconnectDataNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    #calls: Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    const-string v1, "Network declined teardown request"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 878
    :cond_0
    return-void
.end method
