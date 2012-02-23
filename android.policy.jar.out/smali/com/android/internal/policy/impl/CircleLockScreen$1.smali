.class Lcom/android/internal/policy/impl/CircleLockScreen$1;
.super Ljava/lang/Object;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleTouchDown(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    .line 139
    return-void
.end method

.method public onCircleTouchMove(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 143
    return-void
.end method

.method public onCircleTouchUp(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V

    .line 149
    return-void
.end method
