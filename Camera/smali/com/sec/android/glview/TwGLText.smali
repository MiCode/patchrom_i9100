.class public Lcom/sec/android/glview/TwGLText;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLText.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_COLOR:I = 0x0

.field private static final DEFAULT_TEXTSIZE:F = 21.0f


# instance fields
.field private mColor:I

.field private mHAlign:I

.field private mHeight:F

.field private mShadow:Z

.field private mSize:F

.field protected mString:Lcom/sec/android/glview/TwGLStringTexture;

.field private mStringPosX:F

.field private mStringPosY:F

.field private mText:Ljava/lang/String;

.field private mVAlign:I

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 37
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 13
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "text"

    .prologue
    .line 208
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 46
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 49
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 61
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 64
    const/high16 v1, 0x41a8

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 210
    if-eqz p6, :cond_0

    .line 211
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 212
    const/high16 v1, 0x41a8

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 213
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 214
    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 215
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 216
    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 220
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V
    .locals 13
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "text"
    .parameter "textSize"

    .prologue
    .line 223
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 46
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 49
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 61
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 64
    const/high16 v1, 0x41a8

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 225
    if-eqz p6, :cond_0

    .line 226
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 227
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 228
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 229
    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 230
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 231
    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 235
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V
    .locals 13
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "text"
    .parameter "textSize"
    .parameter "color"

    .prologue
    .line 250
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 46
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 49
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 61
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 64
    const/high16 v1, 0x41a8

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 252
    if-eqz p6, :cond_0

    .line 253
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 254
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 255
    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 256
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 257
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 258
    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 262
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V
    .locals 13
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "shadow"

    .prologue
    .line 265
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 46
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 49
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 61
    sget v1, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 64
    const/high16 v1, 0x41a8

    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 267
    if-eqz p6, :cond_0

    .line 268
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 269
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 270
    move/from16 v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 271
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 272
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 273
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 274
    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    iget v10, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v11, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v12, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 278
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "text"

    .prologue
    const/high16 v3, 0x41a8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 43
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 52
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 55
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 61
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 64
    iput v3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 136
    if-eqz p4, :cond_0

    .line 137
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 138
    iput v3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 139
    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 145
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;F)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "text"
    .parameter "textSize"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 43
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 52
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 55
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 61
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 64
    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 150
    if-eqz p4, :cond_0

    .line 151
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 152
    iput p5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 153
    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 154
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 158
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FI)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "text"
    .parameter "textSize"
    .parameter "color"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 43
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 52
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 55
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 61
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 64
    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 173
    if-eqz p4, :cond_0

    .line 174
    iput p6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 175
    iput p5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 176
    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 177
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 181
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V
    .locals 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "shadow"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 43
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 52
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 55
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 61
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 64
    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 186
    if-eqz p4, :cond_0

    .line 187
    iput p6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 188
    iput p5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 189
    iput-object p4, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 190
    iput-boolean p7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 191
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 195
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 8
    .parameter "glContext"
    .parameter "text"

    .prologue
    const/high16 v3, 0x41a8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 43
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 52
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 55
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 61
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 64
    iput v3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 80
    if-eqz p2, :cond_0

    .line 81
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 82
    iput v3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 83
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 88
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;FI)V
    .locals 8
    .parameter "glContext"
    .parameter "text"
    .parameter "textSize"
    .parameter "color"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 43
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 52
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 55
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 61
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 64
    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 101
    if-eqz p2, :cond_0

    .line 102
    iput p4, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 103
    iput p3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 104
    iput-object p2, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 109
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;FIZ)V
    .locals 8
    .parameter "glContext"
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "shadow"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 43
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    .line 52
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 55
    iput v2, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 61
    sget v0, Lcom/sec/android/glview/TwGLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 64
    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 114
    if-eqz p2, :cond_0

    .line 115
    iput p4, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 116
    iput p3, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 117
    iput-object p2, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 118
    iput-boolean p5, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 123
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->clear()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    .line 307
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 308
    return-void
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initSize()V
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 357
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_1

    .line 358
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 367
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 368
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 342
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->onAlphaUpdated()V

    .line 345
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_0
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 334
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->onLayoutUpdated()V

    .line 337
    :cond_0
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->reset()V

    .line 534
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAlign(II)V
    .locals 10
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x4000

    const/4 v4, 0x0

    .line 463
    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 464
    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 466
    .local v3, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float v0, v4, v5

    .line 467
    .local v0, height:F
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v2

    .line 468
    .local v2, stringWidth:F
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v1

    .line 470
    .local v1, stringHeight:F
    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    .line 471
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    .line 472
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringWidth()I

    move-result v4

    int-to-float v2, v4

    .line 477
    :cond_0
    :goto_0
    cmpg-float v4, v0, v1

    if-gez v4, :cond_1

    .line 478
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    .line 479
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLStringTexture;->getStringHeight()I

    move-result v4

    int-to-float v1, v4

    .line 485
    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 501
    :goto_2
    packed-switch p2, :pswitch_data_1

    .line 517
    :goto_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/glview/TwGLStringTexture;->setAlign(II)V

    .line 518
    iget-object v4, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget v5, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    iget v6, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLStringTexture;->moveLayout(FF)V

    .line 519
    return-void

    .line 474
    :cond_2
    move v2, v3

    goto :goto_0

    .line 481
    :cond_3
    move v1, v0

    goto :goto_1

    .line 487
    :pswitch_0
    iput v7, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    goto :goto_2

    .line 490
    :pswitch_1
    sub-float v4, v3, v2

    div-float/2addr v4, v6

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 491
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    goto :goto_2

    .line 494
    :pswitch_2
    sub-float v4, v3, v2

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosX:F

    .line 495
    iput v9, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    goto :goto_2

    .line 503
    :pswitch_3
    iput v7, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    goto :goto_3

    .line 506
    :pswitch_4
    sub-float v4, v0, v1

    div-float/2addr v4, v6

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 507
    iput v8, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    goto :goto_3

    .line 510
    :pswitch_5
    sub-float v4, v0, v1

    iput v4, p0, Lcom/sec/android/glview/TwGLText;->mStringPosY:F

    .line 511
    iput v9, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    goto :goto_3

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 501
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setBold(Z)V
    .locals 1
    .parameter "bold"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setBold(Z)V

    .line 448
    :cond_0
    return-void
.end method

.method public setBoldColor(ZI)V
    .locals 1
    .parameter "bold"
    .parameter "color"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLStringTexture;->setBoldColor(ZI)V

    .line 454
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 439
    iput p1, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 440
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setColor(I)V

    .line 442
    :cond_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 425
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 426
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setFontSize(I)V

    .line 428
    :cond_0
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "paddings"

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->setSize(FF)V

    .line 389
    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mHAlign:I

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mVAlign:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 390
    return-void
.end method

.method public setShadowVisibility(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 432
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLText;->mShadow:Z

    .line 433
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setShadowVisibility(Z)V

    .line 435
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 375
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 377
    iput p1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 378
    iput p2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 379
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->setSize(FF)V

    .line 381
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 399
    iput-object p1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLStringTexture;->setText(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    .line 402
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLStringTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    .line 403
    iget v0, p0, Lcom/sec/android/glview/TwGLText;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLText;->mHeight:F

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 405
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;FI)V
    .locals 4
    .parameter "text"
    .parameter "textSize"
    .parameter "color"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    if-eqz v0, :cond_0

    .line 416
    iput p2, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    .line 417
    iput p3, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    .line 418
    iput-object p1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/sec/android/glview/TwGLText;->mString:Lcom/sec/android/glview/TwGLStringTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLText;->mText:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/glview/TwGLText;->mSize:F

    iget v3, p0, Lcom/sec/android/glview/TwGLText;->mColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLStringTexture;->setText(Ljava/lang/String;FI)V

    .line 421
    :cond_0
    return-void
.end method
