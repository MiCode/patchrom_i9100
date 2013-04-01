.class public Lcom/sec/android/app/fm/ui/FavoriteScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "FavoriteScrollView.java"


# instance fields
.field mLightingLeft:Landroid/graphics/drawable/Drawable;

.field mLightingRight:Landroid/graphics/drawable/Drawable;

.field mScrollLeft:I

.field mScrollRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->mLightingLeft:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->mLightingRight:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->mLightingLeft:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->mLightingRight:Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/16 v2, 0xff

    .line 53
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->mLightingLeft:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->mLightingRight:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->mLightingLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->mLightingRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 71
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 84
    iput p1, p0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->mScrollLeft:I

    .line 85
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 90
    int-to-float v0, p1

    iget v1, p0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->mScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->scrollTo(II)V

    .line 91
    return-void
.end method
