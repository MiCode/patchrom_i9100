.class Lcom/android/server/wm/DimAnimator;
.super Ljava/lang/Object;
.source "DimAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimAnimator$Parameters;
    }
.end annotation


# instance fields
.field mDimCurrentAlpha:F

.field mDimDeltaPerMs:F

.field mDimShown:Z

.field mDimSurface:Landroid/view/Surface;

.field mDimTargetAlpha:F

.field mLastDimAnimTime:J

.field mLastDimHeight:I

.field mLastDimWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;)V
    .locals 10
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 51
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const-string v3, "DimAnimator"

    const/4 v4, -0x1

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, -0x1

    const/high16 v8, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v9

    .line 61
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 192
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    const-string v0, "mDimShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 196
    const-string v0, " current="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 197
    const-string v0, " target="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 198
    const-string v0, " delta="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 199
    const-string v0, " lastAnimTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 200
    return-void
.end method

.method updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V
    .locals 12
    .parameter "res"
    .parameter "params"
    .parameter "currentTime"

    .prologue
    .line 73
    iget v8, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff8

    mul-double/2addr v8, v10

    double-to-int v3, v8

    .line 74
    .local v3, dw:I
    iget v8, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff8

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .line 75
    .local v0, dh:I
    iget-object v7, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 76
    .local v7, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget v5, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimTarget:F

    .line 77
    .local v5, target:F
    iget-boolean v8, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-nez v8, :cond_4

    .line 80
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 82
    :try_start_0
    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 83
    iput v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 85
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    mul-int/lit8 v9, v3, -0x1

    div-int/lit8 v9, v9, 0x6

    mul-int/lit8 v10, v0, -0x1

    div-int/lit8 v10, v10, 0x6

    invoke-virtual {v8, v9, v10}, Landroid/view/Surface;->setPosition(II)V

    .line 86
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v8, v3, v0}, Landroid/view/Surface;->setSize(II)V

    .line 87
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v8}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/view/Surface;->setLayer(I)V

    .line 103
    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_3

    .line 106
    iput-wide p3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 107
    iget-boolean v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v8, :cond_6

    iget-object v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_6

    iget-object v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v1

    .line 110
    .local v1, duration:J
    :goto_1
    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    .line 111
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 112
    .local v6, tv:Landroid/util/TypedValue;
    const/high16 v8, 0x112

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v6, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 114
    iget v8, v6, Landroid/util/TypedValue;->type:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_7

    .line 115
    long-to-float v8, v1

    long-to-float v9, v1

    invoke-virtual {v6, v8, v9}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v8

    float-to-long v1, v8

    .line 121
    .end local v6           #tv:Landroid/util/TypedValue;
    :cond_1
    :goto_2
    const-wide/16 v8, 0x1

    cmp-long v8, v1, v8

    if-gez v8, :cond_2

    .line 123
    const-wide/16 v1, 0x1

    .line 125
    :cond_2
    iput v5, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 126
    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iget v9, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    sub-float/2addr v8, v9

    long-to-float v9, v1

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    .line 128
    .end local v1           #duration:J
    :cond_3
    return-void

    .line 88
    :catch_0
    move-exception v4

    .line 89
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v8, "WindowManager"

    const-string v9, "Failure showing dim surface"

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 91
    .end local v4           #e:Ljava/lang/RuntimeException;
    :cond_4
    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    if-ne v8, v3, :cond_5

    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    if-eq v8, v0, :cond_0

    .line 92
    :cond_5
    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 93
    iput v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 94
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v8, v3, v0}, Landroid/view/Surface;->setSize(II)V

    .line 96
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    mul-int/lit8 v9, v3, -0x1

    div-int/lit8 v9, v9, 0x6

    mul-int/lit8 v10, v0, -0x1

    div-int/lit8 v10, v10, 0x6

    invoke-virtual {v8, v9, v10}, Landroid/view/Surface;->setPosition(II)V

    goto :goto_0

    .line 107
    :cond_6
    const-wide/16 v1, 0xc8

    goto :goto_1

    .line 116
    .restart local v1       #duration:J
    .restart local v6       #tv:Landroid/util/TypedValue;
    :cond_7
    iget v8, v6, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_1

    iget v8, v6, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1f

    if-gt v8, v9, :cond_1

    .line 118
    iget v8, v6, Landroid/util/TypedValue;->data:I

    int-to-long v1, v8

    goto :goto_2
.end method

.method updateSurface(ZJZ)Z
    .locals 10
    .parameter "dimming"
    .parameter "currentTime"
    .parameter "displayFrozen"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 135
    if-nez p1, :cond_0

    .line 136
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    .line 137
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 138
    iput v7, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 139
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    neg-float v3, v3

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    .line 143
    :cond_0
    iget-wide v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 144
    .local v0, animating:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 145
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    iget-wide v5, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    sub-long v5, p2, v5

    long-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 147
    if-eqz p4, :cond_4

    .line 149
    const/4 v0, 0x0

    .line 163
    :cond_1
    :goto_1
    if-eqz v0, :cond_7

    .line 166
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 167
    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setAlpha(F)V

    .line 186
    :cond_2
    :goto_2
    return v0

    .end local v0           #animating:Z
    :cond_3
    move v0, v2

    .line 143
    goto :goto_0

    .line 150
    .restart local v0       #animating:Z
    :cond_4
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_5

    .line 151
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 152
    const/4 v0, 0x0

    goto :goto_1

    .line 154
    :cond_5
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_6

    .line 155
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 156
    const/4 v0, 0x0

    goto :goto_1

    .line 159
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 169
    :cond_7
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 170
    iput-wide v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 173
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 174
    if-nez p1, :cond_2

    .line 178
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    goto :goto_2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    const-string v4, "Illegal argument exception hiding dim surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
