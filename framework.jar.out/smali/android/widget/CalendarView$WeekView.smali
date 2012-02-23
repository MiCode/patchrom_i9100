.class Landroid/widget/CalendarView$WeekView;
.super Landroid/view/View;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekView"
.end annotation


# instance fields
.field private mDayNumbers:[Ljava/lang/String;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFirstDay:Ljava/util/Calendar;

.field private mFocusDay:[Z

.field private mHasSelectedDay:Z

.field private mHeight:I

.field private mLastWeekDayMonth:I

.field private final mMonthNumDrawPaint:Landroid/graphics/Paint;

.field private mMonthOfFirstWeekDay:I

.field private mNumCells:I

.field private mSelectedDay:I

.field private mSelectedLeft:I

.field private mSelectedRight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWeek:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/CalendarView;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 1229
    iput-object p1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    .line 1230
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 1185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 1187
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 1199
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    .line 1202
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    .line 1206
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    .line 1215
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    .line 1218
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    .line 1224
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    .line 1227
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    .line 1232
    #getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {p1}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    #getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {p1}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    #getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {p1}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    #getter for: Landroid/widget/CalendarView;->mShownWeekCount:I
    invoke-static {p1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    .line 1236
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->setPaintProperties()V

    .line 1237
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1377
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    .line 1391
    :goto_0
    return-void

    .line 1380
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2600(Landroid/widget/CalendarView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1382
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1383
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1384
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v0, v2

    :goto_1
    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1385
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1386
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1388
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1389
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1390
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1384
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 1446
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    .line 1457
    :goto_0
    return-void

    .line 1449
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3200(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$3100(Landroid/widget/CalendarView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView;->access$3100(Landroid/widget/CalendarView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1452
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3200(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1453
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3200(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$3100(Landroid/widget/CalendarView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView;->access$3100(Landroid/widget/CalendarView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1456
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3200(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawWeekNumbers(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1399
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    .line 1400
    .local v3, textHeight:F
    iget v6, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v7

    sub-int v5, v6, v7

    .line 1401
    .local v5, y:I
    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    .line 1403
    .local v2, nDays:I
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1404
    const/4 v1, 0x0

    .line 1405
    .local v1, i:I
    mul-int/lit8 v0, v2, 0x2

    .line 1406
    .local v0, divisor:I
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v6}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1407
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekNumberColor:I
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2800(Landroid/widget/CalendarView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1408
    iget v6, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    div-int v4, v6, v0

    .line 1409
    .local v4, x:I
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1410
    add-int/lit8 v1, v1, 0x1

    .line 1412
    .end local v4           #x:I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1413
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mFocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView;->access$2500(Landroid/widget/CalendarView;)I

    move-result v6

    :goto_1
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1415
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v6, v7

    div-int v4, v6, v0

    .line 1416
    .restart local v4       #x:I
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v1

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1413
    .end local v4           #x:I
    :cond_1
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView;->access$2900(Landroid/widget/CalendarView;)I

    move-result v6

    goto :goto_1

    .line 1418
    :cond_2
    return-void
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1427
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    .line 1428
    .local v6, firstFullyVisiblePosition:I
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_0

    .line 1429
    add-int/lit8 v6, v6, 0x1

    .line 1431
    :cond_0
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    if-ne v6, v0, :cond_1

    .line 1438
    :goto_0
    return-void

    .line 1434
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$3000(Landroid/widget/CalendarView;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1435
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1436
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v0, v3

    int-to-float v1, v0

    .line 1437
    .local v1, x:F
    :goto_1
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    int-to-float v3, v0

    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .end local v1           #x:F
    :cond_2
    move v1, v2

    .line 1436
    goto :goto_1
.end method

.method private setPaintProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1302
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1303
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1304
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1305
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1307
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1308
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1309
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1310
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mFocusedMonthDateColor:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2500(Landroid/widget/CalendarView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1311
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1312
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1313
    return-void
.end method

.method private updateSelectionPositions()V
    .locals 3

    .prologue
    .line 1469
    iget-boolean v1, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-eqz v1, :cond_2

    .line 1470
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1600(Landroid/widget/CalendarView;)I

    move-result v2

    sub-int v0, v1, v2

    .line 1471
    .local v0, selectedPosition:I
    if-gez v0, :cond_0

    .line 1472
    add-int/lit8 v0, v0, 0x7

    .line 1474
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1475
    add-int/lit8 v0, v0, 0x1

    .line 1477
    :cond_1
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v1, v2

    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    .line 1478
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v1, v2

    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    .line 1480
    .end local v0           #selectedPosition:I
    :cond_2
    return-void
.end method


# virtual methods
.method public getDayFromLocation(FLjava/util/Calendar;)Z
    .locals 5
    .parameter "x"
    .parameter "outCalendar"

    .prologue
    const/4 v2, 0x0

    .line 1350
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int v1, v3, v4

    .line 1351
    .local v1, dayStart:I
    :goto_0
    int-to-float v3, v1

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    .line 1352
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 1360
    :goto_1
    return v2

    .end local v1           #dayStart:I
    :cond_1
    move v1, v2

    .line 1350
    goto :goto_0

    .line 1356
    .restart local v1       #dayStart:I
    :cond_2
    int-to-float v2, v1

    sub-float v2, p1, v2

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 1358
    .local v0, dayPosition:I
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1359
    const/4 v2, 0x5

    invoke-virtual {p2, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 1360
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .locals 1

    .prologue
    .line 1321
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .locals 1

    .prologue
    .line 1330
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    return v0
.end method

.method public init(III)V
    .locals 10
    .parameter "weekNumber"
    .parameter "selectedWeekDay"
    .parameter "focusedMonth"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x5

    .line 1251
    iput p2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    .line 1252
    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    if-eq v2, v9, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    .line 1253
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mDaysPerWeek:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_1
    iput v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    .line 1254
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    .line 1255
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;
    invoke-static {v5}, Landroid/widget/CalendarView;->access$1500(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1257
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v5, 0x3

    iget v6, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1258
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v5}, Landroid/widget/CalendarView;->access$1600(Landroid/widget/CalendarView;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1261
    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 1262
    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    new-array v2, v2, [Z

    iput-object v2, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    .line 1265
    const/4 v1, 0x0

    .line 1266
    .local v1, i:I
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1267
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v5}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1268
    add-int/lit8 v1, v1, 0x1

    .line 1272
    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1600(Landroid/widget/CalendarView;)I

    move-result v2

    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v5}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v0, v2, v5

    .line 1273
    .local v0, diff:I
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 1275
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    .line 1276
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    .line 1278
    :goto_2
    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    if-ge v1, v2, :cond_6

    .line 1279
    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p3, :cond_4

    move v2, v3

    :goto_3
    aput-boolean v2, v5, v1

    .line 1281
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;
    invoke-static {v5}, Landroid/widget/CalendarView;->access$1500(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v5}, Landroid/widget/CalendarView;->access$1400(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1282
    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v2, v1

    .line 1286
    :goto_4
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->add(II)V

    .line 1278
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #diff:I
    .end local v1           #i:I
    :cond_2
    move v2, v4

    .line 1252
    goto/16 :goto_0

    .line 1253
    :cond_3
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mDaysPerWeek:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)I

    move-result v2

    goto/16 :goto_1

    .restart local v0       #diff:I
    .restart local v1       #i:I
    :cond_4
    move v2, v4

    .line 1279
    goto :goto_3

    .line 1284
    :cond_5
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v5}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    goto :goto_4

    .line 1290
    :cond_6
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 1291
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v7, v9}, Ljava/util/Calendar;->add(II)V

    .line 1293
    :cond_7
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    .line 1295
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->updateSelectionPositions()V

    .line 1296
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1365
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1366
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawWeekNumbers(Landroid/graphics/Canvas;)V

    .line 1367
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 1368
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    .line 1369
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1484
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/CalendarView$WeekView;->setMeasuredDimension(II)V

    .line 1485
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1461
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    .line 1462
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->updateSelectionPositions()V

    .line 1463
    return-void
.end method
