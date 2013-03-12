.class Landroid/widget/AbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 4767
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4768
    #getter for: Landroid/widget/AdapterView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 4769
    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 5011
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getHeight()I

    move-result v19

    .line 5012
    .local v19, listHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v9, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5014
    .local v9, firstPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 5186
    :cond_0
    :goto_0
    return-void

    .line 5016
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v16, v31, -0x1

    .line 5017
    .local v16, lastViewIndex:I
    add-int v12, v9, v16

    .line 5019
    .local v12, lastPos:I
    if-ltz v16, :cond_0

    .line 5023
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v12, v0, :cond_1

    .line 5025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5029
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 5030
    .local v13, lastView:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 5031
    .local v15, lastViewHeight:I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v18

    .line 5032
    .local v18, lastViewTop:I
    sub-int v17, v19, v18

    .line 5033
    .local v17, lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5036
    .local v8, extraScroll:I
    :goto_1
    sub-int v31, v15, v17

    add-int v28, v31, v8

    .line 5037
    .local v28, scrollBy:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5039
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 5040
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v12, v0, :cond_0

    .line 5041
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5033
    .end local v8           #extraScroll:I
    .end local v28           #scrollBy:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 5047
    .end local v12           #lastPos:I
    .end local v13           #lastView:Landroid/view/View;
    .end local v15           #lastViewHeight:I
    .end local v16           #lastViewIndex:I
    .end local v17           #lastViewPixelsShowing:I
    .end local v18           #lastViewTop:I
    :pswitch_1
    const/16 v24, 0x1

    .line 5048
    .local v24, nextViewIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 5050
    .local v5, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v9, v0, :cond_0

    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v5, v0, :cond_0

    add-int v31, v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 5054
    add-int/lit8 v21, v9, 0x1

    .line 5056
    .local v21, nextPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 5058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5062
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 5063
    .local v22, nextView:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v23

    .line 5064
    .local v23, nextViewHeight:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v25

    .line 5065
    .local v25, nextViewTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5066
    .restart local v8       #extraScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    .line 5067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int v33, v23, v25

    sub-int v33, v33, v8

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5070
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 5072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5074
    :cond_4
    move/from16 v0, v25

    if-le v0, v8, :cond_0

    .line 5075
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v25, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 5082
    .end local v5           #childCount:I
    .end local v8           #extraScroll:I
    .end local v21           #nextPos:I
    .end local v22           #nextView:Landroid/view/View;
    .end local v23           #nextViewHeight:I
    .end local v24           #nextViewIndex:I
    .end local v25           #nextViewTop:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v9, v0, :cond_5

    .line 5084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5088
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5089
    .local v10, firstView:Landroid/view/View;
    if-eqz v10, :cond_0

    .line 5092
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 5093
    .local v11, firstViewTop:I
    if-lez v9, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5096
    .restart local v8       #extraScroll:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v11, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5098
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 5100
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v9, v0, :cond_0

    .line 5101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5093
    .end local v8           #extraScroll:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 5107
    .end local v10           #firstView:Landroid/view/View;
    .end local v11           #firstViewTop:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v16, v31, -0x2

    .line 5108
    .restart local v16       #lastViewIndex:I
    if-ltz v16, :cond_0

    .line 5111
    add-int v12, v9, v16

    .line 5113
    .restart local v12       #lastPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v12, v0, :cond_7

    .line 5115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5119
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 5120
    .restart local v13       #lastView:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 5121
    .restart local v15       #lastViewHeight:I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v18

    .line 5122
    .restart local v18       #lastViewTop:I
    sub-int v17, v19, v18

    .line 5123
    .restart local v17       #lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5124
    .restart local v8       #extraScroll:I
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 5125
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v12, v0, :cond_8

    .line 5126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v17, v8

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5129
    :cond_8
    sub-int v4, v19, v8

    .line 5130
    .local v4, bottom:I
    add-int v14, v18, v15

    .line 5131
    .local v14, lastViewBottom:I
    if-le v4, v14, :cond_0

    .line 5132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v4, v14

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 5139
    .end local v4           #bottom:I
    .end local v8           #extraScroll:I
    .end local v12           #lastPos:I
    .end local v13           #lastView:Landroid/view/View;
    .end local v14           #lastViewBottom:I
    .end local v15           #lastViewHeight:I
    .end local v16           #lastViewIndex:I
    .end local v17           #lastViewPixelsShowing:I
    .end local v18           #lastViewTop:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v9, :cond_9

    .line 5141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5145
    :cond_9
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 5147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 5148
    .restart local v5       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v26, v0

    .line 5149
    .local v26, position:I
    add-int v31, v9, v5

    add-int/lit8 v12, v31, -0x1

    .line 5151
    .restart local v12       #lastPos:I
    const/16 v30, 0x0

    .line 5152
    .local v30, viewTravelCount:I
    move/from16 v0, v26

    if-ge v0, v9, :cond_b

    .line 5153
    sub-int v31, v9, v26

    add-int/lit8 v30, v31, 0x1

    .line 5159
    :cond_a
    :goto_3
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v5

    move/from16 v32, v0

    div-float v27, v31, v32

    .line 5161
    .local v27, screenTravelCount:F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f80

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 5162
    .local v20, modifier:F
    move/from16 v0, v26

    if-ge v0, v9, :cond_c

    .line 5163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v6, v0

    .line 5164
    .local v6, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v7, v0

    .line 5165
    .local v7, duration:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5154
    .end local v6           #distance:I
    .end local v7           #duration:I
    .end local v20           #modifier:F
    .end local v27           #screenTravelCount:F
    :cond_b
    move/from16 v0, v26

    if-le v0, v12, :cond_a

    .line 5155
    sub-int v30, v26, v12

    goto :goto_3

    .line 5167
    .restart local v20       #modifier:F
    .restart local v27       #screenTravelCount:F
    :cond_c
    move/from16 v0, v26

    if-le v0, v12, :cond_d

    .line 5168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v6, v0

    .line 5169
    .restart local v6       #distance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v7, v0

    .line 5170
    .restart local v7       #duration:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5174
    .end local v6           #distance:I
    .end local v7           #duration:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    sub-int v32, v26, v9

    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v29

    .line 5175
    .local v29, targetTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v31, v0

    sub-int v6, v29, v31

    .line 5176
    .restart local v6       #distance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/AbsListView;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v7, v0

    .line 5178
    .restart local v7       #duration:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 5014
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method scrollToVisible(III)V
    .locals 17
    .parameter "targetPos"
    .parameter "boundPos"
    .parameter "duration"

    .prologue
    .line 4957
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, v14, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4958
    .local v6, firstPos:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 4959
    .local v5, childCount:I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 4960
    .local v7, lastPos:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v14, v14, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->top:I

    .line 4961
    .local v9, paddedTop:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v15, v15, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v14, v15

    .line 4963
    .local v8, paddedBottom:I
    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    .line 4964
    :cond_0
    const-string v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "scrollToVisible called with targetPos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not visible ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4967
    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    .line 4969
    :cond_2
    const/16 p2, -0x1

    .line 4972
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 4973
    .local v12, targetChild:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 4974
    .local v13, targetTop:I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 4975
    .local v11, targetBottom:I
    const/4 v10, 0x0

    .line 4977
    .local v10, scrollBy:I
    if-le v11, v8, :cond_4

    .line 4978
    sub-int v10, v11, v8

    .line 4980
    :cond_4
    if-ge v13, v9, :cond_5

    .line 4981
    sub-int v10, v13, v9

    .line 4984
    :cond_5
    if-nez v10, :cond_6

    .line 5004
    :goto_0
    return-void

    .line 4988
    :cond_6
    if-ltz p2, :cond_7

    .line 4989
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4990
    .local v3, boundChild:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 4991
    .local v4, boundTop:I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 4992
    .local v2, boundBottom:I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4994
    .local v1, absScroll:I
    if-gez v10, :cond_8

    add-int v14, v2, v1

    if-le v14, v8, :cond_8

    .line 4996
    const/4 v14, 0x0

    sub-int v15, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 5003
    .end local v1           #absScroll:I
    .end local v2           #boundBottom:I
    .end local v3           #boundChild:Landroid/view/View;
    .end local v4           #boundTop:I
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 4997
    .restart local v1       #absScroll:I
    .restart local v2       #boundBottom:I
    .restart local v3       #boundChild:Landroid/view/View;
    .restart local v4       #boundTop:I
    :cond_8
    if-lez v10, :cond_7

    sub-int v14, v4, v1

    if-ge v14, v9, :cond_7

    .line 4999
    const/4 v14, 0x0

    sub-int v15, v4, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1
.end method

.method start(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/16 v8, 0xc8

    const/4 v7, -0x1

    .line 4772
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4774
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v5, v5, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 4776
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v6, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v6, v5, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 4816
    :cond_0
    :goto_0
    return-void

    .line 4784
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4785
    .local v0, childCount:I
    if-eqz v0, :cond_0

    .line 4790
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4791
    .local v2, firstPos:I
    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    .line 4794
    .local v3, lastPos:I
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4795
    .local v1, clampedPosition:I
    if-ge v1, v2, :cond_2

    .line 4796
    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    .line 4797
    .local v4, viewTravelCount:I
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 4806
    :goto_1
    if-lez v4, :cond_4

    .line 4807
    div-int v5, v8, v4

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 4811
    :goto_2
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 4812
    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 4813
    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4815
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4798
    .end local v4           #viewTravelCount:I
    :cond_2
    if-le v1, v3, :cond_3

    .line 4799
    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 4800
    .restart local v4       #viewTravelCount:I
    const/4 v5, 0x1

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4802
    .end local v4           #viewTravelCount:I
    :cond_3
    invoke-virtual {p0, v1, v7, v8}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 4809
    .restart local v4       #viewTravelCount:I
    :cond_4
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method start(II)V
    .locals 11
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 4819
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4821
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 4822
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 4894
    :cond_0
    :goto_0
    return-void

    .line 4826
    :cond_1
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v9, v9, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v9, :cond_2

    .line 4828
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v10, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v10, v9, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    goto :goto_0

    .line 4836
    :cond_2
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 4837
    .local v3, childCount:I
    if-eqz v3, :cond_0

    .line 4842
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v5, v9, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4843
    .local v5, firstPos:I
    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    .line 4846
    .local v6, lastPos:I
    const/4 v9, 0x0

    iget-object v10, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4847
    .local v4, clampedPosition:I
    if-ge v4, v5, :cond_4

    .line 4848
    sub-int v1, v6, p2

    .line 4849
    .local v1, boundPosFromLast:I
    const/4 v9, 0x1

    if-lt v1, v9, :cond_0

    .line 4854
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    .line 4855
    .local v7, posTravel:I
    add-int/lit8 v2, v1, -0x1

    .line 4856
    .local v2, boundTravel:I
    if-ge v2, v7, :cond_3

    .line 4857
    move v8, v2

    .line 4858
    .local v8, viewTravelCount:I
    const/4 v9, 0x4

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 4884
    .end local v1           #boundPosFromLast:I
    :goto_1
    if-lez v8, :cond_7

    .line 4885
    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 4889
    :goto_2
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 4890
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 4891
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4893
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4860
    .end local v8           #viewTravelCount:I
    .restart local v1       #boundPosFromLast:I
    :cond_3
    move v8, v7

    .line 4861
    .restart local v8       #viewTravelCount:I
    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4863
    .end local v1           #boundPosFromLast:I
    .end local v2           #boundTravel:I
    .end local v7           #posTravel:I
    .end local v8           #viewTravelCount:I
    :cond_4
    if-le v4, v6, :cond_6

    .line 4864
    sub-int v0, p2, v5

    .line 4865
    .local v0, boundPosFromFirst:I
    const/4 v9, 0x1

    if-lt v0, v9, :cond_0

    .line 4870
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    .line 4871
    .restart local v7       #posTravel:I
    add-int/lit8 v2, v0, -0x1

    .line 4872
    .restart local v2       #boundTravel:I
    if-ge v2, v7, :cond_5

    .line 4873
    move v8, v2

    .line 4874
    .restart local v8       #viewTravelCount:I
    const/4 v9, 0x3

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4876
    .end local v8           #viewTravelCount:I
    :cond_5
    move v8, v7

    .line 4877
    .restart local v8       #viewTravelCount:I
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4880
    .end local v0           #boundPosFromFirst:I
    .end local v2           #boundTravel:I
    .end local v7           #posTravel:I
    .end local v8           #viewTravelCount:I
    :cond_6
    const/16 v9, 0xc8

    invoke-virtual {p0, v4, p2, v9}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 4887
    .restart local v2       #boundTravel:I
    .restart local v7       #posTravel:I
    .restart local v8       #viewTravelCount:I
    :cond_7
    const/16 v9, 0xc8

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method startWithOffset(II)V
    .locals 1
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 4897
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 4898
    return-void
.end method

.method startWithOffset(III)V
    .locals 10
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v9, -0x1

    .line 4901
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4903
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v7, v7, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v7, :cond_1

    .line 4905
    move v3, p2

    .line 4906
    .local v3, postOffset:I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v8, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, v3, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v8, v7, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 4950
    .end local v3           #postOffset:I
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 4914
    .restart local p3
    :cond_1
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4915
    .local v0, childCount:I
    if-eqz v0, :cond_0

    .line 4920
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v7

    add-int/2addr p2, v7

    .line 4922
    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 4923
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 4924
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 4925
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4926
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 4928
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4929
    .local v1, firstPos:I
    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    .line 4932
    .local v2, lastPos:I
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v7, v1, :cond_2

    .line 4933
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v1, v7

    .line 4944
    .local v6, viewTravelCount:I
    :goto_1
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 4945
    .local v4, screenTravelCount:F
    const/high16 v7, 0x3f80

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .end local p3
    :goto_2
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 4947
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4949
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4934
    .end local v4           #screenTravelCount:F
    .end local v6           #viewTravelCount:I
    .restart local p3
    :cond_2
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v7, v2, :cond_3

    .line 4935
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v7, v2

    .restart local v6       #viewTravelCount:I
    goto :goto_1

    .line 4938
    .end local v6           #viewTravelCount:I
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4939
    .local v5, targetTop:I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 4945
    .end local v5           #targetTop:I
    .restart local v4       #screenTravelCount:F
    .restart local v6       #viewTravelCount:I
    :cond_4
    int-to-float v7, p3

    div-float/2addr v7, v4

    float-to-int p3, v7

    goto :goto_2
.end method

.method stop()V
    .locals 1

    .prologue
    .line 5007
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5008
    return-void
.end method
