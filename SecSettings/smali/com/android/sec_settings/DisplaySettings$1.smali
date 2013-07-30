.class Lcom/android/sec_settings/DisplaySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/sec_settings/DisplaySettings$1;->this$0:Lcom/android/sec_settings/DisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, action:Ljava/lang/String;
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIntentReceiver.onReceive: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const-string v2, "level"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_2

    .line 203
    const-string v2, "status"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 204
    .local v1, battStatus:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/sec_settings/DisplaySettings$1;->this$0:Lcom/android/sec_settings/DisplaySettings;

    #getter for: Lcom/android/sec_settings/DisplaySettings;->mBrightnessPreference:Lcom/android/sec_settings/BrightnessPreference;
    invoke-static {v2}, Lcom/android/sec_settings/DisplaySettings;->access$000(Lcom/android/sec_settings/DisplaySettings;)Lcom/android/sec_settings/BrightnessPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/sec_settings/BrightnessPreference;->setEnabled(Z)V

    .line 212
    .end local v1           #battStatus:I
    :cond_0
    :goto_0
    return-void

    .line 207
    .restart local v1       #battStatus:I
    :cond_1
    iget-object v2, p0, Lcom/android/sec_settings/DisplaySettings$1;->this$0:Lcom/android/sec_settings/DisplaySettings;

    #getter for: Lcom/android/sec_settings/DisplaySettings;->mBrightnessPreference:Lcom/android/sec_settings/BrightnessPreference;
    invoke-static {v2}, Lcom/android/sec_settings/DisplaySettings;->access$000(Lcom/android/sec_settings/DisplaySettings;)Lcom/android/sec_settings/BrightnessPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/sec_settings/BrightnessPreference;->setEnabled(Z)V

    goto :goto_0

    .line 210
    .end local v1           #battStatus:I
    :cond_2
    iget-object v2, p0, Lcom/android/sec_settings/DisplaySettings$1;->this$0:Lcom/android/sec_settings/DisplaySettings;

    #getter for: Lcom/android/sec_settings/DisplaySettings;->mBrightnessPreference:Lcom/android/sec_settings/BrightnessPreference;
    invoke-static {v2}, Lcom/android/sec_settings/DisplaySettings;->access$000(Lcom/android/sec_settings/DisplaySettings;)Lcom/android/sec_settings/BrightnessPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/sec_settings/BrightnessPreference;->setEnabled(Z)V

    goto :goto_0
.end method
