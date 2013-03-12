.class public Landroid/graphics/Canvas;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$VertexMode;,
        Landroid/graphics/Canvas$EdgeType;,
        Landroid/graphics/Canvas$CanvasFinalizer;
    }
.end annotation


# static fields
.field public static final ALL_SAVE_FLAG:I = 0x1f

.field public static final CLIP_SAVE_FLAG:I = 0x2

.field public static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field public static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final MAXMIMUM_BITMAP_SIZE:I = 0x7ffe


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mDensity:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private final mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

.field final mNativeCanvas:I

.field protected mScreenDensity:I

.field private mSurfaceFormat:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 59
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 112
    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 113
    new-instance v0, Landroid/graphics/Canvas$CanvasFinalizer;

    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-direct {v0, v1}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    .line 114
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "nativeCanvas"

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 59
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 140
    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 141
    new-instance v0, Landroid/graphics/Canvas$CanvasFinalizer;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    .line 142
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 59
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Immutable bitmap passed to Canvas constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 131
    new-instance v0, Landroid/graphics/Canvas$CanvasFinalizer;

    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-direct {v0, v1}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    .line 132
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 133
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 134
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Landroid/graphics/Canvas;->finalizer(I)V

    return-void
.end method

.method protected static checkRange(III)V
    .locals 1
    .parameter "length"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 1203
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    if-le v0, p0, :cond_1

    .line 1204
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1206
    :cond_1
    return-void
.end method

.method private static native finalizer(I)V
.end method

.method public static native freeCaches()V
.end method

.method public static native freeTextLayoutCaches()V
.end method

.method private static native initRaster(I)I
.end method

.method private static native nativeDrawBitmapMatrix(IIII)V
.end method

.method private static native nativeDrawBitmapMesh(IIII[FI[III)V
.end method

.method private static native nativeDrawVertices(III[FI[FI[II[SIII)V
.end method

.method private static native nativeSetDrawFilter(II)V
.end method

.method private static native native_clipPath(III)Z
.end method

.method private static native native_clipRect(IFFFFI)Z
.end method

.method private static native native_clipRegion(III)Z
.end method

.method private static native native_concat(II)V
.end method

.method private static native native_drawARGB(IIIII)V
.end method

.method private static native native_drawArc(ILandroid/graphics/RectF;FFZI)V
.end method

.method private native native_drawBitmap(IIFFIIII)V
.end method

.method private static native native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/Rect;III)V
.end method

.method private native native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/RectF;III)V
.end method

.method private static native native_drawBitmap(I[IIIFFIIZI)V
.end method

.method private static native native_drawCircle(IFFFI)V
.end method

.method private static native native_drawColor(II)V
.end method

.method private static native native_drawColor(III)V
.end method

.method private static native native_drawLine(IFFFFI)V
.end method

.method private static native native_drawOval(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_drawPaint(II)V
.end method

.method private static native native_drawPath(III)V
.end method

.method private static native native_drawPicture(II)V
.end method

.method private static native native_drawPosText(ILjava/lang/String;[FI)V
.end method

.method private static native native_drawPosText(I[CII[FI)V
.end method

.method private static native native_drawRGB(IIII)V
.end method

.method private static native native_drawRect(IFFFFI)V
.end method

.method private static native native_drawRect(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_drawRoundRect(ILandroid/graphics/RectF;FFI)V
.end method

.method private static native native_drawText(ILjava/lang/String;IIFFII)V
.end method

.method private static native native_drawText(I[CIIFFII)V
.end method

.method private static native native_drawTextOnPath(ILjava/lang/String;IFFII)V
.end method

.method private static native native_drawTextOnPath(I[CIIIFFII)V
.end method

.method private static native native_drawTextRun(ILjava/lang/String;IIIIFFII)V
.end method

.method private static native native_drawTextRun(I[CIIIIFFII)V
.end method

.method private static native native_getCTM(II)V
.end method

.method private static native native_getClipBounds(ILandroid/graphics/Rect;)Z
.end method

.method private static native native_quickReject(IFFFFI)Z
.end method

.method private static native native_quickReject(III)Z
.end method

.method private static native native_quickReject(ILandroid/graphics/RectF;I)Z
.end method

.method private static native native_saveLayer(IFFFFII)I
.end method

.method private static native native_saveLayer(ILandroid/graphics/RectF;II)I
.end method

.method private static native native_saveLayerAlpha(IFFFFII)I
.end method

.method private static native native_saveLayerAlpha(ILandroid/graphics/RectF;II)I
.end method

.method private static native native_setBitmap(II)V
.end method

.method private static native native_setMatrix(II)V
.end method

.method private static throwIfRecycled(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 1025
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_0
    return-void
.end method


# virtual methods
.method public clipPath(Landroid/graphics/Path;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 638
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 3
    .parameter "path"
    .parameter "op"

    .prologue
    .line 628
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_clipPath(III)Z

    move-result v0

    return v0
.end method

.method public native clipRect(FFFF)Z
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "op"

    .prologue
    .line 587
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public native clipRect(IIII)Z
.end method

.method public native clipRect(Landroid/graphics/Rect;)Z
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 6
    .parameter "rect"
    .parameter "op"

    .prologue
    .line 549
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public native clipRect(Landroid/graphics/RectF;)Z
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 6
    .parameter "rect"
    .parameter "op"

    .prologue
    .line 536
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .locals 1
    .parameter "region"

    .prologue
    .line 667
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 3
    .parameter "region"
    .parameter "op"

    .prologue
    .line 653
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Region;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_clipRegion(III)Z

    move-result v0

    return v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    .line 486
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_concat(II)V

    .line 487
    return-void
.end method

.method public drawARGB(IIII)V
    .locals 1
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 801
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->native_drawARGB(IIIII)V

    .line 802
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 6
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"
    .parameter "useCenter"
    .parameter "paint"

    .prologue
    .line 989
    if-nez p1, :cond_0

    .line 990
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 992
    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawArc(ILandroid/graphics/RectF;FFZI)V

    .line 994
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 9
    .parameter "bitmap"
    .parameter "left"
    .parameter "top"
    .parameter "paint"

    .prologue
    .line 1065
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 1066
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p4, :cond_0

    iget v5, p4, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    iget v6, p0, Landroid/graphics/Canvas;->mDensity:I

    iget v7, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v8, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Canvas;->native_drawBitmap(IIFFIIII)V

    .line 1068
    return-void

    .line 1066
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 4
    .parameter "bitmap"
    .parameter "matrix"
    .parameter "paint"

    .prologue
    .line 1195
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()I

    move-result v3

    if-eqz p3, :cond_0

    iget v0, p3, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Canvas;->nativeDrawBitmapMatrix(IIII)V

    .line 1197
    return-void

    .line 1195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 1124
    if-nez p3, :cond_0

    .line 1125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1127
    :cond_0
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 1128
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    if-eqz p4, :cond_1

    iget v4, p4, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    iget v5, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v6, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 1130
    return-void

    .line 1128
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 1093
    if-nez p3, :cond_0

    .line 1094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1096
    :cond_0
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 1097
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p4, :cond_1

    iget v5, p4, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    iget v6, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v7, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/RectF;III)V

    .line 1099
    return-void

    .line 1097
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 13
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 1154
    if-gez p6, :cond_0

    .line 1155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1157
    :cond_0
    if-gez p7, :cond_1

    .line 1158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "height must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1160
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move/from16 v0, p6

    if-ge v1, v0, :cond_2

    .line 1161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1163
    :cond_2
    add-int/lit8 v1, p7, -0x1

    mul-int v1, v1, p3

    add-int v11, p2, v1

    .line 1164
    .local v11, lastScanline:I
    array-length v12, p1

    .line 1165
    .local v12, length:I
    if-ltz p2, :cond_3

    add-int v1, p2, p6

    if-gt v1, v12, :cond_3

    if-ltz v11, :cond_3

    add-int v1, v11, p6

    if-le v1, v12, :cond_4

    .line 1167
    :cond_3
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1170
    :cond_4
    if-eqz p6, :cond_5

    if-nez p7, :cond_6

    .line 1176
    :cond_5
    :goto_0
    return-void

    .line 1174
    :cond_6
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p9, :cond_7

    move-object/from16 v0, p9

    iget v10, v0, Landroid/graphics/Paint;->mNativePaint:I

    :goto_1
    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v10}, Landroid/graphics/Canvas;->native_drawBitmap(I[IIIFFIIZI)V

    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 1183
    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 1185
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 11
    .parameter "bitmap"
    .parameter "meshWidth"
    .parameter "meshHeight"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "paint"

    .prologue
    .line 1236
    or-int v1, p2, p3

    or-int v1, v1, p5

    or-int v1, v1, p7

    if-gez v1, :cond_0

    .line 1237
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1239
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 1252
    :cond_1
    :goto_0
    return-void

    .line 1242
    :cond_2
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int v10, v1, v2

    .line 1244
    .local v10, count:I
    array-length v1, p4

    mul-int/lit8 v2, v10, 0x2

    move/from16 v0, p5

    invoke-static {v1, v0, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1245
    if-eqz p6, :cond_3

    .line 1247
    move-object/from16 v0, p6

    array-length v1, v0

    move/from16 v0, p7

    invoke-static {v1, v0, v10}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1249
    :cond_3
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p8, :cond_4

    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Paint;->mNativePaint:I

    :goto_1
    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Landroid/graphics/Canvas;->nativeDrawBitmapMesh(IIII[FI[III)V

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 2
    .parameter "cx"
    .parameter "cy"
    .parameter "radius"
    .parameter "paint"

    .prologue
    .line 961
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->native_drawCircle(IFFFI)V

    .line 962
    return-void
.end method

.method public drawColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 811
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_drawColor(II)V

    .line 812
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 822
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawColor(III)V

    .line 823
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "stopX"
    .parameter "stopY"
    .parameter "paint"

    .prologue
    .line 876
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawLine(IFFFFI)V

    .line 877
    return-void
.end method

.method public native drawLines([FIILandroid/graphics/Paint;)V
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 897
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 898
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "oval"
    .parameter "paint"

    .prologue
    .line 944
    if-nez p1, :cond_0

    .line 945
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 947
    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawOval(ILandroid/graphics/RectF;I)V

    .line 948
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 2
    .parameter "paint"

    .prologue
    .line 833
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_drawPaint(II)V

    .line 834
    return-void
.end method

.method public drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "bitmap"
    .parameter "chunks"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 1043
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 3
    .parameter "path"
    .parameter "paint"

    .prologue
    .line 1021
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_drawPath(III)V

    .line 1022
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 2
    .parameter "picture"

    .prologue
    .line 1612
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 1613
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Picture;->ni()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_drawPicture(II)V

    .line 1614
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "picture"
    .parameter "dst"

    .prologue
    .line 1633
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1634
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1635
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 1636
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1639
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1640
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1641
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3
    .parameter "picture"
    .parameter "dst"

    .prologue
    .line 1620
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1621
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1622
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 1623
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1625
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1626
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1627
    return-void
.end method

.method public native drawPoint(FFLandroid/graphics/Paint;)V
.end method

.method public native drawPoints([FIILandroid/graphics/Paint;)V
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 858
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 859
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 2
    .parameter "text"
    .parameter "pos"
    .parameter "paint"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1546
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    array-length v1, p2

    if-le v0, v1, :cond_0

    .line 1547
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1550
    :cond_0
    invoke-virtual {p3, p3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1552
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p3, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Canvas;->native_drawPosText(ILjava/lang/String;[FI)V

    .line 1553
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 6
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "pos"
    .parameter "paint"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1523
    if-ltz p2, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 1524
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1527
    :cond_1
    invoke-virtual {p5, p5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1529
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawPosText(I[CII[FI)V

    .line 1531
    return-void
.end method

.method public drawRGB(III)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 788
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_drawRGB(IIII)V

    .line 789
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 934
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawRect(IFFFFI)V

    .line 935
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "r"
    .parameter "paint"

    .prologue
    .line 919
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 920
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "rect"
    .parameter "paint"

    .prologue
    .line 908
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawRect(ILandroid/graphics/RectF;I)V

    .line 909
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 2
    .parameter "rect"
    .parameter "rx"
    .parameter "ry"
    .parameter "paint"

    .prologue
    .line 1006
    if-nez p1, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1009
    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->native_drawRoundRect(ILandroid/graphics/RectF;FFI)V

    .line 1011
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    const/4 v2, 0x0

    .line 1392
    invoke-virtual {p6, p6}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1394
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_1

    .line 1396
    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFII)V

    .line 1408
    :goto_0
    return-void

    .line 1398
    :cond_1
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1399
    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1402
    :cond_2
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 1403
    .local v1, buf:[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1404
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    sub-int v3, p3, p2

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawText(I[CIIFFII)V

    .line 1406
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 8
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1349
    invoke-virtual {p4, p4}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1351
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v6, p4, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p4, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFII)V

    .line 1353
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1367
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 1368
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1371
    :cond_0
    invoke-virtual {p6, p6}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1373
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFII)V

    .line 1375
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 8
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1327
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 1329
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1332
    :cond_0
    invoke-virtual {p6, p6}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1334
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawText(I[CIIFFII)V

    .line 1336
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 7
    .parameter "text"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 1596
    invoke-virtual {p5, p5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1598
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1599
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()I

    move-result v2

    iget v5, p5, Landroid/graphics/Paint;->mBidiFlags:I

    iget v6, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawTextOnPath(ILjava/lang/String;IFFII)V

    .line 1602
    :cond_0
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 11
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 1570
    if-ltz p2, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 1571
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1574
    :cond_1
    move-object/from16 v0, p7

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1576
    iget v2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p4}, Landroid/graphics/Path;->ni()I

    move-result v6

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p7

    iget v10, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v10}, Landroid/graphics/Canvas;->native_drawTextOnPath(I[CIIIFFII)V

    .line 1579
    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V
    .locals 12
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 1474
    if-nez p1, :cond_0

    .line 1475
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "text is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1477
    :cond_0
    if-nez p9, :cond_1

    .line 1478
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "paint is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1480
    :cond_1
    or-int v2, p2, p3

    sub-int v4, p3, p2

    or-int/2addr v2, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p3

    or-int/2addr v2, v4

    if-gez v2, :cond_2

    .line 1481
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1484
    :cond_2
    move-object/from16 v0, p9

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1487
    if-nez p8, :cond_4

    const/4 v10, 0x0

    .line 1489
    .local v10, flags:I
    :goto_0
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_3

    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_3

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_5

    .line 1491
    :cond_3
    iget v2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    iget v11, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v11}, Landroid/graphics/Canvas;->native_drawTextRun(ILjava/lang/String;IIIIFFII)V

    .line 1505
    :goto_1
    return-void

    .line 1487
    .end local v10           #flags:I
    :cond_4
    const/4 v10, 0x1

    goto :goto_0

    .line 1493
    .restart local v10       #flags:I
    :cond_5
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_6

    move-object v2, p1

    .line 1494
    check-cast v2, Landroid/text/GraphicsOperations;

    move-object v3, p0

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V

    goto :goto_1

    .line 1497
    :cond_6
    sub-int v7, p5, p4

    .line 1498
    .local v7, contextLen:I
    sub-int v5, p3, p2

    .line 1499
    .local v5, len:I
    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 1500
    .local v3, buf:[C
    const/4 v2, 0x0

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p1, v0, v1, v3, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1501
    iget v2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    sub-int v4, p2, p4

    const/4 v6, 0x0

    move-object/from16 v0, p9

    iget v11, v0, Landroid/graphics/Paint;->mNativePaint:I

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v11}, Landroid/graphics/Canvas;->native_drawTextRun(I[CIIIIFFII)V

    .line 1503
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1
.end method

.method public drawTextRun([CIIIIFFILandroid/graphics/Paint;)V
    .locals 12
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 1434
    if-nez p1, :cond_0

    .line 1435
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "text is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1437
    :cond_0
    if-nez p9, :cond_1

    .line 1438
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "paint is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1440
    :cond_1
    or-int v2, p2, p3

    array-length v3, p1

    sub-int/2addr v3, p2

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_2

    .line 1441
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1443
    :cond_2
    if-eqz p8, :cond_3

    const/4 v2, 0x1

    move/from16 v0, p8

    if-eq v0, v2, :cond_3

    .line 1444
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1448
    :cond_3
    move-object/from16 v0, p9

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 1450
    iget v2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move-object/from16 v0, p9

    iget v11, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v11}, Landroid/graphics/Canvas;->native_drawTextRun(I[CIIIIFFII)V

    .line 1452
    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 15
    .parameter "mode"
    .parameter "vertexCount"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "texs"
    .parameter "texOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "indices"
    .parameter "indexOffset"
    .parameter "indexCount"
    .parameter "paint"

    .prologue
    .line 1302
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1303
    if-eqz p5, :cond_0

    .line 1304
    move-object/from16 v0, p5

    array-length v2, v0

    move/from16 v0, p6

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1306
    :cond_0
    if-eqz p7, :cond_1

    .line 1307
    move-object/from16 v0, p7

    array-length v2, v0

    div-int/lit8 v3, p2, 0x2

    move/from16 v0, p8

    invoke-static {v2, v0, v3}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1309
    :cond_1
    if-eqz p9, :cond_2

    .line 1310
    move-object/from16 v0, p9

    array-length v2, v0

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-static {v2, v0, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    .line 1312
    :cond_2
    iget v2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    move-object/from16 v0, p12

    iget v14, v0, Landroid/graphics/Paint;->mNativePaint:I

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v2 .. v14}, Landroid/graphics/Canvas;->nativeDrawVertices(III[FI[FI[II[SIII)V

    .line 1315
    return-void
.end method

.method public final getClipBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 774
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 775
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 776
    return-object v0
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "bounds"

    .prologue
    .line 765
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_getClipBounds(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method protected getGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public native getHeight()I
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 522
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 524
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 525
    return-object v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "ctm"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_getCTM(II)V

    .line 514
    return-void
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    .prologue
    .line 290
    const/16 v0, 0x7ffe

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    .prologue
    .line 279
    const/16 v0, 0x7ffe

    return v0
.end method

.method public native getSaveCount()I
.end method

.method public native getWidth()I
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public native isOpaque()Z
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "type"

    .prologue
    .line 753
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_quickReject(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 3
    .parameter "path"
    .parameter "type"

    .prologue
    .line 729
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_quickReject(III)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 2
    .parameter "rect"
    .parameter "type"

    .prologue
    .line 709
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_quickReject(ILandroid/graphics/RectF;I)Z

    move-result v0

    return v0
.end method

.method public native restore()V
.end method

.method public native restoreToCount(I)V
.end method

.method public native rotate(F)V
.end method

.method public final rotate(FFF)V
    .locals 2
    .parameter "degrees"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 467
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 468
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 469
    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 470
    return-void
.end method

.method public native save()I
.end method

.method public native save(I)I
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    .line 359
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p5, :cond_0

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_saveLayer(IFFFFII)I

    move-result v0

    return v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 2
    .parameter "bounds"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    .line 349
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    invoke-static {v1, p1, v0, p3}, Landroid/graphics/Canvas;->native_saveLayer(ILandroid/graphics/RectF;II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    .line 390
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_saveLayerAlpha(IFFFFII)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 2
    .parameter "bounds"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    .line 381
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 382
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_saveLayerAlpha(ILandroid/graphics/RectF;II)I

    move-result v0

    return v0
.end method

.method public native scale(FF)V
.end method

.method public final scale(FFFF)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 447
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 448
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 449
    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 450
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t set a bitmap device on a GL canvas"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 185
    .local v0, pointer:I
    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 189
    :cond_1
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    .line 190
    iget v1, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    .line 194
    :cond_2
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v1, v0}, Landroid/graphics/Canvas;->native_setBitmap(II)V

    .line 195
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 196
    return-void
.end method

.method public setDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    .line 260
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 263
    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 264
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, nativeFilter:I
    if-eqz p1, :cond_0

    .line 677
    iget v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:I

    .line 679
    :cond_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 680
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v1, v0}, Landroid/graphics/Canvas;->nativeSetDrawFilter(II)V

    .line 681
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    .line 503
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/graphics/Canvas;->native_setMatrix(II)V

    .line 505
    return-void

    .line 503
    :cond_0
    iget v0, p1, Landroid/graphics/Matrix;->native_instance:I

    goto :goto_0
.end method

.method public setScreenDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 268
    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 269
    return-void
.end method

.method public setViewport(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 208
    return-void
.end method

.method public native skew(FF)V
.end method

.method public native translate(FF)V
.end method
