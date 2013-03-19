.class Lcom/android/settings/guide/WifiSettingsGuider$4;
.super Ljava/lang/Object;
.source "WifiSettingsGuider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/WifiSettingsGuider;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/settings/guide/WifiSettingsGuider$4;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$4;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$4;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    #getter for: Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    invoke-static {v0}, Lcom/android/settings/guide/WifiSettingsGuider;->access$100(Lcom/android/settings/guide/WifiSettingsGuider;)Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    move-result-object v0

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$4;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    iget-object v0, v0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider$4;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-virtual {v1}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)V

    .line 440
    :cond_0
    return-void
.end method
