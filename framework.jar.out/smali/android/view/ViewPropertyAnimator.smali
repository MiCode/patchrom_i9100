.class public Landroid/view/ViewPropertyAnimator;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewPropertyAnimator$AnimatorEventListener;,
        Landroid/view/ViewPropertyAnimator$NameValuesHolder;,
        Landroid/view/ViewPropertyAnimator$PropertyBundle;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x200

.field private static final NONE:I = 0x0

.field private static final ROTATION:I = 0x10

.field private static final ROTATION_X:I = 0x20

.field private static final ROTATION_Y:I = 0x40

.field private static final SCALE_X:I = 0x4

.field private static final SCALE_Y:I = 0x8

.field private static final TRANSFORM_MASK:I = 0x1ff

.field private static final TRANSLATION_X:I = 0x1

.field private static final TRANSLATION_Y:I = 0x2

.field private static final X:I = 0x80

.field private static final Y:I = 0x100


# instance fields
.field private mAnimationStarter:Ljava/lang/Runnable;

.field private mAnimatorCleanupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

.field private mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/view/ViewPropertyAnimator$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorOnEndMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorOnStartMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSetupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mDurationSet:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mInterpolatorSet:Z

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCleanupAction:Ljava/lang/Runnable;

.field private mPendingOnEndAction:Ljava/lang/Runnable;

.field private mPendingOnStartAction:Ljava/lang/Runnable;

.field private mPendingSetupAction:Ljava/lang/Runnable;

.field private mStartDelay:J

.field private mStartDelaySet:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 234
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    .line 80
    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    .line 93
    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    .line 98
    iput-object v3, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 105
    new-instance v0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-direct {v0, p0, v3}, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/ViewPropertyAnimator$1;)V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Landroid/view/ViewPropertyAnimator$1;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator$1;-><init>(Landroid/view/ViewPropertyAnimator;)V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    .line 235
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->ensureTransformationInfo()V

    .line 237
    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewPropertyAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/view/ViewPropertyAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Landroid/view/ViewPropertyAnimator;IF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setValue(IF)V

    return-void
.end method

.method private animateProperty(IF)V
    .locals 2
    .parameter "constantName"
    .parameter "toValue"

    .prologue
    .line 779
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator;->getValue(I)F

    move-result v1

    .line 780
    .local v1, fromValue:F
    sub-float v0, p2, v1

    .line 781
    .local v0, deltaValue:F
    invoke-direct {p0, p1, v1, v0}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IFF)V

    .line 782
    return-void
.end method

.method private animatePropertyBy(IF)V
    .locals 1
    .parameter "constantName"
    .parameter "byValue"

    .prologue
    .line 793
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator;->getValue(I)F

    move-result v0

    .line 794
    .local v0, fromValue:F
    invoke-direct {p0, p1, v0, p2}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IFF)V

    .line 795
    return-void
.end method

.method private animatePropertyBy(IFF)V
    .locals 8
    .parameter "constantName"
    .parameter "startValue"
    .parameter "byValue"

    .prologue
    .line 807
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 808
    const/4 v1, 0x0

    .line 809
    .local v1, animatorToCancel:Landroid/animation/Animator;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 810
    .local v0, animatorSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/animation/Animator;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 811
    .local v5, runningAnim:Landroid/animation/Animator;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    .line 812
    .local v2, bundle:Landroid/view/ViewPropertyAnimator$PropertyBundle;
    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator$PropertyBundle;->cancel(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 817
    iget v6, v2, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    if-nez v6, :cond_0

    .line 819
    move-object v1, v5

    .line 824
    .end local v2           #bundle:Landroid/view/ViewPropertyAnimator$PropertyBundle;
    .end local v5           #runningAnim:Landroid/animation/Animator;
    :cond_1
    if-eqz v1, :cond_2

    .line 825
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 829
    .end local v0           #animatorSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/animation/Animator;>;"
    .end local v1           #animatorToCancel:Landroid/animation/Animator;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v4, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    invoke-direct {v4, p1, p2, p3}, Landroid/view/ViewPropertyAnimator$NameValuesHolder;-><init>(IFF)V

    .line 830
    .local v4, nameValuePair:Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 832
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 833
    return-void
.end method

.method private getValue(I)F
    .locals 3
    .parameter "propertyConstant"

    .prologue
    .line 897
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v0, v1, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 898
    .local v0, info:Landroid/view/View$TransformationInfo;
    sparse-switch p1, :sswitch_data_0

    .line 920
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 900
    :sswitch_0
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    goto :goto_0

    .line 902
    :sswitch_1
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    goto :goto_0

    .line 904
    :sswitch_2
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    goto :goto_0

    .line 906
    :sswitch_3
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    goto :goto_0

    .line 908
    :sswitch_4
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    goto :goto_0

    .line 910
    :sswitch_5
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    goto :goto_0

    .line 912
    :sswitch_6
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    goto :goto_0

    .line 914
    :sswitch_7
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mLeft:I

    int-to-float v1, v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    add-float/2addr v1, v2

    goto :goto_0

    .line 916
    :sswitch_8
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mTop:I

    int-to-float v1, v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    add-float/2addr v1, v2

    goto :goto_0

    .line 918
    :sswitch_9
    iget v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    goto :goto_0

    .line 898
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method private setValue(IF)V
    .locals 3
    .parameter "propertyConstant"
    .parameter "value"

    .prologue
    .line 844
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v1, v2, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 845
    .local v1, info:Landroid/view/View$TransformationInfo;
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v0, v2, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 846
    .local v0, displayList:Landroid/view/DisplayList;
    sparse-switch p1, :sswitch_data_0

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 848
    :sswitch_0
    iput p2, v1, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 849
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/DisplayList;->setTranslationX(F)V

    goto :goto_0

    .line 852
    :sswitch_1
    iput p2, v1, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 853
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/DisplayList;->setTranslationY(F)V

    goto :goto_0

    .line 856
    :sswitch_2
    iput p2, v1, Landroid/view/View$TransformationInfo;->mRotation:F

    .line 857
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/DisplayList;->setRotation(F)V

    goto :goto_0

    .line 860
    :sswitch_3
    iput p2, v1, Landroid/view/View$TransformationInfo;->mRotationX:F

    .line 861
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/DisplayList;->setRotationX(F)V

    goto :goto_0

    .line 864
    :sswitch_4
    iput p2, v1, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 865
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/DisplayList;->setRotationY(F)V

    goto :goto_0

    .line 868
    :sswitch_5
    iput p2, v1, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 869
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/DisplayList;->setScaleX(F)V

    goto :goto_0

    .line 872
    :sswitch_6
    iput p2, v1, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 873
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/DisplayList;->setScaleY(F)V

    goto :goto_0

    .line 876
    :sswitch_7
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mLeft:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iput v2, v1, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 877
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mLeft:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/view/DisplayList;->setTranslationX(F)V

    goto :goto_0

    .line 880
    :sswitch_8
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mTop:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iput v2, v1, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 881
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mTop:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/view/DisplayList;->setTranslationY(F)V

    goto :goto_0

    .line 884
    :sswitch_9
    iput p2, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 885
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/DisplayList;->setAlpha(F)V

    goto :goto_0

    .line 846
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method private startAnimation()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 724
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setHasTransientState(Z)V

    .line 725
    new-array v6, v7, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 726
    .local v0, animator:Landroid/animation/ValueAnimator;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 728
    .local v2, nameValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 729
    const/4 v5, 0x0

    .line 730
    .local v5, propertyMask:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 731
    .local v4, propertyCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 732
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 733
    .local v3, nameValuesHolder:Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v6, v3, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    or-int/2addr v5, v6

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    .end local v3           #nameValuesHolder:Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_0
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    new-instance v7, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    invoke-direct {v7, v5, v2}, Landroid/view/ViewPropertyAnimator$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    if-eqz v6, :cond_1

    .line 737
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    .line 740
    :cond_1
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    if-eqz v6, :cond_2

    .line 741
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    .line 744
    :cond_2
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    if-eqz v6, :cond_3

    .line 745
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    .line 748
    :cond_3
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    if-eqz v6, :cond_4

    .line 749
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    .line 752
    :cond_4
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 753
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 754
    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    if-eqz v6, :cond_5

    .line 755
    iget-wide v6, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 757
    :cond_5
    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    if-eqz v6, :cond_6

    .line 758
    iget-wide v6, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 760
    :cond_6
    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    if-eqz v6, :cond_7

    .line 761
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 763
    :cond_7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 764
    return-void
.end method


# virtual methods
.method public alpha(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 608
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 609
    return-object p0
.end method

.method public alphaBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 621
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 622
    return-object p0
.end method

.method public cancel()V
    .locals 6

    .prologue
    .line 353
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 354
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 356
    .local v2, mAnimatorMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/animation/Animator;Landroid/view/ViewPropertyAnimator$PropertyBundle;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 357
    .local v0, animatorSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/animation/Animator;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 358
    .local v3, runningAnim:Landroid/animation/Animator;
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 361
    .end local v0           #animatorSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/animation/Animator;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mAnimatorMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/animation/Animator;Landroid/view/ViewPropertyAnimator$PropertyBundle;>;"
    .end local v3           #runningAnim:Landroid/animation/Animator;
    :cond_0
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 362
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    if-eqz v0, :cond_0

    .line 267
    iget-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    .line 271
    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 284
    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    if-eqz v0, :cond_0

    .line 285
    iget-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    .line 289
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public rotation(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 426
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 427
    return-object p0
.end method

.method public rotationBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 439
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 440
    return-object p0
.end method

.method public rotationX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 452
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 453
    return-object p0
.end method

.method public rotationXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 465
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 466
    return-object p0
.end method

.method public rotationY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 478
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 479
    return-object p0
.end method

.method public rotationYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 491
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 492
    return-object p0
.end method

.method public scaleX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 556
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 557
    return-object p0
.end method

.method public scaleXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 569
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 570
    return-object p0
.end method

.method public scaleY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 582
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 583
    return-object p0
.end method

.method public scaleYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 595
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 596
    return-object p0
.end method

.method public setDuration(J)Landroid/view/ViewPropertyAnimator;
    .locals 3
    .parameter "duration"

    .prologue
    .line 248
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    .line 253
    iput-wide p1, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    .line 254
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "interpolator"

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    .line 321
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 322
    return-object p0
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .parameter "listener"

    .prologue
    .line 333
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 334
    return-object p0
.end method

.method public setStartDelay(J)Landroid/view/ViewPropertyAnimator;
    .locals 3
    .parameter "startDelay"

    .prologue
    .line 302
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    .line 307
    iput-wide p1, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    .line 308
    return-object p0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 346
    invoke-direct {p0}, Landroid/view/ViewPropertyAnimator;->startAnimation()V

    .line 347
    return-void
.end method

.method public translationX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 504
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 505
    return-object p0
.end method

.method public translationXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 517
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 518
    return-object p0
.end method

.method public translationY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 530
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 531
    return-object p0
.end method

.method public translationYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 543
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 544
    return-object p0
.end method

.method public withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "runnable"

    .prologue
    .line 711
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    .line 712
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 713
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    .line 715
    :cond_0
    return-object p0
.end method

.method public withLayer()Landroid/view/ViewPropertyAnimator;
    .locals 2

    .prologue
    .line 647
    new-instance v1, Landroid/view/ViewPropertyAnimator$2;

    invoke-direct {v1, p0}, Landroid/view/ViewPropertyAnimator$2;-><init>(Landroid/view/ViewPropertyAnimator;)V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    .line 653
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v0

    .line 654
    .local v0, currentLayerType:I
    new-instance v1, Landroid/view/ViewPropertyAnimator$3;

    invoke-direct {v1, p0, v0}, Landroid/view/ViewPropertyAnimator$3;-><init>(Landroid/view/ViewPropertyAnimator;I)V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    .line 660
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 661
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    .line 663
    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 664
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    .line 667
    :cond_1
    return-object p0
.end method

.method public withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "runnable"

    .prologue
    .line 682
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    .line 683
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    .line 686
    :cond_0
    return-object p0
.end method

.method public x(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 374
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 375
    return-object p0
.end method

.method public xBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 387
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 388
    return-object p0
.end method

.method public y(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 400
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 401
    return-object p0
.end method

.method public yBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .parameter "value"

    .prologue
    .line 413
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 414
    return-object p0
.end method
