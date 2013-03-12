.class Landroid/net/DhcpStateMachine$RunningState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 275
    invoke-static {}, Landroid/net/DhcpStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine$RunningState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 280
    const/4 v0, 0x1

    .line 281
    .local v0, retValue:Z
    invoke-static {}, Landroid/net/DhcpStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DhcpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine$RunningState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 314
    :pswitch_0
    const/4 v0, 0x0

    .line 316
    :goto_0
    :pswitch_1
    return v0

    .line 284
    :pswitch_2
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$1900(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1800(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 285
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$200(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    const-string v1, "DhcpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop Dhcp on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/DhcpStateMachine;->access$200(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1400(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$2000(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 291
    :pswitch_3
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$1900(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1800(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 292
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$200(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->releaseDhcpLease(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 293
    const-string v1, "DhcpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to release Dhcp lease on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/DhcpStateMachine;->access$200(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_2
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1400(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$2100(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 298
    :pswitch_4
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$500(Landroid/net/DhcpStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$600(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x30004

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 301
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$2200(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$2300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 304
    :cond_3
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    sget-object v2, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    #calls: Landroid/net/DhcpStateMachine;->runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$1000(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 305
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1400(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$2400(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    .line 307
    :cond_4
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$100(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
