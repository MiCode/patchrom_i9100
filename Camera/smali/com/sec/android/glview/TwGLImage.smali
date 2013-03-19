.class public Lcom/sec/android/glview/TwGLImage;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLImage.java"


# instance fields
.field private mDimmed:Z

.field protected mImage:Lcom/sec/android/glview/TwGLTexture;

.field private mPressed:Z

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 199
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 201
    if-eqz p6, :cond_0

    .line 202
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 207
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "imagePath"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 142
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 144
    if-eqz p6, :cond_0

    .line 145
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 150
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "stretch"
    .parameter "imageId"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 83
    if-eqz p7, :cond_0

    .line 84
    if-eqz p6, :cond_2

    .line 85
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 93
    :cond_1
    return-void

    .line 87
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 256
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 258
    if-eqz p6, :cond_0

    .line 259
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 264
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "imageId"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 62
    if-eqz p4, :cond_0

    .line 63
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 67
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 180
    if-eqz p4, :cond_0

    .line 181
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 186
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "imagePath"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 123
    if-eqz p4, :cond_0

    .line 124
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 129
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 237
    if-eqz p4, :cond_0

    .line 238
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 243
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "glContext"
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 161
    if-eqz p2, :cond_0

    .line 162
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 167
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 2
    .parameter "glContext"
    .parameter "imagePath"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 104
    if-eqz p2, :cond_0

    .line 105
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 110
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;[B)V
    .locals 2
    .parameter "glContext"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 218
    if-eqz p2, :cond_0

    .line 219
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 224
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 295
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 296
    return-void
.end method

.method protected getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    if-ne v0, v2, :cond_1

    .line 439
    :cond_0
    const/4 v0, 0x0

    .line 451
    :goto_0
    return-object v0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 442
    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/glview/HoverPopupWindow;-><init>(Landroid/view/View;Lcom/sec/android/glview/TwGLView;I)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 444
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupGravity(I)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    goto :goto_0
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    return v0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 399
    const/4 v1, 0x0

    .local v1, width:F
    const/4 v0, 0x0

    .line 401
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_1

    .line 402
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    .line 409
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 410
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 343
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 346
    :cond_0
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 327
    :cond_0
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 335
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 338
    :cond_0
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 425
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 353
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    if-eqz v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v1

    .line 356
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 357
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    if-eqz v2, :cond_3

    .line 360
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 361
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 363
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 364
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto :goto_0

    .line 367
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 368
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    goto :goto_0

    .line 371
    :cond_4
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setDim(Z)V
    .locals 0
    .parameter "dim"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 274
    return-void
.end method

.method public setFlip(Z)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->setFlip(Z)V

    .line 270
    :cond_0
    return-void
.end method

.method public setImageResources(I)V
    .locals 3
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 431
    :cond_0
    if-eqz p1, :cond_1

    .line 432
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 433
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 435
    :cond_1
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 375
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    .line 376
    .local v1, imageWidth:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    .line 378
    .local v0, imageHeight:F
    cmpl-float v2, p1, v1

    if-gtz v2, :cond_0

    cmpl-float v2, p2, v0

    if-lez v2, :cond_1

    .line 379
    :cond_0
    const/4 v2, 0x0

    .line 389
    :goto_0
    return v2

    .line 382
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 383
    iput p2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_3

    .line 387
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 389
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSampleSize(I)V
    .locals 1
    .parameter "sampleSize"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    check-cast v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLByteArrayTexture;->setSampleSize(I)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLFileTexture;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    check-cast v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLFileTexture;->setSampleSize(I)V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 414
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 419
    :cond_0
    return-void
.end method
