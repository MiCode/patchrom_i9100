.class Lcom/android/OriginalSettings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/MasterClearConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/OriginalSettings/MasterClearConfirm$1;->this$0:Lcom/android/OriginalSettings/MasterClearConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 62
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/MasterClearConfirm$1;->this$0:Lcom/android/OriginalSettings/MasterClearConfirm;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object v0, v2

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 68
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/OriginalSettings/MasterClearConfirm$1;->this$0:Lcom/android/OriginalSettings/MasterClearConfirm;

    #getter for: Lcom/android/OriginalSettings/MasterClearConfirm;->mEraseSdCard:Z
    invoke-static {v2}, Lcom/android/OriginalSettings/MasterClearConfirm;->access$000(Lcom/android/OriginalSettings/MasterClearConfirm;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/android/OriginalSettings/MasterClearConfirm$1;->this$0:Lcom/android/OriginalSettings/MasterClearConfirm;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 83
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/MasterClearConfirm$1;->this$0:Lcom/android/OriginalSettings/MasterClearConfirm;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
