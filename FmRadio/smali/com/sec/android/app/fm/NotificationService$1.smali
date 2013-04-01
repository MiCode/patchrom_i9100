.class Lcom/sec/android/app/fm/NotificationService$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/NotificationService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/NotificationService;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationService$1;->this$0:Lcom/sec/android/app/fm/NotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService$1;->this$0:Lcom/sec/android/app/fm/NotificationService;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/fm/NotificationService;->mKeepPlaying:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/NotificationService;->access$002(Lcom/sec/android/app/fm/NotificationService;Z)Z

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService$1;->this$0:Lcom/sec/android/app/fm/NotificationService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/NotificationService;->stopSelf()V

    .line 188
    return-void
.end method
