.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addVoiceUnlockView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 1531
    return-void
.end method

.method public removeVoiceUnlockView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1536
    return-void
.end method
