.class Lcom/android/internal/telephony/SmsStorageMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsStorageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DB_DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    :cond_0
    const-string v1, "SmsStorageMonitor"

    const-string v2, "ACTION_DEVICE_STORAGE_LOW "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v3, v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 229
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v4, v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mReceiveIntent:Z

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 232
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DB_DEVICE_STORAGE_OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    :cond_3
    const-string v1, "SmsStorageMonitor"

    const-string v2, "ACTION_DEVICE_STORAGE_OK "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v4, v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 237
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v4, v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mReceiveIntent:Z

    goto :goto_0

    .line 244
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v3, v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mReceiveIntent:Z

    .line 245
    invoke-static {}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    const-string v1, "SmsStorageMonitor"

    const-string v2, "boot_time : reportSmsMemoryStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, reply:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-boolean v2, v2, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 249
    invoke-static {v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$002(Z)Z

    goto :goto_0
.end method
