.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$1;,
        Landroid/widget/AdapterView$SelectionNotifier;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$AdapterContextMenuInfo;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 67
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 84
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 152
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 84
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 152
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 84
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 152
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 239
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setImportantForAccessibility(I)V

    .line 242
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 889
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 900
    :goto_0
    return-void

    .line 892
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 893
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 894
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 895
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 898
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    .line 964
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 965
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_1

    .line 966
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 967
    .local v1, itemCount:I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 970
    .end local v1           #itemCount:I
    :cond_1
    return v2
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 2

    .prologue
    .line 903
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v1, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 907
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 909
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 733
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const/4 p1, 0x0

    .line 737
    :cond_0
    if-eqz p1, :cond_3

    .line 738
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 739
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 740
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 749
    :goto_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 750
    iget v2, p0, Landroid/widget/AdapterView;->mLeft:I

    iget v3, p0, Landroid/widget/AdapterView;->mTop:I

    iget v4, p0, Landroid/widget/AdapterView;->mRight:I

    iget v5, p0, Landroid/widget/AdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 756
    :cond_1
    :goto_1
    return-void

    .line 743
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 753
    :cond_3
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 754
    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 454
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 467
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 495
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 480
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 975
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 714
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 715
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 716
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 720
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 721
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 722
    iget-object v3, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 723
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 725
    :cond_4
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_5
    move v1, v5

    .line 715
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_6
    move v2, v5

    .line 716
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_7
    move v3, v5

    .line 720
    goto :goto_2

    :cond_8
    move v3, v5

    .line 721
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1045
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1046
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 1047
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1048
    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1050
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 915
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 916
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    const/4 v1, 0x1

    .line 920
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 794
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 786
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 1061
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1063
    .local v2, count:I
    if-nez v2, :cond_1

    .line 1064
    const/4 v14, -0x1

    .line 1136
    :cond_0
    :goto_0
    return v14

    .line 1067
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1068
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1071
    .local v14, seed:I
    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    .line 1072
    const/4 v14, -0x1

    goto :goto_0

    .line 1076
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1077
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1079
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1084
    .local v3, endTime:J
    move v5, v14

    .line 1087
    .local v5, first:I
    move v10, v14

    .line 1090
    .local v10, last:I
    const/4 v11, 0x0

    .line 1100
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1101
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_5

    .line 1102
    const/4 v14, -0x1

    goto :goto_0

    .line 1120
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v12, rowId:J
    :cond_3
    if-nez v6, :cond_4

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    .line 1122
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 1123
    move v14, v10

    .line 1125
    const/4 v11, 0x0

    .line 1105
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_6

    .line 1106
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1107
    .restart local v12       #rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 1112
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_7

    const/4 v7, 0x1

    .line 1113
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 1115
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 1136
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_6
    const/4 v14, -0x1

    goto :goto_0

    .line 1112
    .restart local v12       #rowId:J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 1113
    .restart local v7       #hitLast:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1126
    .restart local v6       #hitFirst:Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v11, :cond_5

    if-nez v6, :cond_5

    .line 1128
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 1129
    move v14, v5

    .line 1131
    const/4 v11, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 584
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 674
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 627
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 765
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 766
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 770
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 771
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v1, -0x8000

    :goto_0
    return-wide v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 637
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 281
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 349
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 395
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v5, -0x1

    .line 597
    move-object v3, p1

    .line 600
    .local v3, listItem:Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 601
    move-object v3, v4

    goto :goto_0

    .line 603
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 617
    :cond_0
    :goto_1
    return v5

    .line 609
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 610
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 611
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 612
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 610
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 568
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 569
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 570
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 571
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 573
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 554
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 545
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 979
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 980
    .local v0, count:I
    const/4 v1, 0x0

    .line 982
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 987
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 990
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 994
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 995
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 997
    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 998
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 1000
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1001
    const/4 v1, 0x1

    .line 1005
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 1007
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1010
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 1011
    add-int/lit8 v2, v0, -0x1

    .line 1013
    :cond_1
    if-gez v2, :cond_2

    .line 1014
    const/4 v2, 0x0

    .line 1018
    :cond_2
    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1019
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 1021
    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1023
    :cond_3
    if-ltz v3, :cond_4

    .line 1024
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1025
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1026
    const/4 v1, 0x1

    .line 1030
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 1032
    iput v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1033
    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1034
    iput v6, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1035
    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1036
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1037
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1041
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->notifyAccessibilityStateChanged()V

    .line 1042
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 684
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1148
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 849
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 850
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 851
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 950
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 951
    const-class v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 952
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 953
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 954
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 957
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 958
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 959
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 960
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 961
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 939
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 940
    const-class v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 941
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 942
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 943
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 946
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 535
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    .line 536
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 925
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 928
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 930
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 931
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 932
    const/4 v1, 0x1

    .line 934
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    instance-of v1, v1, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v1, :cond_0

    .line 296
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    .line 298
    :cond_0
    if-eqz p1, :cond_1

    .line 299
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 301
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 305
    :cond_2
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1181
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1182
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1183
    iget v2, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1184
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1186
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1187
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1188
    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1189
    if-eqz v1, :cond_0

    .line 1190
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1192
    :cond_0
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1209
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1195
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1196
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1197
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1198
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1202
    :goto_1
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1203
    if-eqz v1, :cond_3

    .line 1204
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1206
    :cond_3
    iput v5, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 1200
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 530
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 508
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 520
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 870
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 872
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 877
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_2

    .line 878
    new-instance v0, Landroid/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$1;)V

    iput-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 880
    :cond_2
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 886
    :cond_3
    :goto_0
    return-void

    .line 882
    :cond_4
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    .line 883
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .parameter "emptyView"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x1

    .line 653
    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 656
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 658
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 661
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 662
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 663
    .local v1, empty:Z
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 664
    return-void

    .line 662
    .end local v1           #empty:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 689
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 690
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 692
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 693
    if-nez p1, :cond_1

    .line 694
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 697
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 698
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 690
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 697
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 702
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 703
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 705
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 706
    if-eqz p1, :cond_1

    .line 707
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 710
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 711
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 703
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 710
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1166
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1167
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1169
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1170
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1171
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1173
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 776
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 273
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 274
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 338
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    .line 341
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 342
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 391
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 392
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1156
    .local p0, this:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1157
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1158
    return-void
.end method

.method public abstract setSelection(I)V
.end method
