.class final Landroid/view/Choreographer$CallbackQueue;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackQueue"
.end annotation


# instance fields
.field private mHead:Landroid/view/Choreographer$CallbackRecord;

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method private constructor <init>(Landroid/view/Choreographer;)V
    .locals 0
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 730
    invoke-direct {p0, p1}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "dueTime"
    .parameter "action"
    .parameter "token"

    .prologue
    .line 758
    iget-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    #calls: Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    invoke-static {v2, p1, p2, p3, p4}, Landroid/view/Choreographer;->access$500(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    .line 759
    .local v0, callback:Landroid/view/Choreographer$CallbackRecord;
    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 760
    .local v1, entry:Landroid/view/Choreographer$CallbackRecord;
    if-nez v1, :cond_0

    .line 761
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 777
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-wide v2, v1, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 765
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 766
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_0

    .line 774
    :cond_1
    iget-object v1, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 769
    :cond_2
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v2, :cond_3

    .line 770
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v2, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 771
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 776
    :cond_3
    iput-object v0, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_0
.end method

.method public extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    .locals 6
    .parameter "now"

    .prologue
    const/4 v3, 0x0

    .line 738
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 739
    .local v0, callbacks:Landroid/view/Choreographer$CallbackRecord;
    if-eqz v0, :cond_0

    iget-wide v4, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_1

    :cond_0
    move-object v0, v3

    .line 754
    .end local v0           #callbacks:Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    return-object v0

    .line 743
    .restart local v0       #callbacks:Landroid/view/Choreographer$CallbackRecord;
    :cond_1
    move-object v1, v0

    .line 744
    .local v1, last:Landroid/view/Choreographer$CallbackRecord;
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 745
    .local v2, next:Landroid/view/Choreographer$CallbackRecord;
    :goto_1
    if-eqz v2, :cond_2

    .line 746
    iget-wide v4, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_3

    .line 747
    iput-object v3, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 753
    :cond_2
    iput-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_0

    .line 750
    :cond_3
    move-object v1, v2

    .line 751
    iget-object v2, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_1
.end method

.method public hasDueCallbacksLocked(J)Z
    .locals 2
    .parameter "now"

    .prologue
    .line 734
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v0, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "action"
    .parameter "token"

    .prologue
    .line 780
    const/4 v2, 0x0

    .line 781
    .local v2, predecessor:Landroid/view/Choreographer$CallbackRecord;
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .local v0, callback:Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    if-eqz v0, :cond_4

    .line 782
    iget-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 783
    .local v1, next:Landroid/view/Choreographer$CallbackRecord;
    if-eqz p1, :cond_0

    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    if-ne v3, p1, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    if-ne v3, p2, :cond_3

    .line 785
    :cond_1
    if-eqz v2, :cond_2

    .line 786
    iput-object v1, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 790
    :goto_1
    iget-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    #calls: Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    invoke-static {v3, v0}, Landroid/view/Choreographer;->access$600(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V

    .line 794
    :goto_2
    move-object v0, v1

    .line 795
    goto :goto_0

    .line 788
    :cond_2
    iput-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_1

    .line 792
    :cond_3
    move-object v2, v0

    goto :goto_2

    .line 796
    .end local v1           #next:Landroid/view/Choreographer$CallbackRecord;
    :cond_4
    return-void
.end method
