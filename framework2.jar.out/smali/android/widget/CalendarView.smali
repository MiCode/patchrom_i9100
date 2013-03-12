.class public Landroid/widget/CalendarView;
.super Landroid/widget/FrameLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$WeekView;,
        Landroid/widget/CalendarView$WeeksAdapter;,
        Landroid/widget/CalendarView$ScrollStateRunnable;,
        Landroid/widget/CalendarView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field private static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mCurrentYearDisplayed:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayLabels:[Ljava/lang/String;

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/CalendarView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 339
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 342
    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    const/4 v6, 0x2

    iput v6, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    .line 185
    const/16 v6, 0xc

    iput v6, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    .line 190
    const/16 v6, 0x14

    iput v6, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    .line 205
    const/4 v6, 0x7

    iput v6, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    .line 210
    const v6, 0x3d4ccccd

    iput v6, p0, Landroid/widget/CalendarView;->mFriction:F

    .line 215
    const v6, 0x3eaa7efa

    iput v6, p0, Landroid/widget/CalendarView;->mVelocityScale:F

    .line 265
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    .line 270
    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    .line 275
    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    .line 285
    new-instance v6, Landroid/widget/CalendarView$ScrollStateRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/CalendarView$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView;Landroid/widget/CalendarView$1;)V

    iput-object v6, p0, Landroid/widget/CalendarView;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

    .line 310
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MM/dd/yyyy"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Landroid/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    .line 345
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 349
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    .line 350
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/CalendarView;->mCurrentYearDisplayed:I

    .line 352
    sget-object v6, Lcom/android/internal/R$styleable;->CalendarView:[I

    const v7, 0x101035d

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 354
    .local v0, attributesArray:Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    .line 356
    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v7

    iget-object v7, v7, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    .line 358
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, minDate:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v5, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 360
    :cond_0
    const-string v6, "01/01/1900"

    iget-object v7, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v6, v7}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 362
    :cond_1
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, maxDate:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v4, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 364
    :cond_2
    const-string v6, "01/01/2100"

    iget-object v7, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v6, v7}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 366
    :cond_3
    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 367
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Max date cannot be before min date."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 369
    :cond_4
    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    .line 371
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    .line 373
    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    .line 375
    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    .line 377
    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    .line 379
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    .line 380
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 383
    const/16 v6, 0xc

    const v7, 0x1030046

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    .line 385
    invoke-direct {p0}, Landroid/widget/CalendarView;->updateDateTextSize()V

    .line 387
    const/16 v6, 0xb

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    .line 390
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 392
    invoke-virtual {p0}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 393
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v6, 0x1

    const/high16 v7, 0x4140

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    .line 395
    const/4 v6, 0x1

    const/high16 v7, 0x4000

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    .line 397
    const/4 v6, 0x1

    const/high16 v7, 0x41a0

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    .line 399
    const/4 v6, 0x1

    const/high16 v7, 0x40c0

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    .line 401
    const/4 v6, 0x1

    const/high16 v7, 0x3f80

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I

    .line 404
    iget-object v6, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 406
    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v6, 0x1090030

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 407
    .local v1, content:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 409
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    .line 410
    const v6, 0x1020297

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 411
    const v6, 0x1020296

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    .line 413
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    .line 414
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpListView()V

    .line 415
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpAdapter()V

    .line 418
    iget-object v6, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 419
    iget-object v6, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 420
    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    .line 427
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CalendarView;->invalidate()V

    .line 428
    return-void

    .line 421
    :cond_5
    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 422
    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0

    .line 424
    :cond_6
    iget-object v6, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method static synthetic access$1002(Landroid/widget/CalendarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/CalendarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/CalendarView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/widget/CalendarView;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/widget/CalendarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/CalendarView;Ljava/util/Calendar;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/CalendarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/CalendarView;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/CalendarView;Ljava/util/Calendar;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/widget/CalendarView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mDateTextSize:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$WeeksAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/CalendarView;Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/CalendarView;Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarView;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .parameter "oldCalendar"
    .parameter "locale"

    .prologue
    .line 993
    if-nez p1, :cond_0

    .line 994
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 999
    :goto_0
    return-object v2

    .line 996
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 997
    .local v0, currentTimeMillis:J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 998
    .local v2, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .locals 11
    .parameter "date"

    .prologue
    .line 1285
    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1286
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not precede toDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1289
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 1291
    .local v2, endTimeMillis:J
    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 1293
    .local v4, startTimeMillis:J
    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    .line 1295
    .local v0, dayOffsetMillis:J
    sub-long v6, v2, v4

    add-long/2addr v6, v0

    const-wide/32 v8, 0x240c8400

    div-long/2addr v6, v8

    long-to-int v6, v6

    return v6
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .locals 8
    .parameter "date"
    .parameter "animate"
    .parameter "setSelected"
    .parameter "forceScroll"

    .prologue
    const/4 v7, 0x0

    .line 1112
    iget-object v4, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1113
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time not between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1117
    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1118
    .local v1, firstFullyVisiblePosition:I
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1119
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_2

    .line 1120
    add-int/lit8 v1, v1, 0x1

    .line 1122
    :cond_2
    iget v4, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 1123
    .local v2, lastFullyVisiblePosition:I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    if-le v4, v5, :cond_3

    .line 1124
    add-int/lit8 v2, v2, -0x1

    .line 1126
    :cond_3
    if-eqz p3, :cond_4

    .line 1127
    iget-object v4, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 1130
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    .line 1134
    .local v3, position:I
    if-lt v3, v1, :cond_5

    if-gt v3, v2, :cond_5

    if-eqz p4, :cond_9

    .line 1136
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1137
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1139
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 1142
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v5, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1143
    const/4 v3, 0x0

    .line 1148
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    .line 1149
    if-eqz p2, :cond_8

    .line 1150
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 1161
    :cond_6
    :goto_1
    return-void

    .line 1145
    :cond_7
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    goto :goto_0

    .line 1153
    :cond_8
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1155
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v7}, Landroid/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_1

    .line 1157
    :cond_9
    if-eqz p3, :cond_6

    .line 1159
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_1
.end method

.method private invalidateAllWeekViews()V
    .locals 4

    .prologue
    .line 961
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 962
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 963
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 964
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 962
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 966
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3
    .parameter "firstDate"
    .parameter "secondDate"

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 1008
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 9
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1193
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarView$WeekView;

    .line 1194
    .local v0, child:Landroid/widget/CalendarView$WeekView;
    if-nez v0, :cond_1

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1199
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v1, v7

    .line 1202
    .local v1, currScroll:J
    iget-wide v7, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_6

    .line 1203
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    .line 1214
    :goto_1
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    if-ge v7, v8, :cond_7

    const/4 v6, 0x1

    .line 1215
    .local v6, offset:I
    :goto_2
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_8

    .line 1216
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #child:Landroid/widget/CalendarView$WeekView;
    check-cast v0, Landroid/widget/CalendarView$WeekView;

    .line 1223
    .restart local v0       #child:Landroid/widget/CalendarView$WeekView;
    :cond_2
    :goto_3
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_9

    .line 1224
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    .line 1231
    .local v4, month:I
    :goto_4
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_a

    .line 1232
    const/4 v5, 0x1

    .line 1241
    .local v5, monthDiff:I
    :goto_5
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-nez v7, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_5

    if-gez v5, :cond_5

    .line 1242
    :cond_4
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object v3

    .line 1243
    .local v3, firstDay:Ljava/util/Calendar;
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_c

    .line 1244
    const/4 v7, 0x5

    const/4 v8, -0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 1248
    :goto_6
    invoke-direct {p0, v3}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 1250
    .end local v3           #firstDay:Ljava/util/Calendar;
    :cond_5
    iput-wide v1, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    .line 1251
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    iput v7, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    goto :goto_0

    .line 1204
    .end local v4           #month:I
    .end local v5           #monthDiff:I
    .end local v6           #offset:I
    :cond_6
    iget-wide v7, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-lez v7, :cond_0

    .line 1205
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    goto :goto_1

    .line 1214
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1217
    .restart local v6       #offset:I
    :cond_8
    if-eqz v6, :cond_2

    .line 1218
    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #child:Landroid/widget/CalendarView$WeekView;
    check-cast v0, Landroid/widget/CalendarView$WeekView;

    .restart local v0       #child:Landroid/widget/CalendarView$WeekView;
    goto :goto_3

    .line 1226
    :cond_9
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    .restart local v4       #month:I
    goto :goto_4

    .line 1233
    :cond_a
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    if-nez v7, :cond_b

    const/16 v7, 0xb

    if-ne v4, v7, :cond_b

    .line 1234
    const/4 v5, -0x1

    .restart local v5       #monthDiff:I
    goto :goto_5

    .line 1236
    .end local v5           #monthDiff:I
    :cond_b
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    .restart local v5       #monthDiff:I
    goto :goto_5

    .line 1246
    .restart local v3       #firstDay:Ljava/util/Calendar;
    :cond_c
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_6
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/widget/CalendarView;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 1185
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .parameter "date"
    .parameter "outDate"

    .prologue
    .line 1171
    :try_start_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    const/4 v1, 0x1

    .line 1175
    :goto_0
    return v1

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, e:Ljava/text/ParseException;
    sget-object v1, Landroid/widget/CalendarView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 974
    iget-object v0, p0, Landroid/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    :goto_0
    return-void

    .line 978
    :cond_0
    iput-object p1, p0, Landroid/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    .line 980
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    .line 981
    iget-object v0, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    .line 982
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    .line 983
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 10
    .parameter "calendar"

    .prologue
    .line 1261
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1262
    .local v7, newMonthDisplayed:I
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1267
    .local v9, newYearDisplayed:I
    iget v0, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    if-ne v0, v7, :cond_0

    iget v0, p0, Landroid/widget/CalendarView;->mCurrentYearDisplayed:I

    if-eq v0, v9, :cond_1

    .line 1268
    :cond_0
    iput v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    .line 1269
    iput v9, p0, Landroid/widget/CalendarView;->mCurrentYearDisplayed:I

    .line 1270
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    iget v3, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    invoke-virtual {v0, v3}, Landroid/widget/CalendarView$WeeksAdapter;->setFocusMonth(I)V

    .line 1271
    const/16 v6, 0x34

    .line 1273
    .local v6, flags:I
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 1274
    .local v1, millis:J
    iget-object v0, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    const/16 v5, 0x34

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v8

    .line 1275
    .local v8, newMonthName:Ljava/lang/String;
    iget-object v0, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    iget-object v0, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1278
    .end local v1           #millis:J
    .end local v6           #flags:I
    .end local v8           #newMonthName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {p0}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarView$WeeksAdapter;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    .line 1018
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarView$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$1;-><init>(Landroid/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarView$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1030
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1034
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 1035
    return-void
.end method

.method private setUpHeader()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1041
    iget v4, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    .line 1042
    iget v2, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    .local v2, i:I
    iget v4, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    iget v5, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    add-int v1, v4, v5

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1043
    const/4 v4, 0x7

    if-le v2, v4, :cond_0

    add-int/lit8 v0, v2, -0x7

    .line 1044
    .local v0, calendarDay:I
    :goto_1
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    iget v5, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1042
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #calendarDay:I
    :cond_0
    move v0, v2

    .line 1043
    goto :goto_1

    .line 1048
    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1049
    .local v3, label:Landroid/widget/TextView;
    iget-boolean v4, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-eqz v4, :cond_3

    .line 1050
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1054
    :goto_2
    const/4 v2, 0x1

    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_5

    .line 1055
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #label:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1056
    .restart local v3       #label:Landroid/widget/TextView;
    iget v4, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 1057
    iget-object v4, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1059
    :cond_2
    iget v4, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_4

    .line 1060
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1054
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1052
    :cond_3
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1063
    :cond_4
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1066
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 1067
    return-void
.end method

.method private setUpListView()V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1075
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1076
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 1077
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarView$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$2;-><init>(Landroid/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1090
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 1091
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 1092
    return-void
.end method

.method private updateDateTextSize()V
    .locals 4

    .prologue
    .line 950
    invoke-virtual {p0}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 952
    .local v0, dateTextAppearance:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarView;->mDateTextSize:I

    .line 954
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 955
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 707
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 708
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 709
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 713
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 714
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 715
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 719
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 720
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 721
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .parameter "date"

    .prologue
    const/4 v0, 0x0

    .line 924
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 925
    return-void
.end method

.method public setDate(JZZ)V
    .locals 2
    .parameter "date"
    .parameter "animate"
    .parameter "center"

    .prologue
    .line 942
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 943
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    :goto_0
    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setDateTextAppearance(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 677
    iget v0, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 678
    iput p1, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    .line 679
    invoke-direct {p0}, Landroid/widget/CalendarView;->updateDateTextSize()V

    .line 680
    invoke-direct {p0}, Landroid/widget/CalendarView;->invalidateAllWeekViews()V

    .line 682
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 697
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 698
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .parameter "firstDayOfWeek"

    .prologue
    .line 882
    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_0

    .line 889
    :goto_0
    return-void

    .line 885
    :cond_0
    iput p1, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    .line 886
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #calls: Landroid/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v0}, Landroid/widget/CalendarView$WeeksAdapter;->access$500(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 887
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 888
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    goto :goto_0
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 494
    iget v3, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    if-eq v3, p1, :cond_1

    .line 495
    iput p1, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    .line 496
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 497
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 498
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$WeekView;

    .line 499
    .local v2, weekView:Landroid/widget/CalendarView$WeekView;
    #getter for: Landroid/widget/CalendarView$WeekView;->mHasFocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$WeekView;->access$200(Landroid/widget/CalendarView$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    invoke-virtual {v2}, Landroid/widget/CalendarView$WeekView;->invalidate()V

    .line 497
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    .end local v0           #childCount:I
    .end local v1           #i:I
    .end local v2           #weekView:Landroid/widget/CalendarView$WeekView;
    :cond_1
    return-void
.end method

.method public setMaxDate(J)V
    .locals 4
    .parameter "maxDate"

    .prologue
    const/4 v3, 0x1

    .line 801
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 802
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 807
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #calls: Landroid/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$500(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 808
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 809
    .local v0, date:Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarView;->setDate(J)V

    goto :goto_0

    .line 816
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3, v3}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .parameter "minDate"

    .prologue
    const/4 v3, 0x1

    .line 749
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 750
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 758
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 759
    .local v0, date:Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 763
    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #calls: Landroid/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$500(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 764
    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 765
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarView;->setDate(J)V

    goto :goto_0

    .line 771
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3, v3}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 897
    iput-object p1, p0, Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 898
    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 610
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/CalendarView;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    .line 611
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "drawable"

    .prologue
    .line 622
    iget-object v3, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_1

    .line 623
    iput-object p1, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 624
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 625
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 626
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$WeekView;

    .line 627
    .local v2, weekView:Landroid/widget/CalendarView$WeekView;
    #getter for: Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$WeekView;->access$100(Landroid/widget/CalendarView$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    invoke-virtual {v2}, Landroid/widget/CalendarView$WeekView;->invalidate()V

    .line 625
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 632
    .end local v0           #childCount:I
    .end local v1           #i:I
    .end local v2           #weekView:Landroid/widget/CalendarView$WeekView;
    :cond_1
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 463
    iget v3, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    if-eq v3, p1, :cond_1

    .line 464
    iput p1, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    .line 465
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 466
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 467
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$WeekView;

    .line 468
    .local v2, weekView:Landroid/widget/CalendarView$WeekView;
    #getter for: Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$WeekView;->access$100(Landroid/widget/CalendarView$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    invoke-virtual {v2}, Landroid/widget/CalendarView$WeekView;->invalidate()V

    .line 466
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v0           #childCount:I
    .end local v1           #i:I
    .end local v2           #weekView:Landroid/widget/CalendarView$WeekView;
    :cond_1
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1
    .parameter "showWeekNumber"

    .prologue
    .line 828
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_0

    .line 834
    :goto_0
    return-void

    .line 831
    :cond_0
    iput-boolean p1, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    .line 832
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 833
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    goto :goto_0
.end method

.method public setShownWeekCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 438
    iget v0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    if-eq v0, p1, :cond_0

    .line 439
    iput p1, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    .line 440
    invoke-virtual {p0}, Landroid/widget/CalendarView;->invalidate()V

    .line 442
    :cond_0
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 525
    iget v3, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    if-eq v3, p1, :cond_1

    .line 526
    iput p1, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    .line 527
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 528
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 529
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$WeekView;

    .line 530
    .local v2, weekView:Landroid/widget/CalendarView$WeekView;
    #getter for: Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$WeekView;->access$300(Landroid/widget/CalendarView$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    invoke-virtual {v2}, Landroid/widget/CalendarView$WeekView;->invalidate()V

    .line 528
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v0           #childCount:I
    .end local v1           #i:I
    .end local v2           #weekView:Landroid/widget/CalendarView$WeekView;
    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 652
    iget v0, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 653
    iput p1, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    .line 654
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    .line 656
    :cond_0
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 556
    iget v0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    if-eq v0, p1, :cond_0

    .line 557
    iput p1, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    .line 558
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-eqz v0, :cond_0

    .line 559
    invoke-direct {p0}, Landroid/widget/CalendarView;->invalidateAllWeekViews()V

    .line 562
    :cond_0
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 583
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_0

    .line 584
    iput p1, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    .line 585
    invoke-direct {p0}, Landroid/widget/CalendarView;->invalidateAllWeekViews()V

    .line 587
    :cond_0
    return-void
.end method
