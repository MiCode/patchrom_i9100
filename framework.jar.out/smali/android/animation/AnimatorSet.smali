.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$Node;,
        Landroid/animation/AnimatorSet$Dependency;,
        Landroid/animation/AnimatorSet$AnimatorSetListener;,
        Landroid/animation/AnimatorSet$DependencyListener;
    }
.end annotation


# instance fields
.field private mDelayAnim:Landroid/animation/ValueAnimator;

.field private mDuration:J

.field private mNeedsSort:Z

.field private mNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStarted:Z

.field mTerminated:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 94
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 103
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 109
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 115
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 1021
    return-void
.end method

.method static synthetic access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/animation/AnimatorSet;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Landroid/animation/AnimatorSet;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return p1
.end method

.method static synthetic access$400(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private sortNodes()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 794
    iget-boolean v11, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    if-eqz v11, :cond_7

    .line 795
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 796
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v9, roots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 798
    .local v6, numNodes:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 799
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 800
    .local v3, node:Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 801
    :cond_0
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    .end local v3           #node:Landroid/animation/AnimatorSet$Node;
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v10, tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 806
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 807
    .local v7, numRoots:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_5

    .line 808
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .line 809
    .local v8, root:Landroid/animation/AnimatorSet$Node;
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    .line 811
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 812
    .local v5, numDependents:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v5, :cond_4

    .line 813
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 814
    .restart local v3       #node:Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 815
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 816
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 807
    .end local v2           #j:I
    .end local v3           #node:Landroid/animation/AnimatorSet$Node;
    .end local v5           #numDependents:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 821
    .end local v8           #root:Landroid/animation/AnimatorSet$Node;
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 822
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 823
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 825
    .end local v7           #numRoots:I
    :cond_6
    iput-boolean v13, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 826
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v11, v12, :cond_b

    .line 827
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 834
    .end local v1           #i:I
    .end local v6           #numNodes:I
    .end local v9           #roots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    .end local v10           #tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :cond_7
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 835
    .restart local v6       #numNodes:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-ge v1, v6, :cond_b

    .line 836
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 837
    .restart local v3       #node:Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_a

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_a

    .line 838
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 839
    .local v4, numDependencies:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_5
    if-ge v2, v4, :cond_a

    .line 840
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Dependency;

    .line 841
    .local v0, dependency:Landroid/animation/AnimatorSet$Dependency;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v11, :cond_8

    .line 842
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 844
    :cond_8
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 845
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 851
    .end local v0           #dependency:Landroid/animation/AnimatorSet$Dependency;
    .end local v2           #j:I
    .end local v4           #numDependencies:I
    :cond_a
    iput-boolean v13, v3, Landroid/animation/AnimatorSet$Node;->done:Z

    .line 835
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 854
    .end local v3           #node:Landroid/animation/AnimatorSet$Node;
    :cond_b
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 289
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 290
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 291
    const/4 v3, 0x0

    .line 292
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 293
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 294
    .restart local v3       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 295
    .local v1, listener:Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 298
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 301
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 307
    :cond_1
    if-eqz v3, :cond_3

    .line 308
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 309
    .restart local v1       #listener:Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .line 302
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/animation/Animator$AnimatorListener;
    :cond_2
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 303
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 304
    .local v2, node:Landroid/animation/AnimatorSet$Node;
    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    goto :goto_2

    .line 312
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #node:Landroid/animation/AnimatorSet$Node;
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 314
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/AnimatorSet;
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 560
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 569
    .local v0, anim:Landroid/animation/AnimatorSet;
    const/4 v12, 0x1

    iput-boolean v12, v0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 570
    iput-boolean v13, v0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 571
    iput-boolean v13, v0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 572
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 573
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v0, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 574
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 575
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 580
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 581
    .local v11, nodeCloneMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;>;"
    iget-object v12, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 582
    .local v9, node:Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v9}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v10

    .line 583
    .local v10, nodeClone:Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object v12, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v12, v0, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    iget-object v13, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v12, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iput-object v14, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 588
    iput-object v14, v10, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 589
    iput-object v14, v10, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 590
    iput-object v14, v10, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 593
    iget-object v12, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v12}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    .line 594
    .local v2, cloneListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v2, :cond_0

    .line 595
    const/4 v8, 0x0

    .line 596
    .local v8, listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    .line 597
    .local v7, listener:Landroid/animation/Animator$AnimatorListener;
    instance-of v12, v7, Landroid/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v12, :cond_1

    .line 598
    if-nez v8, :cond_2

    .line 599
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .restart local v8       #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    .end local v7           #listener:Landroid/animation/Animator$AnimatorListener;
    :cond_3
    if-eqz v8, :cond_0

    .line 605
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    .line 606
    .restart local v7       #listener:Landroid/animation/Animator$AnimatorListener;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 613
    .end local v2           #cloneListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #listener:Landroid/animation/Animator$AnimatorListener;
    .end local v8           #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v9           #node:Landroid/animation/AnimatorSet$Node;
    .end local v10           #nodeClone:Landroid/animation/AnimatorSet$Node;
    :cond_4
    iget-object v12, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 614
    .restart local v9       #node:Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .line 615
    .restart local v10       #nodeClone:Landroid/animation/AnimatorSet$Node;
    iget-object v12, v9, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    .line 616
    iget-object v12, v9, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Dependency;

    .line 617
    .local v4, dependency:Landroid/animation/AnimatorSet$Dependency;
    iget-object v12, v4, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 618
    .local v3, clonedDependencyNode:Landroid/animation/AnimatorSet$Node;
    new-instance v1, Landroid/animation/AnimatorSet$Dependency;

    iget v12, v4, Landroid/animation/AnimatorSet$Dependency;->rule:I

    invoke-direct {v1, v3, v12}, Landroid/animation/AnimatorSet$Dependency;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 620
    .local v1, cloneDependency:Landroid/animation/AnimatorSet$Dependency;
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet$Node;->addDependency(Landroid/animation/AnimatorSet$Dependency;)V

    goto :goto_2

    .line 625
    .end local v1           #cloneDependency:Landroid/animation/AnimatorSet$Dependency;
    .end local v3           #clonedDependencyNode:Landroid/animation/AnimatorSet$Node;
    .end local v4           #dependency:Landroid/animation/AnimatorSet$Dependency;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #node:Landroid/animation/AnimatorSet$Node;
    .end local v10           #nodeClone:Landroid/animation/AnimatorSet$Node;
    :cond_6
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 6

    .prologue
    .line 324
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 325
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 326
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 328
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    .line 329
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 330
    .local v2, node:Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    if-nez v4, :cond_0

    .line 331
    new-instance v4, Landroid/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v4, p0, p0}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v4, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 333
    :cond_0
    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 336
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #node:Landroid/animation/AnimatorSet$Node;
    :cond_1
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    .line 337
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 339
    :cond_2
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 340
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 341
    .restart local v2       #node:Landroid/animation/AnimatorSet$Node;
    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->end()V

    goto :goto_1

    .line 344
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #node:Landroid/animation/AnimatorSet$Node;
    :cond_3
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 345
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 347
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 348
    .local v1, listener:Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_2

    .line 351
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/animation/Animator$AnimatorListener;
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 353
    :cond_5
    return-void
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 207
    .local v2, node:Landroid/animation/AnimatorSet$Node;
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v2           #node:Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 407
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    .line 362
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 363
    .local v1, node:Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    const/4 v2, 0x1

    .line 367
    .end local v1           #node:Landroid/animation/AnimatorSet$Node;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 1
    .parameter "anim"

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 275
    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 277
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x1

    .line 184
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 185
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 187
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 194
    :cond_0
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 190
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .locals 3
    .parameter "items"

    .prologue
    const/4 v2, 0x1

    .line 165
    if-eqz p1, :cond_0

    .line 166
    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 167
    array-length v1, p1

    if-ne v1, v2, :cond_1

    .line 168
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 175
    :cond_0
    return-void

    .line 170
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 171
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 146
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, builder:Landroid/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 149
    .local v0, anim:Landroid/animation/Animator;
    if-nez v1, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 156
    .end local v0           #anim:Landroid/animation/Animator;
    .end local v1           #builder:Landroid/animation/AnimatorSet$Builder;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public varargs playTogether([Landroid/animation/Animator;)V
    .locals 3
    .parameter "items"

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 132
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 133
    .local v0, builder:Landroid/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 134
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v0           #builder:Landroid/animation/AnimatorSet$Builder;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/AnimatorSet;
    .locals 2
    .parameter "duration"

    .prologue
    .line 420
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 425
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 3
    .parameter "interpolator"

    .prologue
    .line 239
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 240
    .local v1, node:Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 242
    .end local v1           #node:Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public setStartDelay(J)V
    .locals 0
    .parameter "startDelay"

    .prologue
    .line 394
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 395
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 221
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 222
    .local v2, node:Landroid/animation/AnimatorSet$Node;
    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    .line 223
    .local v0, animation:Landroid/animation/Animator;
    instance-of v3, v0, Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    .line 224
    check-cast v0, Landroid/animation/AnimatorSet;

    .end local v0           #animation:Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    .restart local v0       #animation:Landroid/animation/Animator;
    :cond_1
    instance-of v3, v0, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    .line 226
    check-cast v0, Landroid/animation/ObjectAnimator;

    .end local v0           #animation:Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    .end local v2           #node:Landroid/animation/AnimatorSet$Node;
    :cond_2
    return-void
.end method

.method public setupEndValues()V
    .locals 3

    .prologue
    .line 437
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 438
    .local v1, node:Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->setupEndValues()V

    goto :goto_0

    .line 440
    .end local v1           #node:Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 3

    .prologue
    .line 430
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 431
    .local v1, node:Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->setupStartValues()V

    goto :goto_0

    .line 433
    .end local v1           #node:Landroid/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 20

    .prologue
    .line 452
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 453
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 455
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mDuration:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_0

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 460
    .local v9, node:Landroid/animation/AnimatorSet$Node;
    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mDuration:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_0

    .line 465
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #node:Landroid/animation/AnimatorSet$Node;
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 468
    .local v13, numSortedNodes:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v13, :cond_4

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 471
    .restart local v9       #node:Landroid/animation/AnimatorSet$Node;
    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v14

    .line 472
    .local v14, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_3

    .line 473
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 476
    .local v3, clonedListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator$AnimatorListener;

    .line 477
    .local v8, listener:Landroid/animation/Animator$AnimatorListener;
    instance-of v0, v8, Landroid/animation/AnimatorSet$DependencyListener;

    move/from16 v16, v0

    if-nez v16, :cond_2

    instance-of v0, v8, Landroid/animation/AnimatorSet$AnimatorSetListener;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 479
    :cond_2
    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 468
    .end local v3           #clonedListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #listener:Landroid/animation/Animator$AnimatorListener;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 489
    .end local v9           #node:Landroid/animation/AnimatorSet$Node;
    .end local v14           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v10, nodesToStart:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v13, :cond_9

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 492
    .restart local v9       #node:Landroid/animation/AnimatorSet$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 493
    new-instance v16, Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 495
    :cond_5
    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_7

    .line 496
    :cond_6
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :goto_4
    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 498
    :cond_7
    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 499
    .local v11, numDependencies:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_5
    if-ge v7, v11, :cond_8

    .line 500
    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Dependency;

    .line 501
    .local v4, dependency:Landroid/animation/AnimatorSet$Dependency;
    iget-object v0, v4, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    new-instance v17, Landroid/animation/AnimatorSet$DependencyListener;

    iget v0, v4, Landroid/animation/AnimatorSet$Dependency;->rule:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v9, v2}, Landroid/animation/AnimatorSet$DependencyListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual/range {v16 .. v17}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 499
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 504
    .end local v4           #dependency:Landroid/animation/AnimatorSet$Dependency;
    :cond_8
    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iput-object v0, v9, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_4

    .line 509
    .end local v7           #j:I
    .end local v9           #node:Landroid/animation/AnimatorSet$Node;
    .end local v11           #numDependencies:I
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_a

    .line 510
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 511
    .restart local v9       #node:Landroid/animation/AnimatorSet$Node;
    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/Animator;->start()V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 515
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #node:Landroid/animation/AnimatorSet$Node;
    :cond_a
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    invoke-static/range {v16 .. v16}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v16, v0

    new-instance v17, Landroid/animation/AnimatorSet$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual/range {v16 .. v17}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->start()V

    .line 535
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 538
    .local v15, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 539
    .local v12, numListeners:I
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v12, :cond_c

    .line 540
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 539
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 543
    .end local v12           #numListeners:I
    .end local v15           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_d

    .line 546
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 550
    .restart local v15       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 551
    .restart local v12       #numListeners:I
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v12, :cond_d

    .line 552
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 551
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 556
    .end local v12           #numListeners:I
    .end local v15           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_d
    return-void

    .line 515
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
