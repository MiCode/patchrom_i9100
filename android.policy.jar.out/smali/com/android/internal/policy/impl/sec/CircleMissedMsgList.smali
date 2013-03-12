.class public Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;
.super Landroid/widget/FrameLayout;
.source "CircleMissedMsgList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleMissedMsgList"


# instance fields
.field private final DEBUG:Z

.field private final MAX_LIST_NUM:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_MSG:I

.field mBottomText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mGuideLineColor:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mLineEndX:I

.field private mLineEndY:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartX:I

.field private mLineStartY:I

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/CircleMissedEventData;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field private mMissedCount:I

.field private mOrientation:I

.field private mRingDrawable:Landroid/graphics/drawable/Drawable;

.field private mRingHeight:I

.field private mRingWidth:I

.field private mStatusBarHeight:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockAcquired:Z

.field private m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->DEBUG:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->MAX_LIST_NUM:I

    .line 77
    const/16 v0, 0x7b

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->REQ_INDEX_MSG:I

    .line 78
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->MSG_PKG:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    .line 83
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mOrientation:I

    .line 84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->init()V

    .line 85
    return-void
.end method

.method private handleMissedCallUpdate()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->notifyDataSetChanged()V

    .line 235
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    const-string v2, "CircleMissedMsgList"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 92
    const v2, 0x1090060

    invoke-virtual {v0, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    :goto_0
    const v2, 0x1020311

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mListView:Landroid/widget/ListView;

    .line 98
    const v2, 0x1020312

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mList:Ljava/util/ArrayList;

    .line 101
    new-instance v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    .line 102
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080439

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingWidth:I

    .line 106
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingHeight:I

    .line 107
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    const v2, -0x887c72

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mGuideLineColor:I

    .line 111
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    .line 112
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 114
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mGuideLineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mStatusBarHeight:I

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 124
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v3, "CircleMissedMsgList"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->updateMissedEvent()V

    .line 127
    return-void

    .line 94
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    const v2, 0x1090061

    invoke-virtual {v0, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mStatusBarHeight:I

    goto :goto_1
.end method

.method private setGuideLineStartPos()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 216
    .local v0, pos:[I
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mMissedCount:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 218
    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartX:I

    .line 219
    aget v1, v0, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartY:I

    .line 226
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 222
    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartX:I

    .line 223
    aget v1, v0, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartY:I

    goto :goto_0
.end method

.method private setGuildeLineEndPos(II)V
    .locals 1
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 229
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndX:I

    .line 230
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mStatusBarHeight:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndY:I

    .line 231
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 206
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndX:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndY:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 210
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->setGuideLineStartPos()V

    .line 211
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndY:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 212
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 177
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mMissedCount:I

    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 181
    .local v0, action:I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->setGuildeLineEndPos(II)V

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->invalidate()V

    goto :goto_0

    .line 184
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_3

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLockAcquired:Z

    .line 189
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->setVisibility(I)V

    .line 190
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->setBackgroundColor(I)V

    goto :goto_0

    .line 191
    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 192
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLockAcquired:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 194
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLockAcquired:Z

    .line 196
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateMissedEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 239
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 240
    const-string v2, "CircleMissedMsgList"

    const-string v3, "onMissedEventUpdate : mNM is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mMissedCount:I

    .line 253
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    .line 245
    .local v1, missedMsgNotiInfo:Landroid/app/NotificationInfo;
    if-nez v1, :cond_1

    .line 246
    const-string v2, "CircleMissedMsgList"

    const-string v3, "onMissedEventUpdate : missedMsgNotiInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mMissedCount:I

    goto :goto_0

    .line 251
    :cond_1
    iget v2, v1, Landroid/app/NotificationInfo;->missedCount:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mMissedCount:I

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->updateMissedMsg()V

    goto :goto_0
.end method

.method public updateMissedMsg()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 130
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    move-result-object v2

    .line 132
    .local v2, dbAdapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 133
    const-string v9, "CircleMissedMsgList"

    const-string v10, "updateMissedMsg : DB is opend"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    .line 138
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->getMissedMsgCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 140
    .local v1, cursor:Landroid/database/Cursor;
    const-string v9, "CircleMissedMsgList"

    const-string v10, "updateMissedMsg"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v3, 0x0

    .line 143
    .local v3, i:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mMissedCount:I

    .line 145
    .local v4, max_count:I
    const/4 v9, 0x4

    if-le v4, v9, :cond_3

    .line 146
    add-int/lit8 v6, v4, -0x4

    .line 147
    .local v6, number:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    const v11, 0x1040740

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    const/4 v4, 0x4

    .line 154
    .end local v6           #number:I
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 156
    :cond_1
    if-lt v3, v4, :cond_4

    .line 170
    :cond_2
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 171
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->close()V

    .line 173
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 151
    :cond_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 159
    :cond_4
    const-string v9, "name"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, name:Ljava/lang/String;
    const-string v9, "time"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 161
    .local v7, time:J
    const-string v9, "content"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, content:Ljava/lang/String;
    const-string v9, "CircleMissedMsgList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMissedMsg : name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " content = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mList:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    invoke-direct {v10, v5, v0, v7, v8}, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2
.end method
