.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;


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
    .line 306
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleTouchDown(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x4c

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleLeft:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyDial:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleRight:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyList:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method public onCircleTouchMove(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 317
    return-void
.end method

.method public onCircleTouchUp(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xff

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleLeft:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyDial:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleRight:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyList:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method
