.class Landroid/mtp/MTPJNIInterface$1;
.super Landroid/content/BroadcastReceiver;
.source "MTPJNIInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MTPJNIInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MTPJNIInterface;


# direct methods
.method constructor <init>(Landroid/mtp/MTPJNIInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, action:Ljava/lang/String;
    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In MTPJNIINterface onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v5, "com.android.MTP.OBJECT_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    const-string v5, "Path"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, path:Ljava/lang/String;
    iget-object v5, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v5, v3}, Landroid/mtp/MTPJNIInterface;->sendObjectAdded(Ljava/lang/String;)V

    .line 241
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v5, "com.android.MTP.OBJECT_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 223
    const-string v5, "Path"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .restart local v3       #path:Ljava/lang/String;
    iget-object v5, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v5, v3}, Landroid/mtp/MTPJNIInterface;->sendObjectRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v3           #path:Ljava/lang/String;
    :cond_2
    const-string v5, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 227
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 228
    .restart local v3       #path:Ljava/lang/String;
    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***** path of screenshot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v5, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v5, v3}, Landroid/mtp/MTPJNIInterface;->sendObjectPropChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_3
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 232
    .local v1, battPlugged:I
    if-nez v1, :cond_0

    .line 233
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->access$000()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 234
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->access$000()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 235
    .local v2, msg:Landroid/os/Message;
    const/16 v5, 0x13

    iput v5, v2, Landroid/os/Message;->what:I

    .line 236
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->access$000()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
