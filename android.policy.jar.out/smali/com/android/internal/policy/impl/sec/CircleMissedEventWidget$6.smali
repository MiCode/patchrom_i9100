.class Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$6;
.super Landroid/content/BroadcastReceiver;
.source "CircleMissedEventWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$6;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$6;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$1300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 293
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$6;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$1300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method
