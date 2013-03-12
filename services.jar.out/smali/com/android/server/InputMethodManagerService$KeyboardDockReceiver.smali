.class Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyboardDockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 507
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, intentAction:Ljava/lang/String;
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputMethodService onReceive() intentAction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 511
    .local v0, extra:I
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() getIntExtra "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 513
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->access$276(I)I

    .line 515
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    .line 516
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 517
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 518
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 519
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/InputMethodManagerService;->showKeyboardNotiDailog(I)V

    .line 538
    .end local v0           #extra:I
    :cond_0
    :goto_0
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputMethodService onReceive() keyboardState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$200()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void

    .line 530
    .restart local v0       #extra:I
    :cond_1
    const/4 v2, -0x2

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$272(I)I

    .line 531
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$400()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 532
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$400()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    :cond_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 535
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$402(I)I

    goto :goto_0
.end method
