.class Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;->this$1:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 281
    const-string v0, "DateTimeIntentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  dialog_state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/DateTimeIntentReceiver;->access$1200()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/android/settings/DateTimeIntentReceiver;->access$1200()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;->this$1:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    iget-object v1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;->this$1:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->access$1400(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 285
    :cond_0
    return-void
.end method
