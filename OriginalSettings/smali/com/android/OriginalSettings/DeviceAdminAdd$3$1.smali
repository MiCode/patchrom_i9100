.class Lcom/android/OriginalSettings/DeviceAdminAdd$3$1;
.super Landroid/os/RemoteCallback;
.source "DeviceAdminAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/DeviceAdminAdd$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/OriginalSettings/DeviceAdminAdd$3;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DeviceAdminAdd$3;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/OriginalSettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/OriginalSettings/DeviceAdminAdd$3;

    invoke-direct {p0, p2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 222
    .local v1, msg:Ljava/lang/CharSequence;
    :goto_0
    if-nez v1, :cond_1

    .line 224
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/OriginalSettings/DeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/OriginalSettings/DeviceAdminAdd$3;->this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/OriginalSettings/DeviceAdminAdd;->mDPM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/android/OriginalSettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/OriginalSettings/DeviceAdminAdd$3;

    iget-object v3, v3, Lcom/android/OriginalSettings/DeviceAdminAdd$3;->this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/OriginalSettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 228
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/OriginalSettings/DeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/OriginalSettings/DeviceAdminAdd$3;->this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/DeviceAdminAdd;->finish()V

    .line 235
    :goto_2
    return-void

    .line 218
    .end local v1           #msg:Ljava/lang/CharSequence;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 230
    .restart local v1       #msg:Ljava/lang/CharSequence;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 233
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/OriginalSettings/DeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/OriginalSettings/DeviceAdminAdd$3;->this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/android/OriginalSettings/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 225
    .end local v0           #args:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
