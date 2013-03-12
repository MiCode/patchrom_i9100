.class Lcom/android/server/sec/ClippedDataPickerDialog$5;
.super Landroid/content/BroadcastReceiver;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 556
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 558
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get ACTION_CONFIGURATION_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$700(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 565
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->showUIDataDialog()V

    .line 630
    :cond_1
    :goto_0
    return-void

    .line 567
    :cond_2
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$702(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    goto :goto_0

    .line 574
    :cond_3
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 575
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, reason:Ljava/lang/String;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reason :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_4
    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 579
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_5
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 581
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 582
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto :goto_0

    .line 586
    :cond_6
    const-string v2, "recentapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 587
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get SYSTEM_DIALOG_REASON_RECENT_APPS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_7
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 590
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 591
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_0

    .line 596
    :cond_8
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 598
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 599
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_0

    .line 603
    :cond_9
    if-nez v1, :cond_1

    .line 605
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 607
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_0

    .line 612
    .end local v1           #reason:Ljava/lang/String;
    :cond_a
    const-string v2, "DismissClipboardDialogFromIMMService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 613
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$702(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    .line 614
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get DismissClipboardDialogFromIMMService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_b
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 616
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 617
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_0

    .line 621
    :cond_c
    const-string v2, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 622
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get DismissClipboardDialogFromPhoneStatusBar"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_d
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 624
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 625
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_0
.end method
