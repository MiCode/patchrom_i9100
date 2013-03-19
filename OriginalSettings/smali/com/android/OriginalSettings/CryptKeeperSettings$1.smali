.class Lcom/android/settings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 76
    const-string v12, "level"

    invoke-virtual {p2, v12, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 77
    .local v3, level:I
    const-string v12, "plugged"

    invoke-virtual {p2, v12, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 78
    .local v5, plugged:I
    const-string v12, "invalid_charger"

    invoke-virtual {p2, v12, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, invalidCharger:I
    const/16 v12, 0x50

    if-lt v3, v12, :cond_3

    move v4, v10

    .line 81
    .local v4, levelOk:Z
    :goto_0
    if-eq v5, v10, :cond_0

    const/4 v12, 0x2

    if-ne v5, v12, :cond_4

    :cond_0
    if-nez v2, :cond_4

    move v6, v10

    .line 86
    .local v6, pluggedOk:Z
    :goto_1
    iget-object v12, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v8

    .line 88
    .local v8, status:I
    if-gt v10, v8, :cond_1

    const/4 v12, 0x3

    if-ge v12, v8, :cond_5

    :cond_1
    move v7, v10

    .line 91
    .local v7, sdCardOK:Z
    :goto_2
    iget-object v12, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v12

    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    :goto_3
    invoke-virtual {v12, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v12

    if-eqz v6, :cond_7

    move v10, v11

    :goto_4
    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$300(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v12

    if-eqz v4, :cond_8

    move v10, v11

    :goto_5
    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$400(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v12

    if-eqz v7, :cond_9

    move v10, v11

    :goto_6
    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v10}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v12, "device_policy"

    invoke-virtual {v10, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 100
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 102
    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #invalidCharger:I
    .end local v3           #level:I
    .end local v4           #levelOk:Z
    .end local v5           #plugged:I
    .end local v6           #pluggedOk:Z
    .end local v7           #sdCardOK:Z
    .end local v8           #status:I
    :cond_2
    :goto_7
    return-void

    .restart local v2       #invalidCharger:I
    .restart local v3       #level:I
    .restart local v5       #plugged:I
    :cond_3
    move v4, v9

    .line 80
    goto :goto_0

    .restart local v4       #levelOk:Z
    :cond_4
    move v6, v9

    .line 81
    goto :goto_1

    .restart local v6       #pluggedOk:Z
    .restart local v8       #status:I
    :cond_5
    move v7, v9

    .line 88
    goto :goto_2

    .restart local v7       #sdCardOK:Z
    :cond_6
    move v10, v9

    .line 91
    goto :goto_3

    :cond_7
    move v10, v9

    .line 92
    goto :goto_4

    :cond_8
    move v10, v9

    .line 93
    goto :goto_5

    :cond_9
    move v10, v9

    .line 94
    goto :goto_6

    .line 104
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_a
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_7
.end method
