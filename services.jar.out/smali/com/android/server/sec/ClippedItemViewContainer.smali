.class public Lcom/android/server/sec/ClippedItemViewContainer;
.super Landroid/widget/FrameLayout;
.source "ClippedItemViewContainer.java"


# instance fields
.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mIsDisabled:Z

.field private mIsPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sec/ClippedItemViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 63
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, -0x8000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 71
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 72
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 114
    iget-boolean v9, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_f

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 117
    .local v2, colorFilter:Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 119
    :cond_1
    instance-of v9, p2, Landroid/widget/ImageView;

    if-eqz v9, :cond_6

    move-object v6, p2

    .line 121
    check-cast v6, Landroid/widget/ImageView;

    .line 122
    .local v6, iv:Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 124
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 125
    :cond_2
    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 127
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 129
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 131
    .local v7, ret:Z
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 132
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 182
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #colorFilter:Landroid/graphics/PorterDuffColorFilter;
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #iv:Landroid/widget/ImageView;
    .end local v7           #ret:Z
    :cond_5
    :goto_0
    return v7

    .line 136
    .restart local v2       #colorFilter:Landroid/graphics/PorterDuffColorFilter;
    :cond_6
    instance-of v9, p2, Landroid/webkit/WebView;

    if-eqz v9, :cond_8

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    .restart local v1       #bg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 141
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 143
    .restart local v7       #ret:Z
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    .line 148
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v7           #ret:Z
    :cond_8
    instance-of v9, p2, Landroid/widget/TextView;

    if-eqz v9, :cond_f

    move-object v8, p2

    .line 150
    check-cast v8, Landroid/widget/TextView;

    .line 151
    .local v8, textChild:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    .restart local v1       #bg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_9

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 154
    :cond_9
    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 155
    .local v4, drawable:[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v4

    if-ge v5, v9, :cond_b

    .line 156
    aget-object v9, v4, v5

    if-eqz v9, :cond_a

    .line 157
    aget-object v9, v4, v5

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 155
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 161
    :cond_b
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 163
    .local v0, before:Landroid/graphics/ColorFilter;
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 168
    .restart local v7       #ret:Z
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 169
    :cond_c
    const/4 v5, 0x0

    :goto_2
    array-length v9, v4

    if-ge v5, v9, :cond_e

    .line 170
    aget-object v9, v4, v5

    if-eqz v9, :cond_d

    .line 171
    aget-object v9, v4, v5

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 169
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 174
    :cond_e
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 182
    .end local v0           #before:Landroid/graphics/ColorFilter;
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #colorFilter:Landroid/graphics/PorterDuffColorFilter;
    .end local v4           #drawable:[Landroid/graphics/drawable/Drawable;
    .end local v5           #i:I
    .end local v7           #ret:Z
    .end local v8           #textChild:Landroid/widget/TextView;
    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 80
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->getDrawableState()[I

    move-result-object v2

    .line 82
    .local v2, state:[I
    array-length v0, v2

    .line 83
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 86
    aget v3, v2, v1

    const v4, 0x101009e

    if-ne v3, v4, :cond_0

    .line 87
    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    .line 90
    :cond_0
    aget v3, v2, v1

    const v4, 0x10100a7

    if-ne v3, v4, :cond_2

    .line 91
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->invalidate()V

    .line 93
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ClippedItemViewContainer"

    const-string v4, "pressed !!! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    :goto_1
    return-void

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    if-eqz v3, :cond_1

    .line 102
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    .line 103
    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->invalidate()V

    goto :goto_1
.end method
