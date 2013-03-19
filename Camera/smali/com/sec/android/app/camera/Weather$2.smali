.class Lcom/sec/android/app/camera/Weather$2;
.super Landroid/content/BroadcastReceiver;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Weather;->Connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Weather;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Weather;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sec/android/app/camera/Weather$2;->this$0:Lcom/sec/android/app/camera/Weather;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather$2;->this$0:Lcom/sec/android/app/camera/Weather;

    #getter for: Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/Weather;->access$000(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather$2;->this$0:Lcom/sec/android/app/camera/Weather;

    #getter for: Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Weather;->access$100(Lcom/sec/android/app/camera/Weather;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Weather$2;->this$0:Lcom/sec/android/app/camera/Weather;

    #getter for: Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/camera/Weather;->access$100(Lcom/sec/android/app/camera/Weather;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather$2;->this$0:Lcom/sec/android/app/camera/Weather;

    #getter for: Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/Weather;->access$200(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receice ACTION_WEATHER_SETTING_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather$2;->this$0:Lcom/sec/android/app/camera/Weather;

    #getter for: Lcom/sec/android/app/camera/Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/Weather;->access$300(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather$2;->this$0:Lcom/sec/android/app/camera/Weather;

    #getter for: Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Weather;->access$100(Lcom/sec/android/app/camera/Weather;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Weather$2;->this$0:Lcom/sec/android/app/camera/Weather;

    #getter for: Lcom/sec/android/app/camera/Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/camera/Weather;->access$100(Lcom/sec/android/app/camera/Weather;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/Weather$2;->this$0:Lcom/sec/android/app/camera/Weather;

    #getter for: Lcom/sec/android/app/camera/Weather;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/Weather;->access$200(Lcom/sec/android/app/camera/Weather;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receice ACTION_WEATHER_DATE_SYNC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
