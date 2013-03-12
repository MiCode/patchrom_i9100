.class public Landroid/view/KeyEvent$DispatcherState;
.super Ljava/lang/Object;
.source "KeyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatcherState"
.end annotation


# instance fields
.field mActiveLongPresses:Landroid/util/SparseIntArray;

.field mDownKeyCode:I

.field mDownTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2757
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2760
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public handleUpEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 2828
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2830
    .local v1, keyCode:I
    iget-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 2831
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 2833
    const/16 v2, 0x120

    invoke-static {p1, v2}, Landroid/view/KeyEvent;->access$076(Landroid/view/KeyEvent;I)I

    .line 2834
    iget-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2836
    :cond_0
    iget v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    if-ne v2, v1, :cond_1

    .line 2838
    const/16 v2, 0x200

    invoke-static {p1, v2}, Landroid/view/KeyEvent;->access$076(Landroid/view/KeyEvent;I)I

    .line 2839
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 2840
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 2842
    :cond_1
    return-void
.end method

.method public isTracking(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 2808
    iget v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performedLongPress(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 2818
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2819
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 2767
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 2768
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 2769
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2770
    return-void
.end method

.method public reset(Ljava/lang/Object;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 2776
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 2778
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 2779
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 2781
    :cond_0
    return-void
.end method

.method public startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V
    .locals 2
    .parameter "event"
    .parameter "target"

    .prologue
    .line 2794
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2795
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only start tracking on a down event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2799
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 2800
    iput-object p2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 2801
    return-void
.end method
