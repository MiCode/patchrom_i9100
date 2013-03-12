.class Lcom/android/server/enterprise/EdmBackupTransport$1;
.super Landroid/content/BroadcastReceiver;
.source "EdmBackupTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EdmBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EdmBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EdmBackupTransport;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/server/enterprise/EdmBackupTransport$1;->this$0:Lcom/android/server/enterprise/EdmBackupTransport;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 268
    const-string v0, "EdmBackupTransport"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v0, "edm.intent.action.do.restore"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/server/enterprise/EdmBackupTransport$1;->this$0:Lcom/android/server/enterprise/EdmBackupTransport;

    iget-object v1, p0, Lcom/android/server/enterprise/EdmBackupTransport$1;->this$0:Lcom/android/server/enterprise/EdmBackupTransport;

    #getter for: Lcom/android/server/enterprise/EdmBackupTransport;->mEdm:Landroid/sec/enterprise/EnterpriseDeviceManager;
    invoke-static {v1}, Lcom/android/server/enterprise/EdmBackupTransport;->access$100(Lcom/android/server/enterprise/EdmBackupTransport;)Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/ApplicationPolicy;->getBackupData()Ljava/util/Map;

    move-result-object v1

    #setter for: Lcom/android/server/enterprise/EdmBackupTransport;->mRestoreData:Ljava/util/Map;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EdmBackupTransport;->access$002(Lcom/android/server/enterprise/EdmBackupTransport;Ljava/util/Map;)Ljava/util/Map;

    .line 272
    :cond_0
    return-void
.end method
