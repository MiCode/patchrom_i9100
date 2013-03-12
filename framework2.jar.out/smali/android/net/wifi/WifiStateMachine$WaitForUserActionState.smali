.class Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForUserActionState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 5756
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 5759
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->getName()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5760
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState$1;-><init>(Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;)V

    .line 5771
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 5772
    .local v2, r:Landroid/content/res/Resources;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040014

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Connecting to Wi-Fi network will disconnect device connected via Wi-Fi Direct"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState$2;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState$2;-><init>(Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5784
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 5785
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5786
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iput-object v0, v3, Landroid/net/wifi/WifiStateMachine;->t_dialog:Landroid/app/AlertDialog;

    .line 5787
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 5791
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5792
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 5806
    :pswitch_0
    const/4 v0, 0x0

    .line 5808
    :goto_0
    return v0

    .line 5794
    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2008d

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 5795
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$18500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$18600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 5798
    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v1, v0}, Landroid/net/wifi/WifiStateMachine;->access$3200(Landroid/net/wifi/WifiStateMachine;I)V

    .line 5799
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$18700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 5802
    :pswitch_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "WaitforUserActionState > cmd_start_supplicant -> deferMessage"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5803
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$18800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 5792
    :pswitch_data_0
    .packed-switch 0x20007
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
