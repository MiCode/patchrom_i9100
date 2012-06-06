.class Lcom/android/OriginalSettings/CryptDecryptSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptDecryptSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CryptDecryptSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/CryptDecryptSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/CryptDecryptSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/OriginalSettings/CryptDecryptSettings$1;->this$0:Lcom/android/OriginalSettings/CryptDecryptSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 78
    const-string v9, "level"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 79
    .local v2, level:I
    const-string v9, "plugged"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 80
    .local v4, plugged:I
    const-string v9, "invalid_charger"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, invalidCharger:I
    const/16 v9, 0x50

    if-lt v2, v9, :cond_2

    move v3, v7

    .line 83
    .local v3, levelOk:Z
    :goto_0
    if-eq v4, v7, :cond_0

    const/4 v9, 0x2

    if-ne v4, v9, :cond_3

    :cond_0
    if-nez v1, :cond_3

    move v5, v7

    .line 89
    .local v5, pluggedOk:Z
    :goto_1
    iget-object v9, p0, Lcom/android/OriginalSettings/CryptDecryptSettings$1;->this$0:Lcom/android/OriginalSettings/CryptDecryptSettings;

    #getter for: Lcom/android/OriginalSettings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/OriginalSettings/CryptDecryptSettings;->access$000(Lcom/android/OriginalSettings/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v9

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v9, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptDecryptSettings$1;->this$0:Lcom/android/OriginalSettings/CryptDecryptSettings;

    #getter for: Lcom/android/OriginalSettings/CryptDecryptSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v7}, Lcom/android/OriginalSettings/CryptDecryptSettings;->access$100(Lcom/android/OriginalSettings/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v9

    if-eqz v5, :cond_5

    move v7, v8

    :goto_3
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptDecryptSettings$1;->this$0:Lcom/android/OriginalSettings/CryptDecryptSettings;

    #getter for: Lcom/android/OriginalSettings/CryptDecryptSettings;->mBatteryWarning:Landroid/view/View;
    invoke-static {v7}, Lcom/android/OriginalSettings/CryptDecryptSettings;->access$200(Lcom/android/OriginalSettings/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v7

    if-eqz v3, :cond_6

    :goto_4
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .end local v1           #invalidCharger:I
    .end local v2           #level:I
    .end local v3           #levelOk:Z
    .end local v4           #plugged:I
    .end local v5           #pluggedOk:Z
    :cond_1
    return-void

    .restart local v1       #invalidCharger:I
    .restart local v2       #level:I
    .restart local v4       #plugged:I
    :cond_2
    move v3, v6

    .line 82
    goto :goto_0

    .restart local v3       #levelOk:Z
    :cond_3
    move v5, v6

    .line 83
    goto :goto_1

    .restart local v5       #pluggedOk:Z
    :cond_4
    move v7, v6

    .line 89
    goto :goto_2

    :cond_5
    move v7, v6

    .line 90
    goto :goto_3

    :cond_6
    move v8, v6

    .line 91
    goto :goto_4
.end method
