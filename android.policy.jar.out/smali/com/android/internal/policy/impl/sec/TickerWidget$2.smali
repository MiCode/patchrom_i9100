.class Lcom/android/internal/policy/impl/sec/TickerWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "TickerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerStatus:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$600(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    if-ne v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, phoneStatus:Ljava/lang/String;
    const-string v2, "TickerWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive : ACTION_ANY_DATA_CONNECTION_STATE_CHANGED phoneStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz v1, :cond_0

    const-string v2, "CONNECTED"

    if-ne v1, v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$2$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$1;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    .end local v1           #phoneStatus:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerStatus:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$600(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    if-ne v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 160
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    const-string v2, "TickerWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive : NETWORK_STATE_CHANGED_ACTION NetworkInfo isConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$2$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$2;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    .end local v0           #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.daemonapp.stockclock.ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsStockRefreshFailed:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$900(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 172
    const-string v2, "TickerWidget"

    const-string v3, "Receive : ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$2$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$3;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.daemonapp.ap.sinanews.intent.action.SNEWS_DATE_SYNC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsNewsRefreshFailed:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1400(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 190
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$2$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$4;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    const-string v2, "TickerWidget"

    const-string v3, "Receive : ACTION_SNNEWS_DATE_SYNC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.policy.impl.intent.action.ACTION_SINAWEIBO_DATE_UPDATED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookRefreshFailed:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1500(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 208
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$2$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$5;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    const-string v2, "TickerWidget"

    const-string v3, "Receive : ACTION_SINAWEIBO_DATE_UPDATED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_UPDATED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookRefreshFailed:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1500(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 244
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$2$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$7;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    const-string v2, "TickerWidget"

    const-string v3, "Receive : ACTION_FACEBOOK_DATE_UPDATED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_5
    return-void

    .line 225
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.daemonapp.ap.yahoonews.intent.action.YNEWS_DATE_SYNC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsNewsRefreshFailed:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1400(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 226
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$2$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2$6;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    const-string v2, "TickerWidget"

    const-string v3, "Receive : ACTION_YHNEWS_DATE_SYNC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
