.class Landroid/net/wifi/WifiStateMachine$1;
.super Landroid/os/Handler;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$1;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 182
    const-string v0, "CW_SISO"

    const-string v1, "WifiStateTracker : mCwHandler : Nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 176
    :pswitch_0
    const-string v0, "CW_SISO"

    const-string v1, "WifiStateTracker : mCwHandler : EVENT_IMS_REQUEST_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$1;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCwHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method
