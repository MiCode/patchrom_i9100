.class Lcom/android/sec_settings/DeviceAdminAdd$3;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DeviceAdminAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    .line 227
    iget-object v1, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    iget-boolean v1, v1, Lcom/android/sec_settings/DeviceAdminAdd;->mAdding:Z

    if-eqz v1, :cond_1

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/sec_settings/DeviceAdminAdd;->mDPM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v2, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/sec_settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    iget-boolean v3, v3, Lcom/android/sec_settings/DeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 230
    iget-object v1, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/DeviceAdminAdd;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    invoke-virtual {v1}, Lcom/android/sec_settings/DeviceAdminAdd;->finish()V

    .line 272
    :goto_1
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DeviceAdminAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception trying to activate admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/sec_settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    iget-object v1, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/sec_settings/DeviceAdminAdd;->mDPM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v2, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/sec_settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    invoke-virtual {v1, v4}, Lcom/android/sec_settings/DeviceAdminAdd;->setResult(I)V

    goto :goto_0

    .line 245
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    :goto_2
    iget-object v1, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/sec_settings/DeviceAdminAdd;->mDPM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v2, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/sec_settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Lcom/android/sec_settings/DeviceAdminAdd$3$1;

    iget-object v4, p0, Lcom/android/sec_settings/DeviceAdminAdd$3;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    iget-object v4, v4, Lcom/android/sec_settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/sec_settings/DeviceAdminAdd$3$1;-><init>(Lcom/android/sec_settings/DeviceAdminAdd$3;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    goto :goto_1

    .line 246
    :catch_1
    move-exception v1

    goto :goto_2
.end method
