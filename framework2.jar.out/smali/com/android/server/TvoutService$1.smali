.class Lcom/android/server/TvoutService$1;
.super Landroid/content/BroadcastReceiver;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, action:Ljava/lang/String;
    const-string v2, "TvoutService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TvoutService Action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 158
    .local v1, bStatus:Z
    const-string v2, "TvoutService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TvoutService HDMI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v2, v1}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 163
    iget-object v2, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v2, v1}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 164
    iget-object v2, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v2, v1}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 165
    iget-object v2, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v2}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    .line 181
    .end local v1           #bStatus:Z
    :cond_0
    :goto_0
    return-void

    .line 169
    .restart local v1       #bStatus:Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v2, v1}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 170
    iget-object v2, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v2, v1}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 171
    iget-object v2, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v2, v1}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    goto :goto_0

    .line 174
    .end local v1           #bStatus:Z
    :cond_2
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const-string v2, "TvoutService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locale changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v2}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    goto :goto_0
.end method
