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

.field private mHasFocusedDay:Z

.field private mHasSelectedDay:Z

.field private mHasUnfocusedDay:Z

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

    .line 1560
    iput-object p1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    .line 1561
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1508
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 1510
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 1512
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 1530
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    .line 1533
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    .line 1537
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    .line 1546
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    .line 1549
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    .line 1555
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    .line 1558
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    .line 1564
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->initilaizePaints()V

    .line 1565
    return-void
.end method

.method static synthetic access$100(Landroid/widget/CalendarView$WeekView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1506
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/CalendarView$WeekView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1506
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasFocusedDay:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/CalendarView$WeekView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1506
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    return v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1715
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    .line 1729
    :goto_0
    return-void

    .line 1718
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2800(Landroid/widget/CalendarView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1720
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2900(Landroid/widget/CalendarView;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1721
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1722
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v0, v2

    :goto_1
    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1723
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1724
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1726
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1727
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1728
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1722
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 1785
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    .line 1796
    :goto_0
    return-void

    .line 1788
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3400(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$3300(Landroid/widget/CalendarView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2900(Landroid/widget/CalendarView;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView;->access$3300(Landroid/widget/CalendarView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1791
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3400(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1792
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3400(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$3300(Landroid/widget/CalendarView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2900(Landroid/widget/CalendarView;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView;->access$3300(Landroid/widget/CalendarView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1795
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3400(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1737
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    .line 1738
    .local v3, textHeight:F
    iget v6, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2900(Landroid/widget/CalendarView;)I

    move-result v7

    sub-int v5, v6, v7

    .line 1739
    .local v5, y:I
    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    .line 1741
    .local v2, nDays:I
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1742
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mDateTextSize:I
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2600(Landroid/widget/CalendarView;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1743
    const/4 v1, 0x0

    .line 1744
    .local v1, i:I
    mul-int/lit8 v0, v2, 0x2

    .line 1745
    .local v0, divisor:I
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v6}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1746
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekNumberColor:I
    invoke-static {v7}, Landroid/widget/CalendarView;->access$3000(Landroid/widget/CalendarView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1747
    iget v6, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    div-int v4, v6, v0

    .line 1748
    .local v4, x:I
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1749
    add-int/lit8 v1, v1, 0x1

    .line 1751
    .end local v4           #x:I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1752
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mFocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v6

    :goto_1
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1754
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v6, v7

    div-int v4, v6, v0

    .line 1755
    .restart local v4       #x:I
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v1

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1751
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1752
    .end local v4           #x:I
    :cond_1
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I
    invoke-static {v6}, Landroid/widget/CalendarView;->access$3100(Landroid/widget/CalendarView;)I

    move-result v6

    goto :goto_1

    .line 1757
    :cond_2
    return-void
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1766
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    .line 1767
    .local v6, firstFullyVisiblePosition:I
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_0

    .line 1768
    add-int/lit8 v6, v6, 0x1

    .line 1770
    :cond_0
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    if-ne v6, v0, :cond_1

    .line 1777
    :goto_0
    return-void

    .line 1773
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$3200(Landroid/widget/CalendarView;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1774
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2900(Landroid/widget/CalendarView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1775
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v0, v3

    int-to-float v1, v0

    .line 1776
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

    .line 1775
    goto :goto_1
.end method

.method private initilaizePaints()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1634
    invoke-virtual {p0}, Landroid/widget/CalendarView$WeekView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1635
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x120

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 1637
    .local v1, isDeviceDefault:Z
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1638
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1639
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1641
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1642
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1643
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1644
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1646
    if-eqz v1, :cond_0

    .line 1647
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mDateTextSize:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2600(Landroid/widget/CalendarView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1648
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mDateTextSize:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2600(Landroid/widget/CalendarView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1649
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mFocusedMonthDateColor:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1651
    :cond_0
    return-void
.end method

.method private updateSelectionPositions()V
    .locals 3

    .prologue
    .line 1808
    iget-boolean v1, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-eqz v1, :cond_2

    .line 1809
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)I

    move-result v2

    sub-int v0, v1, v2

    .line 1810
    .local v0, selectedPosition:I
    if-gez v0, :cond_0

    .line 1811
    add-int/lit8 v0, v0, 0x7

    .line 1813
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1814
    add-int/lit8 v0, v0, 0x1

    .line 1816
    :cond_1
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v1, v2

    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    .line 1817
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v1, v2

    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    .line 1819
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

    .line 1688
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int v1, v3, v4

    .line 1689
    .local v1, dayStart:I
    :goto_0
    int-to-float v3, v1

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    .line 1690
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 1698
    :goto_1
    return v2

    .end local v1           #dayStart:I
    :cond_1
    move v1, v2

    .line 1688
    goto :goto_0

    .line 1694
    .restart local v1       #dayStart:I
    :cond_2
    int-to-float v2, v1

    sub-float v2, p1, v2

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2500(Landroid/widget/CalendarView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 1696
    .local v0, dayPosition:I
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1697
    const/4 v2, 0x5

    invoke-virtual {p2, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 1698
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .locals 1

    .prologue
    .line 1659
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .locals 1

    .prologue
    .line 1668
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    return v0
.end method

.method public init(III)V
    .locals 11
    .parameter "weekNumber"
    .parameter "selectedWeekDay"
    .parameter "focusedMonth"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x5

    const/4 v4, 0x1

    .line 1579
    iput p2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    .line 1580
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    if-eq v3, v10, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    .line 1581
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2500(Landroid/widget/CalendarView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    iput v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    .line 1582
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    .line 1583
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;
    invoke-static {v6}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1585
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v6, 0x3

    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 1586
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v6}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1589
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 1590
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    new-array v3, v3, [Z

    iput-object v3, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    .line 1593
    const/4 v1, 0x0

    .line 1594
    .local v1, i:I
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1595
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v6}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1596
    add-int/lit8 v1, v1, 0x1

    .line 1600
    :cond_0
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)I

    move-result v3

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v6}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int v0, v3, v6

    .line 1601
    .local v0, diff:I
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 1603
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    iput-object v3, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    .line 1604
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    .line 1606
    iput-boolean v4, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    .line 1607
    :goto_2
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    if-ge v1, v3, :cond_7

    .line 1608
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p3, :cond_4

    move v2, v4

    .line 1609
    .local v2, isFocusedDay:Z
    :goto_3
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    aput-boolean v2, v3, v1

    .line 1610
    iget-boolean v3, p0, Landroid/widget/CalendarView$WeekView;->mHasFocusedDay:Z

    or-int/2addr v3, v2

    iput-boolean v3, p0, Landroid/widget/CalendarView$WeekView;->mHasFocusedDay:Z

    .line 1611
    iget-boolean v6, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    if-nez v2, :cond_5

    move v3, v4

    :goto_4
    and-int/2addr v3, v6

    iput-boolean v3, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    .line 1613
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;
    invoke-static {v6}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v6}, Landroid/widget/CalendarView;->access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1614
    :cond_1
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v3, v1

    .line 1618
    :goto_5
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8, v4}, Ljava/util/Calendar;->add(II)V

    .line 1607
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #diff:I
    .end local v1           #i:I
    .end local v2           #isFocusedDay:Z
    :cond_2
    move v3, v5

    .line 1580
    goto/16 :goto_0

    .line 1581
    :cond_3
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2500(Landroid/widget/CalendarView;)I

    move-result v3

    goto/16 :goto_1

    .restart local v0       #diff:I
    .restart local v1       #i:I
    :cond_4
    move v2, v5

    .line 1608
    goto :goto_3

    .restart local v2       #isFocusedDay:Z
    :cond_5
    move v3, v5

    .line 1611
    goto :goto_4

    .line 1616
    :cond_6
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v6}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    goto :goto_5

    .line 1622
    .end local v2           #isFocusedDay:Z
    :cond_7
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v4, :cond_8

    .line 1623
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 1625
    :cond_8
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    .line 1627
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->updateSelectionPositions()V

    .line 1628
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1703
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1704
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 1705
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 1706
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    .line 1707
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1823
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    #getter for: Landroid/widget/CalendarView;->mShownWeekCount:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$3500(Landroid/widget/CalendarView;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    .line 1825
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/CalendarView$WeekView;->setMeasuredDimension(II)V

    .line 1826
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1800
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    .line 1801
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->updateSelectionPositions()V

    .line 1802
    return-void
.end method
