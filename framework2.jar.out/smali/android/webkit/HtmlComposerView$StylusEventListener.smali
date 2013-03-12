.class Landroid/webkit/HtmlComposerView$StylusEventListener;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private final DELTA:I

.field private mDirLTR:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartX:F

.field private mStartY:F

.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method private constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2035
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2036
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    .line 2037
    iput v1, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    .line 2038
    iput v1, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartY:F

    .line 2039
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    .line 2040
    iput v1, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    .line 2041
    const/16 v0, 0xf

    iput v0, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->DELTA:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/HtmlComposerView;Landroid/webkit/HtmlComposerView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2035
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView$StylusEventListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 11
    .parameter "event"
    .parameter "clipboardId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x4170

    const/4 v8, 0x0

    .line 2044
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2045
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v3, v3, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    const-string v4, "onStylusButtonEvent HtmlComposerView has no focus"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_0
    :goto_0
    return-void

    .line 2049
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2050
    .local v0, action:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v3, v3, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStylusButtonEvent action = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_2
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 2056
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2058
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    .line 2059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartY:F

    .line 2060
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    .line 2061
    iput v10, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    .line 2063
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2064
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v1}, Landroid/webkit/HtmlComposerView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2065
    new-array v2, v9, [I

    .line 2066
    .local v2, rectInWindow:[I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v2}, Landroid/webkit/HtmlComposerView;->getLocationInWindow([I)V

    .line 2068
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    aget v5, v2, v8

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/webkit/HtmlComposerView;->mLocalStartX:I

    .line 2069
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/webkit/HtmlComposerView;->mLocalStartY:I

    goto :goto_0

    .line 2073
    .end local v1           #rect:Landroid/graphics/Rect;
    .end local v2           #rectInWindow:[I
    :pswitch_1
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    if-nez v3, :cond_3

    .line 2074
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v3, v3, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TextSelection is canceled mPressed = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2078
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2079
    .restart local v1       #rect:Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v1}, Landroid/webkit/HtmlComposerView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2080
    new-array v2, v9, [I

    .line 2081
    .restart local v2       #rectInWindow:[I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v2}, Landroid/webkit/HtmlComposerView;->getLocationInWindow([I)V

    .line 2083
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    aget v5, v2, v8

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/webkit/HtmlComposerView;->mLocalEndX:I

    .line 2084
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/webkit/HtmlComposerView;->mLocalEndY:I

    .line 2086
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v4, v4, Landroid/webkit/HtmlComposerView;->mLocalStartX:I

    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v5, v5, Landroid/webkit/HtmlComposerView;->mLocalStartY:I

    iget-object v6, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v6, v6, Landroid/webkit/HtmlComposerView;->mLocalEndX:I

    iget-object v7, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v7, v7, Landroid/webkit/HtmlComposerView;->mLocalEndY:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/HtmlComposerView;->selectBWStartAndEnd(IIII)V

    .line 2087
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v8}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2089
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    .line 2093
    .end local v1           #rect:Landroid/graphics/Rect;
    .end local v2           #rectInWindow:[I
    :pswitch_2
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    if-eqz v3, :cond_0

    .line 2097
    iget v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    cmpl-float v3, v3, v10

    if-nez v3, :cond_5

    .line 2098
    iget v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 2099
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    .line 2100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    .line 2101
    :cond_4
    iget v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 2102
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    .line 2103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    .line 2105
    :cond_5
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    if-eqz v3, :cond_7

    .line 2106
    iget v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    .line 2107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    .line 2108
    :cond_6
    iget v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 2109
    const-string v3, "HtmlComposerView"

    const-string v4, "TextSelection is canceled because of wrong X position, DirLTR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    .line 2112
    :cond_7
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    if-nez v3, :cond_0

    .line 2113
    iget v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    .line 2114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    .line 2115
    :cond_8
    iget v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    add-float/2addr v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 2116
    const-string v3, "HtmlComposerView"

    const-string v4, "TextSelection is canceled because of wrong X position, DirRTL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    .line 2123
    :pswitch_3
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    .line 2056
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
