.class Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->installActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1910
    iput-object p1, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 4
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1913
    if-eqz p2, :cond_1

    .line 1914
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1100(Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1915
    invoke-virtual {p1, v1}, Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1916
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1917
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    .line 1930
    :goto_0
    return v0

    .line 1920
    :cond_0
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1200(Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 1930
    goto :goto_0

    .line 1922
    :cond_1
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1300(Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1923
    invoke-virtual {p1, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1924
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1925
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 1928
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1200(Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1
.end method
