.class Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 870
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 879
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 880
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 881
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 893
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$500(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    iput v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_3

    .line 904
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 913
    :cond_1
    :goto_0
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 914
    :goto_1
    return-void

    .line 895
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 896
    iput v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 897
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0246

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 905
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_5

    .line 909
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto :goto_0

    .line 911
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto :goto_0
.end method

.method pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 884
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 885
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 887
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 889
    :cond_0
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 873
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 876
    :cond_0
    return-void
.end method
