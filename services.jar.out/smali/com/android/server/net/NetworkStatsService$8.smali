.class Lcom/android/server/net/NetworkStatsService$8;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 6
    .parameter "state"
    .parameter "networkType"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 794
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #getter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I
    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)I

    move-result v4

    if-eq p1, v4, :cond_1

    move v1, v2

    .line 795
    .local v1, stateChanged:Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #getter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I
    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$1500(Lcom/android/server/net/NetworkStatsService;)I

    move-result v4

    if-eq p2, v4, :cond_2

    move v0, v2

    .line 797
    .local v0, networkTypeChanged:Z
    :goto_1
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 804
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #getter for: Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1300(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #getter for: Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$1300(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 808
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #setter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I
    invoke-static {v2, p1}, Lcom/android/server/net/NetworkStatsService;->access$1402(Lcom/android/server/net/NetworkStatsService;I)I

    .line 809
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #setter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I
    invoke-static {v2, p2}, Lcom/android/server/net/NetworkStatsService;->access$1502(Lcom/android/server/net/NetworkStatsService;I)I

    .line 810
    return-void

    .end local v0           #networkTypeChanged:Z
    .end local v1           #stateChanged:Z
    :cond_1
    move v1, v3

    .line 794
    goto :goto_0

    .restart local v1       #stateChanged:Z
    :cond_2
    move v0, v3

    .line 795
    goto :goto_1
.end method
