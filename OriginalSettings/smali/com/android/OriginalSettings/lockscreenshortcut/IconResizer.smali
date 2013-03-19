.class public Lcom/android/settings/lockscreenshortcut/IconResizer;
.super Ljava/lang/Object;
.source "IconResizer.java"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mIconHeight:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field private mScreenIsLarge:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v3, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconWidth:I

    .line 41
    iput v3, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconHeight:I

    .line 44
    iput-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mScreenIsLarge:Z

    .line 45
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 46
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 50
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mContext:Landroid/content/Context;

    .line 51
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v4, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v5, 0x2

    invoke-direct {v4, v6, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, resources:Landroid/content/res/Resources;
    const v3, 0x7f0f001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconHeight:I

    iput v3, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconWidth:I

    .line 57
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v3, 0xf

    .line 58
    .local v1, screenSize:I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    if-ne v1, v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mScreenIsLarge:Z

    .line 59
    const-string v2, "IconResizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenIsLarge : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mScreenIsLarge:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .parameter "icon"

    .prologue
    const/4 v13, 0x0

    .line 75
    iget v8, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconWidth:I

    .line 76
    .local v8, width:I
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconHeight:I

    .line 78
    .local v2, height:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 79
    .local v4, iconWidth:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 81
    .local v3, iconHeight:I
    instance-of v11, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v11, :cond_0

    move-object v5, p1

    .line 82
    check-cast v5, Landroid/graphics/drawable/PaintDrawable;

    .line 83
    .local v5, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 84
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 87
    .end local v5           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    if-lez v8, :cond_3

    if-lez v2, :cond_3

    .line 88
    if-lt v8, v4, :cond_1

    if-ge v2, v3, :cond_6

    .line 89
    :cond_1
    int-to-float v11, v4

    int-to-float v12, v3

    div-float v6, v11, v12

    .line 91
    .local v6, ratio:F
    if-le v4, v3, :cond_4

    .line 92
    int-to-float v11, v8

    div-float/2addr v11, v6

    float-to-int v2, v11

    .line 97
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 99
    .local v0, c:Landroid/graphics/Bitmap$Config;
    :goto_1
    iget v11, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconWidth:I

    iget v12, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconHeight:I

    invoke-static {v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 100
    .local v7, thumb:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 101
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    iget-object v11, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 108
    iget v11, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconWidth:I

    sub-int/2addr v11, v8

    div-int/lit8 v9, v11, 0x2

    .line 109
    .local v9, x:I
    iget v11, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconHeight:I

    sub-int/2addr v11, v2

    div-int/lit8 v10, v11, 0x2

    .line 110
    .local v10, y:I
    add-int v11, v9, v8

    add-int v12, v10, v2

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    iget-object v11, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 113
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    iget-object v11, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p1, v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 114
    .restart local p1
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    .end local v0           #c:Landroid/graphics/Bitmap$Config;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v6           #ratio:F
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_3
    :goto_2
    return-object p1

    .line 93
    .restart local v6       #ratio:F
    :cond_4
    if-le v3, v4, :cond_2

    .line 94
    int-to-float v11, v2

    mul-float/2addr v11, v6

    float-to-int v8, v11

    goto :goto_0

    .line 97
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 115
    .end local v6           #ratio:F
    :cond_6
    if-ge v4, v8, :cond_3

    if-ge v3, v2, :cond_3

    .line 116
    move v4, v8

    .line 117
    move v3, v2

    .line 118
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 119
    .restart local v0       #c:Landroid/graphics/Bitmap$Config;
    iget v11, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconWidth:I

    iget v12, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mIconHeight:I

    invoke-static {v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 120
    .restart local v7       #thumb:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 121
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    iget-object v11, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 123
    sub-int v11, v8, v4

    div-int/lit8 v9, v11, 0x2

    .line 124
    .restart local v9       #x:I
    sub-int v11, v2, v3

    div-int/lit8 v10, v11, 0x2

    .line 125
    .restart local v10       #y:I
    add-int v11, v9, v4

    add-int v12, v10, v3

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    iget-object v11, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 128
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    iget-object v11, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p1, v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 129
    .restart local p1
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public getDpi(I)I
    .locals 2
    .parameter "appDpi"

    .prologue
    .line 136
    move v0, p1

    .line 137
    .local v0, dpi:I
    iget-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/IconResizer;->mScreenIsLarge:Z

    if-eqz v1, :cond_0

    .line 138
    sparse-switch p1, :sswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 140
    :sswitch_0
    const/16 v0, 0xa0

    .line 141
    goto :goto_0

    .line 143
    :sswitch_1
    const/16 v0, 0xf0

    .line 144
    goto :goto_0

    .line 146
    :sswitch_2
    const/16 v0, 0x140

    .line 147
    goto :goto_0

    .line 149
    :sswitch_3
    const/16 v0, 0x140

    .line 150
    goto :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_3
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method
