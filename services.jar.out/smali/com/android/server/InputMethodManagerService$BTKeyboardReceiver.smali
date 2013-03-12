.class Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTKeyboardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 584
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, intentAction:Ljava/lang/String;
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputMethodService onReceive() intentAction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 590
    .local v0, extra:I
    const-string v3, "android.bluetooth.profile.extra.isKeyboard"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 591
    .local v2, isKeyboard:Z
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() getIntExtra "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() getBooleanExtra "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    if-eqz v2, :cond_0

    .line 595
    if-ne v0, v6, :cond_2

    .line 596
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$276(I)I

    .line 597
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    .line 598
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 599
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 600
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 601
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3, v6}, Lcom/android/server/InputMethodManagerService;->showKeyboardNotiDailog(I)V

    .line 621
    .end local v0           #extra:I
    .end local v2           #isKeyboard:Z
    :cond_0
    :goto_0
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputMethodService onReceive() keyboardState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$200()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void

    .line 606
    .restart local v0       #extra:I
    .restart local v2       #isKeyboard:Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->showtoastkeyboardconnected()V

    goto :goto_0

    .line 612
    :cond_2
    const/4 v3, -0x3

    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$272(I)I

    .line 613
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$400()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 614
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_brightness_mode"

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$400()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    :cond_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 617
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$402(I)I

    goto :goto_0
.end method
