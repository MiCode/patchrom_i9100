.class Landroid/widget/AbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 7174
    iput-object p1, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7174
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 7176
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 7268
    :cond_0
    :goto_0
    return-void

    .line 7178
    :pswitch_0
    const/4 v5, 0x0

    .line 7180
    .local v5, offset:I
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    #setter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$4702(Landroid/widget/AbsListView;I)I

    .line 7181
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionStartTime:I
    invoke-static {v9}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit16 v8, v8, 0x3e8

    #setter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$4802(Landroid/widget/AbsListView;I)I

    .line 7183
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollStartTime:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$5000(Landroid/widget/AbsListView;)I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollTimeInterval:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 7186
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 7191
    .local v4, count:I
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v4

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v7, v8, :cond_6

    const/4 v1, 0x1

    .line 7193
    .local v1, canScrollDown:Z
    :goto_1
    if-nez v1, :cond_2

    if-lez v4, :cond_2

    .line 7194
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7195
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AdapterView;->mBottom:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_7

    :cond_1
    const/4 v1, 0x1

    .line 7200
    .end local v3           #child:Landroid/view/View;
    :cond_2
    :goto_2
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_8

    const/4 v2, 0x1

    .line 7202
    .local v2, canScrollUp:Z
    :goto_3
    if-nez v2, :cond_3

    .line 7203
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 7204
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7205
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_9

    const/4 v2, 0x1

    .line 7209
    .end local v3           #child:Landroid/view/View;
    :cond_3
    :goto_4
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_a

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_a

    .line 7210
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$5400(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$5302(Landroid/widget/AbsListView;I)I

    .line 7218
    :goto_5
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    .line 7219
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$5300(Landroid/widget/AbsListView;)I

    move-result v7

    mul-int/lit8 v5, v7, -0x1

    .line 7224
    :goto_6
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 7228
    if-gez v5, :cond_4

    if-nez v2, :cond_5

    :cond_4
    if-lez v5, :cond_e

    if-eqz v1, :cond_e

    .line 7229
    :cond_5
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 7230
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$HoverScrollHandler;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v9}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7191
    .end local v1           #canScrollDown:Z
    .end local v2           #canScrollUp:Z
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 7195
    .restart local v1       #canScrollDown:Z
    .restart local v3       #child:Landroid/view/View;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 7200
    .end local v3           #child:Landroid/view/View;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 7205
    .restart local v2       #canScrollUp:Z
    .restart local v3       #child:Landroid/view/View;
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 7211
    .end local v3           #child:Landroid/view/View;
    :cond_a
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_b

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_b

    .line 7212
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$5400(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$5302(Landroid/widget/AbsListView;I)I

    goto :goto_5

    .line 7213
    :cond_b
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_c

    .line 7214
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$5400(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$5302(Landroid/widget/AbsListView;I)I

    goto/16 :goto_5

    .line 7216
    :cond_c
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$5400(Landroid/widget/AbsListView;)I

    move-result v8

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$5302(Landroid/widget/AbsListView;I)I

    goto/16 :goto_5

    .line 7221
    :cond_d
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$5300(Landroid/widget/AbsListView;)I

    move-result v7

    mul-int/lit8 v5, v7, 0x1

    goto/16 :goto_6

    .line 7233
    :cond_e
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v6

    .line 7234
    .local v6, overscrollMode:I
    if-eqz v6, :cond_f

    const/4 v7, 0x1

    if-ne v6, v7, :cond_14

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_14

    :cond_f
    const/4 v0, 0x1

    .line 7237
    .local v0, canOverscroll:Z
    :goto_7
    if-eqz v0, :cond_13

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 7238
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_15

    .line 7239
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 7240
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_10

    .line 7241
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 7250
    :cond_10
    :goto_8
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_12

    .line 7252
    :cond_11
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->invalidate()V

    .line 7255
    :cond_12
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x1

    #setter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$5802(Landroid/widget/AbsListView;Z)Z

    .line 7258
    :cond_13
    if-nez v0, :cond_0

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 7259
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x1

    #setter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$5802(Landroid/widget/AbsListView;Z)Z

    goto/16 :goto_0

    .line 7234
    .end local v0           #canOverscroll:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_7

    .line 7243
    .restart local v0       #canOverscroll:Z
    :cond_15
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    .line 7244
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 7245
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_10

    .line 7246
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_8

    .line 7176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
