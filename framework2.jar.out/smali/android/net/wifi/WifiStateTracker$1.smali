.class Landroid/net/wifi/WifiStateTracker$1;
.super Landroid/os/Handler;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$1;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 76
    :pswitch_0
    const-string v0, "CW_SISO"

    const-string v1, "WifiStateTracker : mCwHandler : EVENT_IMS_REQUEST_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$1;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCwHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method
