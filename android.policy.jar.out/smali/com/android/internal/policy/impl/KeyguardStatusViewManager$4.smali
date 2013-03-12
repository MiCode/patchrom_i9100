.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleUnlocked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleLeft:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallDial()V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleRight:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0
.end method
