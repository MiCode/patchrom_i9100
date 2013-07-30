.class Lcom/android/sec_settings/cloud/CloudSettingsMainFragment$2;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z
    invoke-static {v0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->access$400(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;

    const v2, 0x7f090e2e

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 661
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->requestDropboxAuth()V
    invoke-static {v0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->access$800(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)V

    goto :goto_0
.end method
