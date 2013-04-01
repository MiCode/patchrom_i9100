.class Lcom/sec/android/app/fm/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/sec/android/app/fm/SettingsActivity$1;->this$0:Lcom/sec/android/app/fm/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 693
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 696
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity$1;->this$0:Lcom/sec/android/app/fm/SettingsActivity;

    #calls: Lcom/sec/android/app/fm/SettingsActivity;->setInitialValues()V
    invoke-static {v2}, Lcom/sec/android/app/fm/SettingsActivity;->access$000(Lcom/sec/android/app/fm/SettingsActivity;)V

    .line 698
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity$1;->this$0:Lcom/sec/android/app/fm/SettingsActivity;

    #getter for: Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/sec/android/app/fm/SettingsActivity;->access$100(Lcom/sec/android/app/fm/SettingsActivity;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 699
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity$1;->this$0:Lcom/sec/android/app/fm/SettingsActivity;

    #getter for: Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/sec/android/app/fm/SettingsActivity;->access$100(Lcom/sec/android/app/fm/SettingsActivity;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :cond_1
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v1

    .line 702
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SettingsActivity"

    const-string v3, "Error in dialog.dismiss()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
