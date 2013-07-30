.class Lcom/android/sec_settings/deviceinfo/Status$5;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/sec_settings/deviceinfo/Status$5;->this$0:Lcom/android/sec_settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 913
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 918
    :try_start_0
    const-string v0, "com.movial.ipphone.IPUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :try_start_1
    const-string v1, "com.movial.ipphone.IPUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "IMS_REG_STATUS"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 924
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/sec_settings/deviceinfo/Status$5;->this$0:Lcom/android/sec_settings/deviceinfo/Status;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/android/sec_settings/deviceinfo/Status;->mImsRegistered:Z
    invoke-static {v0, v1}, Lcom/android/sec_settings/deviceinfo/Status;->access$1002(Lcom/android/sec_settings/deviceinfo/Status;Z)Z

    .line 926
    iget-object v0, p0, Lcom/android/sec_settings/deviceinfo/Status$5;->this$0:Lcom/android/sec_settings/deviceinfo/Status;

    invoke-virtual {v0}, Lcom/android/sec_settings/deviceinfo/Status;->updateSignalStrength()V

    .line 928
    :cond_0
    return-void

    .line 920
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 921
    :goto_1
    const-string v4, "Status"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    .line 920
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method
