.class Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;
.super Landroid/os/Handler;
.source "CallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/voicecall/CallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 771
    .line 772
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    check-cast v0, Landroid/os/AsyncResult;

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseCBHandler() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 839
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$300(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #setter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I
    invoke-static {v0, v4}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$302(Lcom/sec/android/app/callsetting/voicecall/CallBarring;I)I

    .line 842
    :cond_1
    return-void

    .line 778
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I
    invoke-static {v1, v0, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1400(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Landroid/os/AsyncResult;I)I

    move-result v0

    .line 780
    if-ne v0, v7, :cond_3

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$300(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$300(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    sget-object v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1500(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V

    goto :goto_0

    .line 794
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    sget-object v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1600(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V

    goto :goto_0

    .line 800
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1700(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Landroid/os/AsyncResult;)I

    move-result v0

    .line 802
    if-eq v0, v7, :cond_5

    .line 803
    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    sget-object v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1600(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1800(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$300(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$308(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)I

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    sget-object v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1500(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getCallBarring()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$600(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    goto :goto_0

    .line 814
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #setter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1802(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Z)Z

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #setter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I
    invoke-static {v0, v4}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$302(Lcom/sec/android/app/callsetting/voicecall/CallBarring;I)I

    goto :goto_0

    .line 819
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    sget-object v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1500(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1800(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$300(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)I

    move-result v0

    if-ge v0, v5, :cond_6

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$308(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)I

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getCallBarring()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$600(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    goto/16 :goto_0

    .line 829
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #setter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1802(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Z)Z

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #setter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I
    invoke-static {v0, v4}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$302(Lcom/sec/android/app/callsetting/voicecall/CallBarring;I)I

    goto/16 :goto_0

    .line 776
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
