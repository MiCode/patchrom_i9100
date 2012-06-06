.class Lcom/android/OriginalSettings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/CryptKeeperSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/OriginalSettings/CryptKeeperSettings$1;->this$0:Lcom/android/OriginalSettings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 69
    const-string v10, "level"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 70
    .local v3, level:I
    const-string v10, "plugged"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 71
    .local v5, plugged:I
    const-string v10, "invalid_charger"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 73
    .local v2, invalidCharger:I
    const/16 v10, 0x50

    if-lt v3, v10, :cond_2

    move v4, v8

    .line 74
    .local v4, levelOk:Z
    :goto_0
    if-eq v5, v8, :cond_0

    const/4 v10, 0x2

    if-ne v5, v10, :cond_3

    :cond_0
    if-nez v2, :cond_3

    move v6, v8

    .line 80
    .local v6, pluggedOk:Z
    :goto_1
    iget-object v10, p0, Lcom/android/OriginalSettings/CryptKeeperSettings$1;->this$0:Lcom/android/OriginalSettings/CryptKeeperSettings;

    #getter for: Lcom/android/OriginalSettings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/OriginalSettings/CryptKeeperSettings;->access$000(Lcom/android/OriginalSettings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v10

    if-eqz v4, :cond_4

    if-eqz v6, :cond_4

    :goto_2
    invoke-virtual {v10, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    iget-object v8, p0, Lcom/android/OriginalSettings/CryptKeeperSettings$1;->this$0:Lcom/android/OriginalSettings/CryptKeeperSettings;

    #getter for: Lcom/android/OriginalSettings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v8}, Lcom/android/OriginalSettings/CryptKeeperSettings;->access$100(Lcom/android/OriginalSettings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v10

    if-eqz v6, :cond_5

    move v8, v9

    :goto_3
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v8, p0, Lcom/android/OriginalSettings/CryptKeeperSettings$1;->this$0:Lcom/android/OriginalSettings/CryptKeeperSettings;

    #getter for: Lcom/android/OriginalSettings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;
    invoke-static {v8}, Lcom/android/OriginalSettings/CryptKeeperSettings;->access$200(Lcom/android/OriginalSettings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v10

    if-eqz v4, :cond_6

    move v8, v9

    :goto_4
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v8, p0, Lcom/android/OriginalSettings/CryptKeeperSettings$1;->this$0:Lcom/android/OriginalSettings/CryptKeeperSettings;

    #getter for: Lcom/android/OriginalSettings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/OriginalSettings/CryptKeeperSettings;->access$300(Lcom/android/OriginalSettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v8, p0, Lcom/android/OriginalSettings/CryptKeeperSettings$1;->this$0:Lcom/android/OriginalSettings/CryptKeeperSettings;

    invoke-virtual {v8}, Lcom/android/OriginalSettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "device_policy"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 88
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 90
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptKeeperSettings$1;->this$0:Lcom/android/OriginalSettings/CryptKeeperSettings;

    #getter for: Lcom/android/OriginalSettings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/OriginalSettings/CryptKeeperSettings;->access$300(Lcom/android/OriginalSettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #invalidCharger:I
    .end local v3           #level:I
    .end local v4           #levelOk:Z
    .end local v5           #plugged:I
    .end local v6           #pluggedOk:Z
    :cond_1
    :goto_5
    return-void

    .restart local v2       #invalidCharger:I
    .restart local v3       #level:I
    .restart local v5       #plugged:I
    :cond_2
    move v4, v7

    .line 73
    goto :goto_0

    .restart local v4       #levelOk:Z
    :cond_3
    move v6, v7

    .line 74
    goto :goto_1

    .restart local v6       #pluggedOk:Z
    :cond_4
    move v8, v7

    .line 80
    goto :goto_2

    :cond_5
    move v8, v7

    .line 81
    goto :goto_3

    :cond_6
    move v8, v7

    .line 82
    goto :goto_4

    .line 92
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_7
    iget-object v8, p0, Lcom/android/OriginalSettings/CryptKeeperSettings$1;->this$0:Lcom/android/OriginalSettings/CryptKeeperSettings;

    #getter for: Lcom/android/OriginalSettings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/OriginalSettings/CryptKeeperSettings;->access$000(Lcom/android/OriginalSettings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5
.end method
