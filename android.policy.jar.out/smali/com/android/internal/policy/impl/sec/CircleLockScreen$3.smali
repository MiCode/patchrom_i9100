.class Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;
.super Ljava/lang/Object;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissed()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 756
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$1900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$2000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$2100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$2100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$2100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
