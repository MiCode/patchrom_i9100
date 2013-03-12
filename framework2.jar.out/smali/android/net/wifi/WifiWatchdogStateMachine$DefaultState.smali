.class Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 557
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    .line 558
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 562
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 583
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    .line 586
    :cond_0
    :goto_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 564
    :pswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 565
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const-string v0, "Updating wifi-watchdog secure settings"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-result v1

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x21002
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
