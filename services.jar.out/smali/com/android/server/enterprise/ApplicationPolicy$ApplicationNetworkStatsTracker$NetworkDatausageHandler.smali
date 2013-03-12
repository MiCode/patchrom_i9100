.class Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;
.super Landroid/os/Handler;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkDatausageHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;->this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Lcom/android/server/enterprise/ApplicationPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 767
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;-><init>(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 771
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 772
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;->this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    #calls: Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$600(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;I)V

    .line 777
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;->this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    const/4 v1, 0x0

    #calls: Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$600(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;I)V

    goto :goto_0
.end method
