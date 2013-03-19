.class public Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLImageProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0xff0100


# instance fields
.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBackImage:Lcom/sec/android/glview/TwGLImage;

.field private mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

.field private mBestPicNum:I

.field mBitmap:Landroid/graphics/Bitmap;

.field private mGL:Lcom/sec/android/glview/TwGLContext;

.field private mHeight:F

.field private mHighlight:Z

.field private mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mIconHeight:F

.field private mIconWidth:F

.field private mIndex:I

.field private mMax:I

.field protected mOnImageSelectedListener:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;

.field private mOrientation:[I

.field private mProgress:I

.field private mProgressImage:[Lcom/sec/android/glview/TwGLImage;

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIFFI)V
    .locals 9
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "redId_bg"
    .parameter "redId_icon"
    .parameter "icon_width"
    .parameter "icon_height"
    .parameter "Max"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconWidth:F

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconHeight:F

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicNum:I

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlight:Z

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mUriList:Ljava/util/ArrayList;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOnImageSelectedListener:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;

    .line 77
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    .line 78
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    .line 79
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    .line 80
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    .line 81
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconWidth:F

    .line 82
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconHeight:F

    .line 83
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    const/4 v7, 0x0

    move-object v2, p1

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBackImage:Lcom/sec/android/glview/TwGLImage;

    .line 84
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    new-array v1, v1, [Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    .line 85
    new-instance v1, Lcom/sec/android/glview/TwGLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x40a0

    sub-float v5, v2, v5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    const/high16 v6, 0x40a0

    sub-float v6, v2, v6

    const v7, -0xff0100

    const/4 v8, 0x5

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 86
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconWidth:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconHeight:F

    const/4 v7, 0x0

    move-object v2, p1

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

    .line 87
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOrientation:[I

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBackImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 97
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/AlphaAnimation;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 99
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    return v0
.end method

.method public getOrientation(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOrientation:[I

    aget v0, v0, p1

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    return v0
.end method

.method public getUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "index"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public declared-synchronized resetProgressBar()V
    .locals 3

    .prologue
    .line 132
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 134
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicNum:I

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlight:Z

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setCaptureProgressIncreased(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "mData"

    .prologue
    .line 102
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 103
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v7, v8

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 108
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaptureProgressIncreased(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V
    .locals 7
    .parameter "mData"
    .parameter "uri"
    .parameter "orientation"

    .prologue
    .line 113
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    float-to-int v2, v2

    invoke-static {p1, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 116
    .local v6, croppedBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    .line 117
    .local v0, image:Lcom/sec/android/glview/TwGLImage;
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setTag(I)V

    .line 118
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aput-object v0, v1, v2

    .line 125
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOrientation:[I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aput p3, v1, v2

    .line 127
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .end local v0           #image:Lcom/sec/android/glview/TwGLImage;
    .end local v6           #croppedBitmap:Landroid/graphics/Bitmap;
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    .restart local v0       #image:Lcom/sec/android/glview/TwGLImage;
    .restart local v6       #croppedBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 113
    .end local v0           #image:Lcom/sec/android/glview/TwGLImage;
    .end local v6           #croppedBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setHighlight(I)V
    .locals 4
    .parameter "BestpicNum"

    .prologue
    .line 150
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicNum:I

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->moveLayoutAbsolute(FF)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x420c

    add-float/2addr v1, v2

    const/high16 v2, 0x4040

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 154
    return-void
.end method

.method public setOnImageSelectedListener(Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOnImageSelectedListener:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;

    .line 72
    return-void
.end method

.method public showHighlight()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlight:Z

    .line 158
    return-void
.end method
