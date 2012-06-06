.class Lcom/android/OriginalSettings/AccessibilityTutorialActivity$1;
.super Ljava/lang/Object;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilityTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AccessibilityTutorialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$1;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$1;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity;

    #getter for: Lcom/android/OriginalSettings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;
    invoke-static {v2}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity;->access$000(Lcom/android/OriginalSettings/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    .line 82
    .local v0, index:I
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$1;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity;

    #getter for: Lcom/android/OriginalSettings/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;
    invoke-static {v2}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity;->access$000(Lcom/android/OriginalSettings/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;

    .line 84
    .local v1, module:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$1;->this$0:Lcom/android/OriginalSettings/AccessibilityTutorialActivity;

    #calls: Lcom/android/OriginalSettings/AccessibilityTutorialActivity;->activateModule(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;)V
    invoke-static {v2, v1}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity;->access$100(Lcom/android/OriginalSettings/AccessibilityTutorialActivity;Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;)V

    .line 85
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 90
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 95
    return-void
.end method
