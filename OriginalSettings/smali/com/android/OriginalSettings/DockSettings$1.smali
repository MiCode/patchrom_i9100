.class Lcom/android/settings/DockSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/DockSettings$1;->this$0:Lcom/android/settings/DockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    const-string v1, "DockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() - action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/settings/DockSettings$1;->this$0:Lcom/android/settings/DockSettings;

    #calls: Lcom/android/settings/DockSettings;->handleDockChange(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/settings/DockSettings;->access$000(Lcom/android/settings/DockSettings;Landroid/content/Intent;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, state:I
    const-string v1, "DockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDMI state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-ne v0, v5, :cond_3

    .line 104
    iget-object v1, p0, Lcom/android/settings/DockSettings$1;->this$0:Lcom/android/settings/DockSettings;

    #getter for: Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings/DockSettings;->access$100(Lcom/android/settings/DockSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/android/settings/DockSettings$1;->this$0:Lcom/android/settings/DockSettings;

    #getter for: Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings/DockSettings;->access$100(Lcom/android/settings/DockSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DockSettings$1;->this$0:Lcom/android/settings/DockSettings;

    #getter for: Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings/DockSettings;->access$100(Lcom/android/settings/DockSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/DockSettings$1;->this$0:Lcom/android/settings/DockSettings;

    #getter for: Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/DockSettings;->access$200(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DockSettings$1;->this$0:Lcom/android/settings/DockSettings;

    #getter for: Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings/DockSettings;->access$100(Lcom/android/settings/DockSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/DockSettings$1;->this$0:Lcom/android/settings/DockSettings;

    #getter for: Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/DockSettings;->access$200(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
